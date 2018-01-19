<?php
/**
 * Created by PhpStorm.
 * User: tim.xu
 * Date: 9/10/17
 * Time: 11:04 AM
 */

namespace App;

use Illuminate\Database\Eloquent\Model;


trait Favoritable
{

//If an Eloquent model uses a trait that has a method matching the bootNameOfTrait naming convention,
//that trait method will be called when the Eloquent model is booted,
//giving you an opportunity to register a global scope, or do anything else you want.
    protected static function bootFavoritable()
    {
        static::deleting(function($model){
            $model->favorites()->get()->each(function($favorite){
                $favorite->delete();
            });
        });
    }


    /**
     * A reply can be favorited
     *
     * @return mixed
     */
    public function favorites()
    {
        return $this->morphMany(Favorite::class, 'favorited');
    }

    /**
     * Favorite the current reply
     */
    public function favorite()
    {
        $attributes = ['user_id' => auth()->id()];
        if (!$this->favorites()->where($attributes)->exists()) {
            $this->favorites()->create($attributes);
        }
    }

    public function isFavorited()
    {
        return !!$this->favorites->where('user_id', auth()->id())->count();
    }

    public function getIsFavoritedAttribute() // Can use isFavorited property in Reply instance as $reply->isFavorited
    {
        return $this->isFavorited();
    }

    public function unfavorite()
    {
        $attributes = ['user_id' => auth()->id()];

        // This will query builder SQL will not trigger delete activity record code in bootRecordsActivity()
        //    static::deleting(function($model){
//        $model->activity()->delete();
//    });
        // Need to fetch each $favorite instance then delete
//        $this->favorites()->where($attributes)->delete();

        $this->favorites()->where($attributes)->get()->each(function($favorite){
            $favorite->delete();
        });
    }

    public function getFavoritesCountAttribute()
    {
        return $this->favorites->count();
    }
}