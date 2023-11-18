<?php

namespace App\Http\Controllers;
use Cart;
use DB;
// use App\Models\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $data=array();
        $data['id']=$request->id;
        $data['name']=$request->name;
        $data['qty']=$request->qty;
        $data['weight']=1;
        $data['price']=$request->price;

        // echo "<pre>";
        // print_r($data);

     $add=Cart::add($data);

    if ($add) {
          $notification=array(
            'messege'=>'Product Added',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);
     }
     else{
        $notification=array(
            'messege'=>'error',
            'alert-type'=>'success' 
        );
        return Redirect()->back()->with($notification);
     }
    }

/**
     * Update
     */

    public function CartUpdate(Request $request, $rowId)
        
    {
        $qty=$request->qty;
        $update=Cart::update($rowId , $qty);

        if ($update) {
            $notification=array(
              'messege'=>'Update Successfully',
              'alert-type'=>'success'
          );
          return Redirect()->back()->with($notification);
       }
       else{
          $notification=array(
              'messege'=>'error',
              'alert-type'=>'success' 
          );
          return Redirect()->back()->with($notification);
       }
    }
   
    /**
     * Remane
     */

    public function CartRemove($rowId){
        $remove=Cart::remove($rowId);

        if ($remove) {
            $notification=array(
              'messege'=>'Remove Successfully',
              'alert-type'=>'success'
          );
          return Redirect()->back()->with($notification);
       }
       else{
          $notification=array(
              'messege'=>'error',
              'alert-type'=>'success' 
          );
          return Redirect()->back()->with($notification);
       }
    }

    public function CreateInvoice(Request $request){
            // echo"done";
            // echo"<pre>";
            // print_r($contents);
            // echo"<br>";

            // print_r($cust_id);

            // $request->validate([
            //     'cust_id'=>'required',
            // ],

            // [
            //     'cust_id.required' => 'Select A Customer First !',
            // ]);
            // $cust_id=$request->cust_id;
            // $customer=DB::table('customers')->where('id',$cust_id)->first();
            // $contents=Cart::content();
            return view('backend.salesorders.create-invoice');
            // echo"<pre>";
            // print_r($contents);

    }


  
  

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
