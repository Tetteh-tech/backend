<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BusinessPlan extends Model
{
    protected $table = 'Ai'; // Specify the table name if it's not the default
    protected $fillable = [
        'user_id',
        'title',
        'executive_summary',
        'things_needed_to_start',
        'market_analysis',
        'marketing_strategy',
        'financial_plan',
        'operations_plan',
    ];

   public function user()
{
    return $this->belongsTo(User::class);
}
}

