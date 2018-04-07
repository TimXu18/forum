<?php

namespace App\Listeners;

use App\Events\ThreadReceivedNewReply;
use App\Notifications\YouWereMentioned;
use App\User;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class NotifyMentionedUsers
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ThreadReceivedNewReply  $event
     * @return void
     */
    public function handle(ThreadReceivedNewReply $event)
    {
        // Inspect the body of reply for username mentioned
        $mentionedUsers = $event->reply->mentionedUsers();

        foreach($mentionedUsers as $name){
            $user = User::whereName($name)->first();

            // Then for each mentioned user, notify them
            if($user){
                $user->notify(new YouWereMentioned($event->reply));
            }
        }

    }
}
