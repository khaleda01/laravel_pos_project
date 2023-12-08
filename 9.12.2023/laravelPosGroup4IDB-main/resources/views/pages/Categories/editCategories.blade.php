@extends("master")
@section("content")



<div class="container-fluid bg-light text-dark "> 
    <div class="p-3 mb-2 bg-light text-dark">
   <div class="col-md-12 grid-margin stretch-card">
      <div class="card bg-light text-dark">
        <div class="card-body">
          <h4 class="card-title">Edit Categoty Name</h4>

{{-- <div class="col-sm-12 col-xl-6 bg-light text-dark">
    <div class="bg-secondary rounded h-100 p-4 bg-light text-dark">
        <h6 class="mb-4">Edit Categoty Name</h6> --}}
        <form action="{{ route('category_update', $user->id) }}" method="POST">
         @csrf
         @method('put')
                <div class="mb-3">
                    <label for="exampleInputCategory" class="form-label">Category Name :</label>
                    <input type="text" class="form-control" id="exampleInputCategory" placeholder="Enter category name" name="category_name" value="{{ $user->category_name}}"
                    aria-describedby="categorydHelp">
                </div>
                <button type="submit" class="btn btn-info">Submit</button>
         </form>
                
    </div>
</div>

@endsection