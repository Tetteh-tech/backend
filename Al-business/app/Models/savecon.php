<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class savecon extends Model
{
    use HasFactory;

    protected $table = 'savecons'; // Specify the table name if it's not the default
    protected $fillable = [
        'user_id',
        'title',
        'Address_the_suitation',
        'Suggest_a_bunch_of_solutions',
        'Review_best_option_to_solve_issue_and_why',
        'Give_a_step_by_step_guide_to_carry_out_the_solution',
        'Best_way_to_improve_business_with_business_properties'
    ];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
