<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'username' => 'tester',
            'name' => 'tester',
            'email' => 'tester@example.com',
            'last_login'=>'2020-09-01 16:16:16',
            'is_active'=>true,
            'password' => Hash::make('PASSWORD'),
            'role'=>'agent',
            'remember_token' => Str::random(10),
        ]);

        DB::table('users')->insert([
            'username' => 'manager',
            'name' => 'manager',
            'email' => 'manager@example.com',
            'last_login'=>'2020-09-01 16:16:16',
            'is_active'=>true,
            'password' => Hash::make('MANAGER'),
            'role'=>'manager',
            'remember_token' => Str::random(10),
        ]);

        User::factory(10)->create();
    }
}
