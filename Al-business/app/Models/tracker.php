<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tracker extends Model
{
    use HasFactory;
    protected $table = 'tracker'; // Specify the table name if it's not the default
    protected $fillable = [
        'user_id',
        'title',
        'BA',
        'Exp',
        'Sales',
        'TL',
        'FS'
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
