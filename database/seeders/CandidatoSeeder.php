<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Candidato;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class CandidatoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         // Verify if exists 2 users
        $created_by = DB::table('users')->first();
        $owner = DB::table('users')->find(2);
        if($created_by && $owner){
            DB::table('candidatos')->insert([
                'name' => "Mi candidato",
                'source' => 'Fotocasa',
                'owner' => $owner->id,
                'created_at'=>"2020-09-01 16:16:16",
                'created_by' => $created_by->id,
            ]);
        }else{
            $this->command->info('No users found. Please seed the users table first.');
        }
        Candidato::factory(10)->create();
    }
}
