<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;

class MentionUsersTest extends TestCase
{
    use DatabaseMigrations;

    /**
     * @test
     */
    function mentioned_user_in_a_reply_are_notified()
    {
        // Given I have a user, Bob, who is signed in.
        $bob = create('App\User', ['name' => 'Bob']);
        $this->signIn($bob);

        // And another user, Kate
        $kate = create('App\User', ['name' => 'Kate']);

        // If we have a thread
        $thread = create('App\Thread');

        // And Bob replied and mentions @Kate
        $reply = make('App\Reply', [
            'body' => 'How are you @Kate, also @Frank.'
        ]);
        $this->json('post', $thread->path().'/replies', $reply->toArray());

        // Then, Kate should be notified
        $this->assertCount(1, $kate->notifications);
    }
}
