<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use App\Models\User;
use App\Repositories\V1\UserRepository;
use Illuminate\Support\Facades\Log;
use Laravel\Passport\Client;
use Laravel\Passport\Passport;
use Tests\TestCase;

class AuthenticationControllerTest extends TestCase
{
    //use RefreshDatabase;

    

    /** @test */
    public function it_requires_username_and_password()
    {
        $response = $this->post('/api/v1/login', []);

        Log::info('response',[$response]);
        $response->assertStatus(422);
    }

    /** @test */
    public function it_returns_unauthorized_if_credentials_are_invalid()
    {
        $response = $this->postJson('/api/v1/login', [
            'username' => 'tester',
            'password' => 'wrong-password'
        ]);

        $response->assertStatus(401);
    }

    /** @test */
    public function it_returns_a_token_if_credentials_are_valid()
    {
        // Make a request to API with token as Bearer authentication
        $response = $this->postJson('/api/v1/login', [
            'username' => 'tester',
            'password' => 'PASSWORD'
        ]);
        Log::info('token',[$response]);
        $response->assertStatus(200);
    }
}
