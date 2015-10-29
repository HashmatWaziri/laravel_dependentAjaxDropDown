<?php

namespace App\Http\Controllers;
use App\Artist;
use App\Song;
use App\Album;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class AlbumController extends Controller
{



    public function __construct(){

        $this->middleware('auth');

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $albums = Album::all();
        return view('Albums.index',compact('albums'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     *  Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * TODO  Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $album = Album::with('songs')->find($id);
        /**
         *
         * display album name
         */
        echo '<strong>'.'One to Many relationship'.'</strong>'. '<br>'.'<br>';
        echo 'Album Name:'.'<li>'.$album->name;
        echo '<br>';
        /**
         * Grab the songs for
         */
        echo '<br>';
        echo 'songs'. '<br>';
        foreach($album->songs as $key => $value)
            /**
             * display songs for each album
             */
            echo '<br>'.'<li>'. $value->name;



        /**
         * Many to Many relationship
         * TODO Display album listeners
         */
        echo '<br>';
        echo '<br>';
        echo '<br>';

        echo '<strong>'.'Many to Many relationship'.'</strong>'. '<br>';
        echo '<br>'.'Album listeners'. '<br>';

        $album = Album::find($id);
        foreach($album->listeners as $listeners )
            echo '<li>'. $listeners->name;

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
