<?php

namespace App;

use App\Events\ThreadHasNewReply;
use App\Events\ThreadReceivedNewReply;
use Illuminate\Database\Eloquent\Model;
use App\Notifications\ThreadWasUpdated;

class Thread extends Model
{
    use RecordsActivity;

    protected $guarded = [];

    protected $with = ['channel'];

    protected $appends = ['isSubscribedTo'];

    protected static function boot()
    {
        parent::boot();

        // Add replyCount as a column in threads table instead of
        // load it every time
//        static::addGlobalScope('replyCount', function($builder){
//            $builder->withCount('replies');
//        });

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
        $reply = $this->replies()->create($reply);

        event(new ThreadReceivedNewReply($reply));

        // Prepare notification for all subscribers
        // $this->subscriptions() return Eloquent query object
        // $this->subscriptions return ThreadSubscription Eloquent model object
//        $this->subscriptions->
//             filter(function($sub) use($reply){
//                return $sub->user_id != $reply->user_id;
//             })
//            ->each(function($sub) use($reply){
//                $sub->notify($reply);
//            });
        return $reply;
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

        return $this;
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


    public function getIsSubscribedToAttribute()
    {
        return $this->subscriptions()
             ->where('user_id', auth()->id())
            ->exists();
    }
    /*  public function getReplyCountAttribute()
      {
          return $this->replies()->count();
      }*/

    public function hasUpdatedFor($user = null)
    {
        $user = $user ?: auth()->user();

        // Look in the cache for the proper key
        // Compare the carbon instance with $thread->updated_at

        $key = $user->visitedThreadCacheKey($this);

        return $this->updated_at > cache($key);
    }
}
