<?php

namespace App\Policies;

use App\Http\Controllers\PainelController;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AdminPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
   

    public function __construct()
    {
    }
}
