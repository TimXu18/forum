<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use App\Inspections\Spam;


class SpamTest extends TestCase
{
    use DatabaseMigrations;

    /**
     * @test
     * @expectedException Exception
     */
    public function it_checks_for_invalid_keywords()
    {
        $spam = new Spam();

        $this->assertFalse($spam->detect('Innocent reply here'));

        $spam->detect('yahoo customer support');
    }


    /**
     * @test
     * @expectedException Exception
     */
    public function it_check_for_invalid_key_being_held_down()
    {
        $spam = new Spam();

        $spam->detect('hello aaaaaaaa');
    }
}
