## Laravel Ajax-Dependent-DropDown

[![Build Status](https://travis-ci.org/laravel/framework.svg)](https://travis-ci.org/laravel/framework)
[![Total Downloads](https://poser.pugx.org/laravel/framework/d/total.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/framework/v/stable.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/framework/v/unstable.svg)](https://packagist.org/packages/laravel/framework)
[![License](https://poser.pugx.org/laravel/framework/license.svg)](https://packagist.org/packages/laravel/framework)

This repo implements the dependent dropdown using Ajax call.

## DB

import the ajax_DropDown.sql which is inside ##DB

## Ajax script inside views/Albums/index.blade.php


<script>
        $('#albums').on('change', function(e) {
            console.log(e);
            var album_id = e.target.value;
            //ajax
            $.getJSON("/ajax-call?album_id="+album_id, function (data) {
            //console.log(data);
                $('#songs').empty();
                $.each(data, function(index, songsObj){
                    $('#songs').append('<option value="'+songsObj.id+'">'+songsObj.name+'</option>');
                });
            });
        });
</script>



## Ajax Route

Route::get('/ajax-call', function(){
    $id = Input::get('album_id');
    $songs = \App\Song::where('album_id', '=', $id )->get();
    return Response::json($songs);
});

### login info

with regards to login please input the following credentials:

Email:afghan.waziri0@gmail.com
password:admin123


