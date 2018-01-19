<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Thread extends Model
{
    use RecordsActivity;

    protected $guarded = [];

    protected $with = ['channel'];

    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope('replyCount', function($builder){
            $builder->withCount('replies');
        });

        static::addGlobalScope('creator', function($builder){
           $builder->with('creator');
        });

        static::deleting( function($thread){
//            $thread->replies()->delete();
            // if need trigger RecordActivity trait bootRecordsActivity() method delete reply related activity,
            // then need implement delete() method on each Reply model
            $thread->replies->each(function ($reply){
                $reply->delete();
            });
        });
    }

    public function path()
    {
        return "/threads/{$this->channel->slug}/{$this->id}";
    }

    public function replies()
    {
        return $this->hasMany(Reply::class);
//                    ->withCount('favorites')
//                    ->with('owner');
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function addReply($reply)
    {
        return $this->replies()->create($reply);
    }

    public function channel()
    {
        return $this->belongsTo(Channel::class);
    }

    public function scopeFilter($query, $filters)
    {
        return $filters->apply($query);
    }


    public function subscribe($userId = null)
    {
        $this->subscriptions()->create(
            ['user_id' => $userId ?: auth()->id()]
        );
    }

    public function unsubscribe($userId = null)
    {
        $this->subscriptions()->where(
            'user_id',$userId ?: auth()->id())
            ->delete();
    }

    public function subscriptions()
    {
        return $this->hasMany(ThreadSubscription::class);
    }

    /*  public function getReplyCountAttribute()
      {
          return $this->replies()->count();
      }*/
}
