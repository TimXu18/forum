<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class ReadThreadsTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp()
    {
        parent::setUp();
        $this->thread = factory('App\Thread')->create();
    }

    /** @test **/
    public function a_user_can_browse_thread()
    {
        $response = $this->get('/threads')
            ->assertSee($this->thread->title);
    }

    /** @test */
    public function a_user_can_read_single_thread()
    {
        $response = $this->get($this->thread->path())
            ->assertSee($this->thread->title);
    }

    /** @test */
    function a_user_can_read_replies_that_are_associated_with_a_thread()
    {
        $reply = factory('App\Reply')
            ->create(['thread_id' => $this->thread->id]);

        // When we visit a thread pge
        // Then we should see the replies
        $this->get($this->thread->path())
            ->assertSee($reply->body);
    }

    /** @test */
    function a_user_can_filter_threads_according_to_a_channel()
    {
        $channel = create('App\Channel');
        $threadInChannel = create('App\Thread', ['channel_id' => $channel->id]);
        $threadNotInChannel = create('App\Thread');

        $this->get('/threads/'.$channel->slug)
             ->assertSee($threadInChannel->title)
            ->assertDontSee($threadNotInChannel->title);
    }

    /** @test */
    function a_user_can_filter_threads_by_any_username()
    {
        $this->signIn(create('App\User', ['name' => 'JohnDoe']));

        $threadByJohn = create('App\Thread', ['user_id' => auth()->id()]);
        $threadNotByJohn = create('App\Thread');

        $this->get('/threads?by=JohnDoe')
             ->assertSee($threadByJohn->title)
             ->assertDontSee($threadNotByJohn->title);
    }

    /** @test */
    function a_user_can_filter_threads_by_popularity()
    {
        // Given we have three threads
        // With 2 replies, 3 replies, 0 replies respectively
        $threadWithTwoReplies = create('App\Thread');
        create('App\Reply', ['thread_id' => $threadWithTwoReplies->id], 2);

        $threadWithThreeReplies = create('App\Thread');
        create('App\Reply', ['thread_id' => $threadWithThreeReplies->id], 3);

        $threadWithNoReplies = $this->thread;

        // When I filter all threads by popularity
        $response = $this->getJson('threads?popular=1')->json();

        // Then they should be returned from most replies to least
        $this->assertEquals([3, 2, 0], array_column($response, 'replies_count'));

    }


    /** @test */
    function a_user_can_request_all_replies_for_a_given_thread()
    {
        $thread = create('App\Thread');
        create('App\Reply', ['thread_id' => $thread->id], 2);

        $response = $this->getJson($thread->path() . '/replies')->json();

        $this->assertCount(1, $response['data']);
        $this->assertEquals(2, $response['total']);
    }
}
