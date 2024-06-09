<?php

namespace App\Repositories\V1;

use Illuminate\Http\Request;
use App\Interface\V1\Repositories\IRCandidato;
use App\Models\Candidato;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class CandidatoRepository implements IRCandidato
{
    protected $model;

    public function __construct()
    {
        $this->model = app()->make(Candidato::class);
    }

    public function all($filters=[])
    {
        $leads = $this->model;
        if(count($filters)>0){
            foreach ($filters as $key => $value) {
                $leads = $leads->where($key,$value);
            }
        }
        return $leads->get();
    }

    public function find($id)
    {
        return $this->model->find($id);
    }

    public function create(array $data)
    {
        return $this->model->create($data);
    }
}