<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class CreateThreadsTest extends TestCase
{
    use DatabaseMigrations;


    /**
     *
     * @test
     */
    function guests_may_not_create_threads()
    {
        $this->withExceptionHandling();

        $this->post('/threads')
            ->assertRedirect('/login');

        $this->get('/threads/create')
            ->assertRedirect('/login');

//        $this->expectException('Illuminate\Auth\AuthenticationException');

//        $thread = make('App\Thread');

//        $this->post('/threads', $thread->toArray());
    }

    /** @test */
    function an_authenticated_user_can_create_new_thread()
    {
        // Given we have a signed in user
        //$this->actingAs(create('App\User'));
        $this->signIn();

        // When we hit the endpoint to create a new thread
        $thread = make('App\Thread');
        $response = $this->post('/threads', $thread->toArray());

//       dd($response->headers->get('Location'));
        // Then, when we visit the thread page
        $response = $this->get($response->headers->get('Location'));

        // We should see the new thread
        $response->assertSee($thread->title)
                 ->assertSee($thread->body);
    }

    // Combine this test to guests_may_not_create_threads()
    /** @test */
   /* function guests_cannot_see_the_thread_create_page()
    {
        $this->withExceptionHandling()
             ->get('/threads/create')
             ->assertRedirect('/login');
    }*/

   /** @test */
   function a_thread_requires_a_title()
   {
       $this->publishThread(['title' => null])
           ->assertSessionHasErrors('title');
   }

    /** @test */
    function a_thread_requires_a_body()
    {
        $this->publishThread(['body' => null])
            ->assertSessionHasErrors('body');
    }

    /** @test */
    function a_thread_requires_a_channel_id()
    {
        factory('App\Channel', 2)->create();

        $this->publishThread(['channel_id' => null])
            ->assertSessionHasErrors('channel_id');

        $this->publishThread(['channel_id' => 999])
            ->assertSessionHasErrors('channel_id');
    }

   public function publishThread($overrides = [])
   {
       $this->withExceptionHandling()->signIn();

       $thread = make('App\Thread', $overrides);

       return $this->post('/threads', $thread->toArray());
   }

   /** @test */
   function authorized_users_can_delete_threads()
   {
       $this->signIn();

       $thread = create('App\Thread', ['user_id' => auth()->id()]);
       $reply = create('App\Reply', ['thread_id' => $thread->id]);

       $response = $this->json('delete', $thread->path());

       $response->assertStatus(204);

       $this->assertDatabaseMissing('threads', ['id' => $thread->id]);
       $this->assertDatabaseMissing('replies', ['id' => $reply->id]);

       $this->assertDatabaseMissing('activities', [
           'subject_id' => $thread->id,
           'subject_type' => get_class($thread)
       ]);

       $this->assertDatabaseMissing('activities', [
           'subject_id' => $reply->id,
           'subject_type' => get_class($reply)
       ]);
   }

   /** @test */
   function unauthorized_users_may_not_delete_threads()
   {
       $this->withExceptionHandling();
       $thread = create('App\Thread');

       $response = $this->delete($thread->path());
       $response->assertRedirect('/login');

       $this->signIn();
       $response = $this->delete($thread->path());
       $response->assertStatus(403);
   }
}
