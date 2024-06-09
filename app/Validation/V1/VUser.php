<?php

namespace App\Validation\V1;

use App\Interface\V1\Validations\IVUser;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class VUser implements IVUser
{
    public function login(array $data)
    {
        $rules = [
            'password'        => 'required',
            'username'     =>'required'
        ];

        $validator = Validator::make($data, $rules);

        return $validator;
    }
}
