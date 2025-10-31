<?php
namespace App\Http\Controllers;
use App\Models\AI;
use App\Models\savecon;
use App\Models\BusinessPlan;
use App\Models\tracker;
use Illuminate\Http\Request;

class AiController extends Controller
{
   public function savePlan(Request $request)
{
    $validated = $request->validate([
        'title' => 'string',
        'executive_summary' => 'nullable',
        'things_needed_to_start' => 'nullable',
        'market_analysis' => 'nullable',
        'marketing_strategy' => 'nullable',
        'financial_plan' => 'nullable',
        'operations_plan' => 'nullable'
    ]);

    // Convert all fields to strings
    $dataToSave = [
         'user_id' => auth()->id(), // Get current user's ID
        
        'title' => (string) $validated['title'],
        'executive_summary' => (string) $validated['executive_summary'],
        'things_needed_to_start' => is_array($validated['things_needed_to_start']) 
            ? json_encode($validated['things_needed_to_start'])
            : (string) $validated['things_needed_to_start'],
        'market_analysis' => $validated['market_analysis'],
        'marketing_strategy' => (string) $validated['marketing_strategy'],
        'financial_plan' => is_array($validated['financial_plan']) 
            ? json_encode($validated['financial_plan'])
            : (string) $validated['financial_plan'],
        'operations_plan' => (string) $validated['operations_plan']
    ];

    $plan = BusinessPlan::create($dataToSave);

    return response()->json($plan, 201);
}

public function saveCons(Request $request){
    $validated = $request->validate([
         'title' => 'string|max:255',
        'Address_the_suitation' => 'nullable',
        'Suggest_a_bunch_of_solutions' => 'json',
        'Review_best_option_to_solve_issue_and_why' => 'nullable',
        'Give_a_step_by_step_guide_to_carry_out_the_solution' => 'nullable',
        'Best_way_to_improve_business_with_business_properties' => 'nullable'
    ]);

    $dataToSave = [
    'user_id' => auth()->id(),
    'title' => is_array($validated['title']) 
        ? json_encode($validated['title']) 
        : (string) $validated['title'],

    'Address_the_suitation' => is_array($validated['Address_the_suitation']) 
        ? json_encode($validated['Address_the_suitation']) 
        : (string) $validated['Address_the_suitation'],

    'Suggest_a_bunch_of_solutions' => is_array($validated['Suggest_a_bunch_of_solutions']) 
        ? json_encode($validated['Suggest_a_bunch_of_solutions']) 
        : (string) $validated['Suggest_a_bunch_of_solutions'],

    'Review_best_option_to_solve_issue_and_why' => is_array($validated['Review_best_option_to_solve_issue_and_why']) 
        ? json_encode($validated['Review_best_option_to_solve_issue_and_why']) 
        : (string) $validated['Review_best_option_to_solve_issue_and_why'],

    'Give_a_step_by_step_guide_to_carry_out_the_solution' => is_array($validated['Give_a_step_by_step_guide_to_carry_out_the_solution']) 
        ? json_encode($validated['Give_a_step_by_step_guide_to_carry_out_the_solution']) 
        : (string) $validated['Give_a_step_by_step_guide_to_carry_out_the_solution'],

    'Best_way_to_improve_business_with_business_properties' => is_array($validated['Best_way_to_improve_business_with_business_properties']) 
        ? json_encode($validated['Best_way_to_improve_business_with_business_properties']) 
        : (string) $validated['Best_way_to_improve_business_with_business_properties'],
];

    $plan = savecon::create($dataToSave);

    return response()->json($plan, 201);
}
public function savetracker(Request $request){
    $validated=$request->validate([
   'title' =>'string',
   'Businessactivities' => 'nullable',
   'Expenditure' => 'nullable',
   'Sales' => 'nullable',
   'Timeline' => 'nullable',
   'FinancialSummary' => 'nullable'
    ]);

    $dataToSave = [
        'user_id' => auth()->id(),
        'title' => (string) $validated['title'],
        'BA' => is_array($validated['Businessactivities']) 
            ? json_encode($validated['Businessactivities']) 
            : (string) $validated['Businessactivities'],
        'Exp' => is_array($validated['Expenditure']) 
            ? json_encode($validated['Expenditure']) 
            : (string) $validated['Expenditure'],
        'Sales' => is_array($validated['Sales']) 
            ? json_encode($validated['Sales']) 
            : (string) $validated['Sales'],
        'TL' => is_array($validated['Timeline']) 
            ? json_encode($validated['Timeline']) 
            : (string) $validated['Timeline'],
        'FS' => is_array($validated['FinancialSummary']) 
            ? json_encode($validated['FinancialSummary']) 
            : (string) $validated['FinancialSummary']
    ];
    $tracker = tracker::create($dataToSave);
    return response()->json($tracker, 201);
}
}
