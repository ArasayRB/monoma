<?php

namespace App\Interface\V1\Repositories;

interface IRUser
{
    public function all();
    public function find($id);
    public function create(array $data);
    public function update($id, array $data);
    public function delete($id);
    public function login(array $data);
}