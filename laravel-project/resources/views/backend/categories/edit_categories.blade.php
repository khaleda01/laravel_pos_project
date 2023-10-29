@extends('frontend.layout.header')
      @section('content')

<div class="container-fluid "> 


    <div class="col-md-6">
        <form action="{{ route('update', $user->id) }}" method="POST">
      @csrf
      @method('put')
          <div class="mb-10">
            <label for="exampleInputEmail1" class="form-label">Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="c_name" value="{{ $user->c_name}}">
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">status</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="c_status" value="{{ $user->c_status}}">
          </div>
          
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <br>
    </div>
 </div>
    @endsection

  