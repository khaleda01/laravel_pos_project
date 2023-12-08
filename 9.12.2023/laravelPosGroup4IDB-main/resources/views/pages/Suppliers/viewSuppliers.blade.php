@extends("master")
@section("content")

<div class="col-sm-12 col-xl-12">
    <div class="bg-secondary rounded h-100 p-4 bg-light text-dark">
        <h6 class="mb-4">All Suppliers</h6>
            <table class="table text-dark">
                <thead>
                    <tr>
                        <th scope="col">Suppliers Id</th>
                        <th scope="col">Suppliers Name</th>
                        <th scope="col">Suppliers Address</th>
                        <th scope="col">Suppliers Phone</th>
                        <th scope="col">Suppliers Email</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                    <tbody>
                       @foreach ($user as $row)
                         <tr>
                            <td>{{$row->id}}</td>
                            <td>{{$row->supp_name}}</td>
                            <td>{{$row->supp_address}}</td>
                            <td>{{$row->supp_phone}}</td>
                            <td>{{$row->supp_email}}</td>
                            <td><a href="supp_edit/{{ $row->id}}/user" class="btn btn-success">Edit</a> 
                            <a href="supp_delete/{{ $row->id}}" class="btn btn-danger">Delete</a></td> 
                            </tr> 
                         @endforeach
                       
                    </tbody>
            </table>
    </div>
</div>

@endsection