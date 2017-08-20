<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class ParticipateInForumTest extends TestCase
{
    use DatabaseMigrations;

    /**
     * @test
     */
    function unauthenticated_users_may_not_add_replies()
    {
     //   $this->expectException('Illuminate\Auth\AuthenticationException');
        $thread = factory('App\Thread')->create();

        $reply = factory('App\Reply')->create();

        $this->withExceptionHandling()
            ->post($thread->path() . '/replies', $reply->toArray())
            ->assertRedirect('/login');
    }

    /** @test */
    function an_authenticated_user_may_participate_in_forum_threads()
    {
        // Given we have an authenticated user
        $user = factory('App\User')->create();
        $this->be($user);

        // And an existing thread
        $thread = factory('App\Thread')->create();

        // When the user adds a reply to the thread
        // Use make() function here, stop write to database twice, make() function will stop
        // save reply to a table
        $reply = factory('App\Reply')->make();
      //  dd($thread->path() . '/replies');
        $this->post($thread->path().'/replies', $reply->toArray());

        // Then their reply should be visible on the page
        $this->get($thread->path())
            ->assertSee($reply->body);
    }

    /** @test */
    function a_reply_requires_a_body()
    {
        $this->withExceptionHandling()->signIn();

        $thread = create('App\Thread');

        $reply = make('App\Reply', ['body' => null]);

        $this->post($thread->path().'/replies', $reply->toArray())
             ->assertSessionHasErrors('body');
    }
}