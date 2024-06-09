<?php

namespace App\Interface\V1\Validations;

use Illuminate\Http\Request;

interface IVUser
{

    public function login(array $data);
}
