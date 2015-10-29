




@extends("layout")
@section("content")


<h1> Albums and Songs Ajax dropdown</h1>

<div class="col-lg-12">

    <div class="form-group">
        <label>Albums</label>
        <select class="form-control" name="albums" id="albums">
            @foreach($albums as $album)
                <option value="{{$album->id}}"class="form-control">{{$album->name}}
                </option>
            @endforeach
        </select>
    </div>

    <div class="form-group">
        <label>Songs</label>
        <select class="form-control input-sm" name="songs" id="songs">
                <option value="">
                </option>
        </select>
    </div>

    </div>

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
@endsection