<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Consultant;

class ConsultantPolicy
{
    /**
     * Determine if user can manage all consultants
     */
    public function manage(User $user)
    {
        return $user->isSuperAdmin();
    }

    /**
     * Determine if user can delete a consultant
     */
    public function delete(User $user, Consultant $consultant)
    {
        return $user->isSuperAdmin();
    }

    /**
     * Determine if user can approve/reject consultants
     */
    public function review(User $user)
    {
        return $user->isAdmin() || $user->isSuperAdmin();
    }
}