<?php


use App\Models\Consultant;
use App\Http\Controllers\AI;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AIController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ConsultantController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\RatingController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


    Route::post('/login', [UserController::class, 'login'])->name('login');
    Route::post('/register', [UserController::class, 'register']);
    Route::post('/save-plan',[AIController::class,'savePlan'])->middleware('auth:sanctum');
    Route::post('/save-con',[AIController::class,'saveCons'])->middleware('auth:sanctum');
    Route::post('/save-tracker',[AIController::class,'savetracker'])->middleware('auth:sanctum');

Route::post('/consultants', [ConsultantController::class, 'store'])->middleware('auth:sanctum'); // Create consultant application


Route::middleware('auth:sanctum')->post('/logout', [UserController::class, 'logout']);
// Route::middleware(['web', 'auth:sanctum'])->get('/user', [UserController::class, 'user']);
Route::middleware('auth:sanctum')->group(function () {
    // Admin routes
    Route::prefix('admin')->middleware(['admin'])->group(function () {
        Route::get('/consultants', [ConsultantController::class, 'index']);
        Route::post('/consultants/{id}/approve', [ConsultantController::class, 'approve']);
        Route::post('/consultants/{id}/reject', [ConsultantController::class, 'reject']);
    });
});
Route::middleware('auth:sanctum')->post('/consultants/blog', [ConsultantController::class, 'blog']);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
route::put('/user/update', [UserController::class, 'edit'])->middleware('auth:sanctum'); // Update user profile
  Route::delete('/users/{user}', [UserController::class, 'destroy'])->middleware('auth:sanctum'); // Delete user account

// routes/api.php
Route::middleware('auth:sanctum')->get('/consultants', function () {
    return Consultant::all();
});


Route::post('/blogs', [BlogController::class, 'store'])->middleware('Blog'); // Create blog
Route::middleware('auth:sanctum')->group(function () {
    // Route::get('/blogs/{blog}', [BlogController::class, 'show']); // Show single blog
    Route::get('/blogs', [BlogController::class, 'index']); 
    Route::get('/blogs/{id}', [BlogController::class, 'show']); // Show single blog by ID
    Route::put('/blogs/{blog}', [BlogController::class, 'update']); // Update blog
    Route::delete('/blogs/{blog}', [BlogController::class, 'destroy']); // Delete blog
    
    // Rating routes
    Route::post('/ratings', [RatingController::class, 'store']); // Create rating
    Route::put('/ratings/{rating}', [RatingController::class, 'update']); // Update rating
});
// routes/api.php
Route::get('/user/check-consultant', function () {
    return response()->json([
        'is_consultant' => auth()->check() && auth()->user()->consultant !== null
    ]);
})->middleware('auth:sanctum');
// routes/api.php
// routes/api.php
Route::middleware('auth:sanctum')->get('/user/current', function() {
    $user = auth()->user()->load('consultant');
    
    return response()->json([
        'id' => $user->id,
        'name' => $user->name,
        'is_admin' => $user->is_admin,
        'is_consultant' => $user->consultant !== null, // This is now the correct check
        'consultant_data' => $user->consultant // Entire consultant object if needed
    ]);
});
Route::get('/ratings/check', [RatingController::class, 'checkExistingRating']);


Route::middleware('auth:sanctum')->group(function () {
    // ... existing routes
    
    // Consultant routes
    Route::get('consultants/{id}/edit', [ConsultantController::class, 'edit']);
    Route::put('consultants/{id}', [ConsultantController::class, 'update']);
});
Route::get('consultants/{id}', [ConsultantController::class, 'show'])->middleware('auth:sanctum'); // Show single consultant by ID

Route::get('/consultants/by-user/{user_id}', [ConsultantController::class, 'getByUser'])->middleware('auth:sanctum'); // Get consultants by user ID

Route::middleware(['auth:sanctum'])->group(function () {

    // ... other admin routes
    Route::delete('/admin/consultants/{consultant}', [ConsultantController::class, 'destroy'])
        
        ;
    
});
