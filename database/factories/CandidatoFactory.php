<?php

namespace Database\Factories;

use App\Models\Candidato;
use App\Helper\StrHelper;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\V1\Candidato>
 */
class CandidatoFactory extends Factory
{
    protected $model = Candidato::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $created_by=DB::table('users')->inRandomOrder()->first();
        $owner=DB::table('users')->inRandomOrder()->first();
        if($created_by && $owner){
            $name = fake()->name();
            return [
                'name' => fake()->name(),
                'source' => fake()->name(),
                'owner' => $owner->id,
                'created_at'=>now(),
                'created_by' => $created_by->id,
            ];
        }
    }
}
