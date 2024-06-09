<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Laravel\Passport\Http\Middleware\CheckClientCredentials;

class AuthenticateWithPassport
{
    protected $checkClientCredentials;

    public function __construct(CheckClientCredentials $checkClientCredentials)
    {
        $this->checkClientCredentials = $checkClientCredentials;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Check client credentials first
        $clientCredentialsCheck = $this->checkClientCredentials->handle($request, function () {
            // This is a no-op for CheckClientCredentials middleware
        });

        if ($clientCredentialsCheck !== true) {
            return $clientCredentialsCheck;
        }

        if (Auth::guard('api')->check()) {
            return $next($request);
        }
        
        return response()->json([
            'meta' => [
                'success' => false,
                'errors' => ['User not authenticated'],
                'message' => 'Unauthorized'
            ]
        ], 401);
    }
}
