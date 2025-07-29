<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Consultant extends Model
{
    protected $fillable = [
        'user_id', // Foreign key to User model
       
        'name',
        'email',
        'phone',
        'specialization',
        'experience',
        'cv_path',
        'image_path',
        'status', // 'pending', 'approved', 'rejected'
        'rejection_reason'
    ];
    protected $visible = [
    'id',
    'user_id',
    'name',
    'phone',
    'email',
    'specialization',
    'experience',
    'cv_path',
    'image_path',
    'status'
];

    protected $casts = [
        'experience' => 'string',
    ];

    // Relationship to User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Accessors
    protected function cvUrl(): Attribute
    {
        return Attribute::make(
            get: fn () => $this->cv_path ? 
                asset("storage/{$this->cv_path}") : null
        );
    }

    protected function imageUrl(): Attribute
    {
        return Attribute::make(
            get: fn () => $this->image_path ? 
                asset("storage/{$this->image_path}") : null
        );
    }

    // Scopes
    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }

    public function scopeApproved($query)
    {
        return $query->where('status', 'approved');
    }

    public function scopeRejected($query)
    {
        return $query->where('status', 'rejected');
    }
}