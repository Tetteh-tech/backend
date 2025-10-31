<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Blog extends Model
{
    use HasFactory;

    protected $table = 'blogs';

    protected $fillable = [
        'consultant_id',
        'title',
        'content',
        'featured_image',
    ];

    // These are the attributes you want visible in JSON responses
    protected $visible = [
        'id',
        'consultant_id',
        'title',
        'content',
        'featured_image',
        'featured_image_url',
        'created_at',
        'updated_at',
    ];

    // This makes Laravel include this attribute in API responses
    protected $appends = [
        'featured_image_url',
    ];

    // === Relationships ===
    public function consultant()
    {
        return $this->belongsTo(Consultant::class);
    }

    public function ratings()
    {
        return $this->hasMany(Rating::class);
    }

    public function averageRating()
    {
        return $this->ratings()->avg('rating');
    }

    // === Accessors ===
    public function getFeaturedImageUrlAttribute()
    {
        if (!$this->featured_image) {
            return null;
        }

        return Storage::disk('public')->url($this->featured_image);
    }
}
