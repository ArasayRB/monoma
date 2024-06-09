<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;
use App\Models\Candidato;
use App\Repositories\V1\CandidatoRepository;
use Illuminate\Support\Facades\Cache;

class CandidatoControllerTest extends TestCase
{
    //use RefreshDatabase;

    public function test_index_method_returns_candidatos_for_manager()
    {
        // Crear un usuario con el rol de "manager"
        $manager = User::find(42);

        // Actuar como el usuario manager
        $this->actingAs($manager);
        
        $tokenData = $manager->createToken('appToken');
        $user_token = $tokenData->accessToken;

        // Simular el resultado de la consulta al repositorio de candidatos para un usuario manager
        Cache::shouldReceive('remember')->with('candidatos_index_manager', 60, \Closure::class)->once()->andReturn([]);

        // Hacer una solicitud GET a la ruta index del controlador
        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $user_token,
        ])->get('/api/v1/leads');

        // Verificar que la solicitud fue exitosa (código de estado 200)
        $response->assertStatus(200);
    }

    public function test_index_method_returns_candidatos_for_non_manager_user()
    {
        // Crear un usuario que no sea manager
        $user = User::find(31);

        // Actuar como el usuario no manager
        $this->actingAs($user);
        
        $tokenData = $user->createToken('appToken');
        $user_token = $tokenData->accessToken;

        // Simular el resultado de la consulta al repositorio de candidatos para un usuario no manager
        Cache::shouldReceive('remember')->with('candidatos_index_' . $user->id, 60, \Closure::class)->once()->andReturn([]);

        // Hacer una solicitud GET a la ruta index del controlador
        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $user_token,
        ])->get('/api/v1/leads');

        // Verificar que la solicitud fue exitosa (código de estado 200)
        $response->assertStatus(200);
    }

    public function test_store_method_creates_new_candidato()
    {
        // Crear un usuario para la prueba
        $user = User::find(42);

        // Actuar como el usuario
        $this->actingAs($user);
        $tokenData = $user->createToken('appToken');
        $user_token = $tokenData->accessToken;

        // Crear datos de prueba para el candidato
        $data = [
            'name' => 'Juan',
            'source' => 'Panda',
            'owner' => 32,
            'created_by' => $user->id,
            // Agregar otros datos necesarios para crear un candidato
        ];

        // Hacer una solicitud POST a la ruta store del controlador
        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $user_token,
        ])->post('/api/v1/lead', $data);

        // Verificar que la solicitud fue exitosa (código de estado 201)
        $response->assertStatus(201);
    }

    public function test_show_method_returns_candidato_by_id()
    {
        // Crear un usuario para la prueba
       $user = User::find(42);

       // Actuar como el usuario
       $this->actingAs($user);
       $tokenData = $user->createToken('appToken');
       $user_token = $tokenData->accessToken;

        // Hacer una solicitud GET a la ruta show del controlador
        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $user_token,
        ])->get('/api/v1/lead/31');

        // Verificar que la solicitud fue exitosa (código de estado 200)
        $response->assertStatus(200);
    }
}