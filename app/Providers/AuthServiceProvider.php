<?php

namespace App\Providers;

use App\Models\User;
use App\Models\Consultant;
use App\Policies\ConsultantPolicy;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
         Consultant::class => ConsultantPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        // Define the delete-user gate
        Gate::define('delete-user', function (User $currentUser, User $userToDelete) {
            // Allow if:
            // 1. Current user is an admin (is_admin = true) OR
            // 2. User is deleting their own account
            return $currentUser->is_admin || $currentUser->id === $userToDelete->id;
        });
    }
}