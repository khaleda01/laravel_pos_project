<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\HeaderController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('frontend.layout.header');
})->middleware(['auth', 'verified'])->name('header');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('chart', [HeaderController::class, 'chart']);


    
});

require __DIR__.'/auth.php';

/*--------------------categories--------------------*/

Route::get('/addcategories', [CategorieController::class, 'create'])->name('categorie');
Route::post('/storecategories', [CategorieController::class, 'store'])->name('add');
Route::get('/viewcategories', [CategorieController::class, 'show'])->name('show');
Route::get('/edit/{id}/user', [CategorieController::class, 'edit'])->name('editview');
Route::put('/update/{id}/user', [CategorieController::class, 'update'])->name('update');
Route::get('/delete/{id}/', [CategorieController::class, 'destroy'])->name('destroy');

/*-----------------------unit----------------------------*/

Route::get('/addunits', [UnitController::class, 'create'])->name('unit');
Route::post('/storeunits', [UnitController::class, 'store'])->name('u_add');
Route::get('/viewunits', [UnitController::class, 'show'])->name('show');
Route::get('/u_edit/{id}/user', [UnitController::class, 'edit'])->name('editview');
Route::put('/u_update/{id}/user', [UnitController::class, 'update'])->name('u_update');
Route::get('/u_delete/{id}/', [UnitController::class, 'destroy'])->name('destroy');