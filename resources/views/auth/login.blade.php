@extends("layout")
@section("content")
@extends("master")
@section("body")


    <div class="container" style="margin-top: 3cm">
        <div class="panel panel-title panel-warning">


            <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">

                                <div class="page-header">
                                    <h1><span class="glyphicon glyphicon-flash"></span> Admin Login</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                    <form method="POST" action="/auth/login">
                        {!! csrf_field() !!}

                        <div class="row">
                            <!-- FORM STARTS HERE -->
                            <!-- resources/views/auth/login.blade.php -->
                            <!-- resources/views/auth/login.blade.php -->
                            <div class="col-lg-4">
                                <label>Email</label>
                                <input type="text" name="email" value="{{ old('email') }}" class="form-control">
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-lg-4">
                                <label>Password</label>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                        </div>

                        <div class="row" style="margin-top: 1cm">
                            <div class="col-lg-4">
                                <button type="submit" class="btn btn-danger">Login</button>
                            </div>
                        </div>


                        <!-- resources/views/auth/login.blade.php -->
        
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>

                        @endif

            </div>



        </div>
    </div>
    @yield('login')
@endsection
