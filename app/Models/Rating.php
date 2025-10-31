<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    protected $fillable = ['user_id', 'consultants_id', 'blog_id', 'rating', 'review'];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
    public function consultant()
    {
        return $this->belongsTo(Consultant::class);
    }
    
    public function blog()
    {
        return $this->belongsTo(Blog::class);
    }
}