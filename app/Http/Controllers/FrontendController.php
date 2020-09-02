<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Album;
use App\Artist;
use App\Song;
use App\Category;

class FrontendController extends Controller
{
    public function index(){
    	
       $albums = Album::all();
   	
    	 return view('frontend.index',compact('albums'));
    	}


    	public function artist(){

    
              $artists = Artist::all();

       return view('frontend.artist',compact('artists'));
      }

      public function album(){

    
              $albums = Album::all();

       return view('frontend.album',compact('albums'));
      }
       public function song(){

    
              $songs = Song::all();

       return view('frontend.song',compact('songs'));
      }

       public function category(){

    
              $categories = Category::all();

       return view('frontend.category',compact('categories'));
      }

        public function categorydetail($id){

    
              //dd($id);
              $songs=Song::where('category_id',$id)->get();
          //$songs=Song::all();
              //dd($songs);
              


       return view('frontend.songdetail',compact('songs'));
      }
      public function artistdetail($id){

    
              //dd($id);
              $songs=Song::where('artist_id',$id)->get();



       return view('frontend.songdetail',compact('songs'));
      }

      public function albumdetail($id){

    
              //dd($id);
              $songs=Song::where('album_id',$id)->get();
              


       return view('frontend.songdetail',compact('songs'));
      }


}
