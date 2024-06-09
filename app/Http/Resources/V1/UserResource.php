<?php
namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'username' => $this->name,
            'is_active' => $this->is_active,
            'role'=>$this->role,
            'last_login'=>$this->last_login->toDateTimeString(),
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