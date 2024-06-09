<?php
namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CandidatoResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'source' => $this->source,
            'owner'=>$this->owner,
            'created_at'=>$this->created_at->toDateTimeString(),
            'created_by'=>$this->created_by,
        ];
    }

    public function with($request)
    {
        return [
            'meta' => [
                'version' => '1.0.0',
                'author' => 'Arasay Rodriguez',
            ],
        ];
    }
}