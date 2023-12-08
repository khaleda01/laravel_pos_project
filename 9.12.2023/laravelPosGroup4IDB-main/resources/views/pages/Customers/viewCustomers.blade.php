@extends("master")
@section("content")

<div class="col-sm-12 col-xl-12">
    <div class="bg-secondary rounded h-100 p-4 bg-light text-dark">
        <h6 class="mb-4">All Customers</h6>
            <table class="table text-dark">
                <thead>
                    <tr>
                        <th scope="col">Customers Id</th>
                        <th scope="col">Customers Name</th>
                        <th scope="col">Customers Address</th>
                        <th scope="col">Customers Phone</th>
                        <th scope="col">Customers Email</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                    <tbody>
                       @foreach ($user as $row)
                         <tr>
                            <td>{{$row->id}}</td>
                            <td>{{$row->customer_name}}</td>
                            <td>{{$row->customer_address}}</td>
                            <td>{{$row->customer_phone}}</td>
                            <td>{{$row->customer_email}}</td>
                            <td><a href="customer_edit/{{ $row->id }}/user" class="btn btn-success">Edit</a> 
                            <a href="customer_delete/{{ $row->id}}" class="btn btn-danger">Delete</a></td> 
                            </tr> 
                         @endforeach
                       
                    </tbody>
            </table>
    </div>
</div>

@endsection