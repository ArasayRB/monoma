<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Interface\V1\Repositories\IRUser;
use App\Repositories\V1\UserRepository;

class RepositoryServiceProvider extends ServiceProvider
{
    public function register()
    {
        $this->app->bind(IRUser::class, UserRepository::class);
    }
}