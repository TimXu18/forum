<?php

namespace Tests\Unit;

use App\Notifications\ThreadWasUpdated;
use Carbon\Carbon;
use Illuminate\Support\Facades\Notification;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class ThreadTest extends TestCase
{
    use DatabaseMigrations;

    protected $thread;

    public function setUp()
    {
        parent::setUp();

        $this->thread = factory('App\Thread')->create();
    }

    /** @test */
    function a_thread_has_replies()
    {
        $this->assertInstanceOf('Illuminate\Database\Eloquent\Collection', $this->thread->replies);
    }

    /** @test */
    function a_thread_has_a_creator()
    {
        $this->assertInstanceOf('App\User', $this->thread->creator);
    }

    /** @test */
    public function a_thread_can_add_a_reply()
    {
        $this->thread->addReply([
            'body' => 'Foobar',
            'user_id' => 1
        ]);

        $this->assertCount(1, $this->thread->replies);
    }

    /** @test */
    public function a_thread_belong_to_a_channel()
    {
        $thread = create('App\Thread');

        $this->assertInstanceOf('App\Channel', $thread->channel);
    }

    /** @test */
    public function a_thread_can_make_a_string_path()
    {
        $thread = create('App\Thread');

        $this->assertEquals("/threads/{$thread->channel->slug}/{$thread->id}", $thread->path());
    }


    /** @test */
    public function a_thread_can_be_subscribed_to()
    {
        // Given we have a thread
        $thread = create('App\Thread');

        // When the user subscribe to the thread
        $thread->subscribe($user_id = 1);
        // Then we should be able to fetch all threads this user has subscribed to.
        $this->assertEquals(
            1,
                     $thread->subscriptions()->where('user_id', $user_id)->count()
        );
    }

    /** @test */
    public function a_thread_can_be_unsubscribed_from()
    {
        // Given we have a thread
        $thread = create('App\Thread');

        // When the user subscribe to the thread
        $thread->subscribe($user_id = 1);

        $thread->unsubscribe($user_id);

        // Then we should be able to fetch all threads this user has subscribed to.
        $this->assertEquals(
            0,
            $thread->subscriptions()->where('user_id', $user_id)->count()
        );
    }


    /** @test */
    public function if_an_authenticated_user_subscribed_a_thread()
    {
        $thread = create('App\Thread');

        $this->signIn();

        $this->assertFalse($thread->isSubscribedTo);

        $thread->subscribe();

        $this->assertTrue($thread->isSubscribedTo);
    }


    /** @test */
    public function a_thread_notified_all_registered_subscriber_when_a_reply_is_added()
    {
        Notification::fake();

        $this->signIn();

        $this->thread->subscribe();

        $this->thread->addReply([
            'body' => 'Foobar',
            'user_id' => 999
        ]);

        Notification::assertSentTo(auth()->user(), ThreadWasUpdated::class);
    }


    /** @test */
    public function a_thread_can_check_if_authenticated_user_read_all_replies()
    {
        $this->signIn();

        $thread = create('App\Thread');

        // tap method used to remove duplication call auth()->user() method in following statements
        tap(auth()->user(), function($user) use ($thread){
            $this->assertTrue($thread->hasUpdatedFor($user));

            $user->read($thread);

            $this->assertFalse($thread->hasUpdatedFor($user));
        });

    }
}
