<?php

namespace App\Interface\V1\Repositories;

interface IRCandidato
{
    public function all(array $filters=[]);
    public function find($id);
    public function create(array $data);
}