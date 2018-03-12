<?php

namespace App\Http\Controllers;

use App\Reply;
use Illuminate\Http\Request;
use App\Thread;

class RepliesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => 'index']);
    }

    public function index($channelId, Thread $thread)
    {
        // laravel paginate() method will get page parameter value in URL
        // eg. forum.test/threads/channel1/replies?page=1
        return $thread->replies()->paginate(2 );
    }

    /**
     * @param $channel
     * @param Thread $thread
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store($channel, Thread $thread)
    {
        try {
            $this->validate(request(), ['body' => 'required|spamfree']);

            $reply = $thread->addReply([
                'body' => request('body'),
                'user_id' => auth()->id()
            ]);
        }catch(\Exception $e){
            return response('Sorry, your reply could not be saved at this time.', 422);
        }

        if(request()->expectsJson()){
            return $reply->load('owner');
        }

        return redirect($thread->path())->with('flash', 'You reply has been left');
    }


    public function destroy(Reply $reply)
    {
//        if($reply->user_id != auth()->id()){
//            return response([], 403);
//        }

        $this->authorize('update', $reply);
        $reply->delete();

        if(request()->expectsJson()){
            return response(['status' => 'Reply deleted']);
        }

        return back();
    }


    /**
     * @param Reply $reply
     */
    public function update(Reply $reply)
    {
        $this->authorize('update', $reply  );

        try{
            $this->validate(request(), ['body' => 'required|spamfree']);

            $reply->update(['body' => request('body')]);
        }catch(\Exception $e){
            return response('Sorry, your reply could not be updated at this time.', 422);
        }

    }
}
