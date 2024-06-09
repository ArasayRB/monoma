<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Passport\Token;
use Symfony\Component\HttpFoundation\Response;

class CheckTokenExpiry
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $user = $request->user();
        if ($user) {
            $token = $user->token();
            if ($token && $token->expires_at && $token->expires_at->isPast()) {
                return response()->json([
                    'meta'=>[
                        'success'=>false,
                        'errors'=>[
                            'Token  expired.'
                        ]
                    ]
                ], 401);
            }
        }

        return $next($request);
    }
}
