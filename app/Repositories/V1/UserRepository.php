<?php

namespace App\Repositories\V1;

use App\Models\User;
use Illuminate\Http\Request;
use App\Interface\V1\Repositories\IRUser;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class UserRepository implements IRUser
{
    protected $model;

    public function __construct()
    {
        $this->model = app()->make(User::class);
    }

    public function all()
    {
        return $this->model->all();
    }

    public function find($id)
    {
        return $this->model->find($id);
    }

    public function create(array $data)
    {
        return $this->model->create($data);
    }

    public function update($id, array $data)
    {
        $user = $this->model->find($id);
        if ($user) {
            $user->update($data);
            return $user;
        }
        return null;
    }

    public function delete($id)
    {
        $user = $this->model->find($id);
        if ($user) {
            return $user->delete();
        }
        return false;
    }

    public function revokeUserTkn(Request $request):bool
    {
        $token = $request->user()->token();
        if ($token) {
            $token->revoke();
            return true;
        } else {
            return false;
        }
    }

    public function attemptUser(array $data):bool
    {
        if(Auth::attempt($data))
            return true;
        return false;
    }

    public function login(array $data):array
    {
        // successfull authentication
        $user = User::find(Auth::user()->id);

        //update las login
        $user->last_login=now();
        $user->update();

        $tokenData = $user->createToken('appToken');
        $user_token = $tokenData->accessToken;
        $diffInMinutes=$this->userTknExpireInMinutes($tokenData);
        return ['user_token'=>$user_token,'diffInMinutes'=>$diffInMinutes];
    }

    public function userTknExpireInMinutes(object $userTknData):int
    {        
        $user_token_expired_at=$userTknData->token->expires_at;
        $to = Carbon::now();
        $from = Carbon::parse($user_token_expired_at);
        $diffInMinutes = $to->diffInMinutes($from);
        return $diffInMinutes;
    }
}