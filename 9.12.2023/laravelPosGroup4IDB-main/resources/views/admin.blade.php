@extends('master')
@section('content')
@php
use App\Models\Category;
use App\Models\Customers;
use App\Models\ProductsModel;
use App\Models\Suppliers;
use App\Models\Brand;
use App\Models\Units;
use App\Models\SOrderProduct;
use App\Models\POrderProduct;
use App\Models\SalesOrder;
    $category = Category::count();
    $customer = Customers::count();
    $Products = ProductsModel::count();
    $supplier = Suppliers::count();
    $brand = Brand::count();
    $unit = Units::count();
    $stock = SOrderProduct::count();
    $purchase = POrderProduct::count();
    $sale = SalesOrder::count();
@endphp
    <div class="container-fluid pt-4 px-4 bg-white">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3" >
                        <div class="text-dark bg-success rounded d-flex align-items-center justify-content-between p-4">
                            {{-- <i class="fa fa-chart-line fa-3x text-info"></i> --}}
                            <div class="ms-3">
                               
                                <p class="mb-2">Total product</p>
                                <h6 class="mb-0">{{$Products}}</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="text-dark bg-info rounded d-flex align-items-center justify-content-between p-4" >
                            {{-- <i class="fa fa-chart-bar fa-3x text-info"></i> --}}
                            <div class="ms-3">
                                <p class="mb-2">Today Customers</p>
                                <h6 class="mb-0">{{$customer}}</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="text-dark bg-warning rounded d-flex align-items-center justify-content-between p-4">
                            {{-- <i class="fa fa-chart-area fa-3x text-info"></i> --}}
                            <div class="ms-3">
                               
                                <p class="mb-2">Today Supplier</p>
                                <h6 class="mb-0"> {{$supplier}}</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="text-dark bg-light rounded d-flex align-items-center justify-content-between p-4">
                            {{-- <i class="fa fa-chart-pie fa-3x text-info"></i> --}}
                            <div class="ms-3">
                                <p class="mb-2">Total Stock</p>
                                <h6 class="mb-0">{{$stock}}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid pt-4 px-4 bg-white">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3" >
                        <div class="text-dark bg-danger rounded d-flex align-items-center justify-content-between p-4">
                            {{-- <i class="fa fa-chart-line fa-3x text-info"></i> --}}
                            <div class="ms-3">
                                <p class="mb-2">Today Purches</p>
                                <h6 class="mb-0">{{$purchase}}</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class=" text-dark bg-light rounded d-flex align-items-center justify-content-between p-4" >
                            {{-- <i class="fa fa-chart-bar fa-3x text-info"></i> --}}
                            <div class="ms-3">
                                <p class="mb-2">Total Sale</p>
                                <h6 class="mb-0">{{$sale}}</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="text-dark bg-success rounded d-flex align-items-center justify-content-between p-4">
                            {{-- <i class="fa fa-chart-area fa-3x text-info"></i> --}}
                            <div class="ms-3">
                                <p class="mb-2">Today Brand</p>
                                <h6 class="mb-0">{{$brand}}</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="text-dark bg-warning rounded d-flex align-items-center justify-content-between p-4">
                            {{-- <i class="fa fa-chart-pie fa-3x text-info"></i> --}}
                            <div class="ms-3">
                                <p class="mb-2">Total Unit</p>
                                <h6 class="mb-0">{{$unit}}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>






      
@endsection
