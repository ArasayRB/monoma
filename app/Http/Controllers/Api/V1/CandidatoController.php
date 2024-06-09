<?php

namespace App\Http\Controllers\Api\V1;

use Illuminate\Http\Request;
use App\Repositories\V1\CandidatoRepository;
use App\Http\Resources\V1\CandidatoResource;
use App\Validation\V1\VCandidato as CandidatoValidate;
use App\Http\Controllers\JsonController;
use Illuminate\Support\Facades\Cache;
use App\Events\NewRecordCreated;
use Illuminate\Support\Facades\Log;

class CandidatoController extends JsonController
{
    protected $candidatoValidate, $candidatoRepository;

    public function __construct() {
        $this->candidatoValidate = new CandidatoValidate();
        $this->candidatoRepository = new CandidatoRepository();
    }

    public function index()
    {
        try {
            
        $filters=[];
            if(auth()->user()->role==='manager'){
                $cacheKey = 'candidatos_index_manager';
                $cacheTime = 60; // mnutes in time in cache  
                $leads = Cache::remember($cacheKey, $cacheTime, function () {
                    $filters=[];
                    return $this->candidatoRepository->all($filters);
                });      
                
            }else{               
                $cacheKey = 'candidatos_index_'.auth()->user()->id;
                $cacheTime = 60; // mnutes in time in cache
                $leads = Cache::remember($cacheKey, $cacheTime, function () {                    
                    $filters['owner']= auth()->user()->id;   
                    return $this->candidatoRepository->all($filters);
                });
            }
            return $this->showData([
                'meta'=>[
                    'success'=>true,
                    'errors'=>[]
                ],
                'data'=>CandidatoResource::collection($leads)
            ],200);
        } catch (\Throwable $th) {
            Log::error('Index leads error: '.$th->getMessage(),[$th]);
            return $this->serverErrorApiResponse([$th->getMessage()]);
        }
    }

    public function store(Request $request)
    {
        try {
            //Validate data before continue
            $validation = $this->candidatoValidate->store($request->all());
            if ($validation->fails())
                return $this->unprocessedRequestApiResponse([$validation->errors()->toArray()]);

            $data=$request->all();
            $data['created_by']=auth()->user()->id;
            $data['owner']=(int)$data['owner'];
            $created = $this->candidatoRepository->create($data);
            // Disparar el evento
            event(new NewRecordCreated());

            return $this->showData([
                'meta'=>[
                    'success'=>true,
                    'errors'=>[]
                ],
                'data'=>new CandidatoResource($created)
            ],201);
        } catch (\Throwable $th) {
            Log::error('Store lead error: '.$th->getMessage(),[$th]);
            return $this->serverErrorApiResponse([$th->getMessage()]);
        }
    }

    public function show($id)
    {
        try {            
            $lead = $this->candidatoRepository->find($id);//DD($lead);
            if(is_null($lead)){
                return $this->showData([
                    'meta'=>[
                        'success'=>false,
                        'errors'=>[
                            "No lead found"
                        ]
                    ]
                ],404);
            }else{
                return $this->showData([
                    'meta'=>[
                        'success'=>true,
                        'errors'=>[]
                    ],
                    'data'=>new CandidatoResource($lead)
                ]);
            }
        } catch (\Throwable $th) {
            Log::error('Show lead error: '.$th->getMessage(),[$th]);
            return $this->serverErrorApiResponse([$th->getMessage()]);
        }
    }
}
