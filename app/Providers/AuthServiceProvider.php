<?php

namespace App\Providers;

// use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        //
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        $this->registerPolicies();

        Passport::ignoreRoutes();

        // Configura la duración del token de acceso
        Passport::tokensExpireIn(now()->addDays(1));

        // Opcional: Configura la duración del token de actualización
        Passport::refreshTokensExpireIn(now()->addDays(30));

        // Opcional: Configura la duración del token personal
        Passport::personalAccessTokensExpireIn(now()->addDays(1));
    }
}
