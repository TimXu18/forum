<?php

namespace App\Inspections;

class Spam
{
    protected $inspections = [
        InvalidKeywords::class,
        KeyHeldDown::class
    ];

    public function detect($body)
    {
        foreach($this->inspections as $inspection){
            // Use laravel service container initialize $inspection class instance
            app($inspection)->detect($body);
        }
        return false;
    }

}