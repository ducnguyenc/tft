<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ChampionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('champions')->insert([
            [
                'name' => 'Anivia',
                'dmg_basic' => 30,
                'dmg_ulti_magic' => 325,
                'speed' => 0.7,
                'crit' => 0.25,
                'mana' => 40,
            ],
        ]);
    }
}
