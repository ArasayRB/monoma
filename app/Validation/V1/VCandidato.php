<?php

namespace App\Validation\V1;

use App\Interface\V1\Validations\IVCandidato;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class VCandidato implements IVCandidato
{
    public function store(array $data)
    {
        $rules = [
            'name'        => 'required|string',
            'source'     =>'required|string',
            'owner'     =>'required|exists:users,id'
        ];

        $validator = Validator::make($data, $rules);

        return $validator;
    }
}
