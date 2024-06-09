<?php

namespace App\Helper;

use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class StrHelper
{
    function generateRandomStringBetween($string1, $string2)
    {
        $roles = [$string1,$string2];
        $randomIndex = array_rand($roles);
        $randomWord = $roles[$randomIndex];
        return $randomWord;
    }
}