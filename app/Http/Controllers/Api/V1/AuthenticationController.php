<?php

namespace App\Http\Controllers\Api\V1;

use Illuminate\Http\Request;
use App\Repositories\V1\UserRepository;
use App\Validation\V1\VUser as UserValidate;
use App\Http\Controllers\JsonController;
use Illuminate\Support\Facades\Log;


class AuthenticationController extends JsonController
{

    protected $userValidate, $userRepository;

    public function __construct() {
        $this->userValidate = new UserValidate();
        $this->userRepository = new UserRepository();
    }

    /**
    * Handle an incoming authentication request.
    */
    public function store(Request $request)
    {
        try {
            //Validate data before continue
            $validation = $this->userValidate->login($request->all());
            if ($validation->fails())
                return $this->unprocessedRequestApiResponse([$validation->errors()->toArray()]);
    
            //Check user
            $isUserAttempt = $this->userRepository->attemptUser(['username' => request('username'), 'password' => request('password')]);
            if ($isUserAttempt) {
                // successfull authentication
                $authenticated = $this->userRepository->login($request->all());
    
                return $this->okApiResponse([
                    'token' => $authenticated['user_token'],
                    'minutes_to_expire'=> $authenticated['diffInMinutes']
                ]);
            } else {
                // failure to authenticate
                return $this->unauthorizedApiResponse([
                    "Password incorrect for: ".request('username')
                ]);
            }
        } catch (\Throwable $th) {
            Log::error('Login error: '.$th->getMessage(),[$th]);
            return $this->serverErrorApiResponse([$th->getMessage()]);
        }
    }

    /**
   * Destroy an authenticated session.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\RedirectResponse
   */
  public function destroy(Request $request)
  {
    try {
        if ($request->user()) {
            $response = $this->userRepository->revokeUserTkn($request);
            if($response)
                return $this->okApiResponse([],'Logged out successfully');
            // failure to authenticate
            return $this->unauthorizedApiResponse([
                'User not authenticated'
            ],'Failed to logout');
            
        } else {
            return $this->unauthorizedApiResponse([
                'User not authenticated'
            ],'Failed to logout');
        }
    } catch (\Throwable $th) {
        Log::error('Logout error: '.$th->getMessage(),[$th]);
            return $this->serverErrorApiResponse([$th->getMessage()]);
    }
    
  }
}
