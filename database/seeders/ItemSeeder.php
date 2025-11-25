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
        DB::table('items')->insert([
            [
                'name' => 'cuồng đao guinsoo',
                'per_dmg_magic' => 0.1,
                'per_speed' => 0.1,
            ],
            [
                'name' => 'huyết kiếm',
                'per_dmg_physical' => 0.15,
                'per_dmg_magic' => 0.15,
                'armor_magic' => 20,
                'suck_blood' => 0.2,
            ],
            [
                'name' => 'găng bảo thạch',
                'per_dmg_magic' => 0.35,
                'crit' => 0.35,
            ],
            [
                'name' => 'bàn tay công lý',
                'crit' => 0.2,
            ],
            [
                'name' => 'kiệm shojin',
                'per_dmg_physical' => 0.15,
                'per_dmg_magic' => 0.15,
            ],
            [
                'name' => 'giáp máu',
                'health' => 500,
            ],
            [
                'name' => 'thú tượng',
                'armor_physical' => 25,
                'armor_magic' => 25,
                'health' => 100,
            ],
            [
                'name' => 'giáp tâm linh',
                'health' => 300,
                'per_health' => 0.1,
            ],
            [
                'name' => 'diệt khổng lồ',
                'per_dmg_physical' => 0.15,
                'per_dmg_magic' => 0.15,
                'per_speed' => 0.15,
            ],
            [
                'name' => 'mặt nạ',
                'per_speed' => 0.1,
                'armor_physical' => 20,
            ],
            [
                'name' => 'giáp lửa',
                'armor_physical' => 20,
                'health' => 150,
            ],
            [
                'name' => 'vô cực',
                'per_dmg_physical' => 0.35,
                'crit' => 0.35,
            ],
            [
                'name' => 'găng',
                'per_dmg_physical' => 0.4,
                'health' => 300,
            ],
            [
                'name' => 'blue',
                'per_dmg_physical' => 0.15,
                'per_dmg_magic' => 0.15,
            ],
            [
                'name' => 'gậy quá khổ',
                'per_dmg_magic' => 0.35,
                'speed' => 0.15,
            ],
            [
                'name' => 'móc diệt',
                'speed' => 0.1,
                'per_dmg_physical' => 0.1,
                'armor_magic' => 20,
            ],
            [
                'name' => 'quyền trượng thiên thần',
                'per_dmg_magic' => 0.3,
            ],
            [
                'name' => 'mũ phú thủy',
                'per_dmg_magic' => 0.5,
            ],
            [
                'name' => 'mu thích nghĩ',
                'armor_magic' => 20,
            ],
            [
                'name' => 'nanh nashor',
                'per_dmg_magic' => 0.15,
                'speed' => 0.1,
                'crit' => 0.2,
                'health' => 150,
            ],
            [
                'name' => 'giáp băng',
                'armor_physical' => 25,
                'armor_magic' => 25,
                'current_mana' => 20,
            ],
            [
                'name' => 'giáp gai',
                'armor_physical' => 65,
                'health' => 1.09,
            ],
            [
                'name' => 'tim băng',
                'armor_physical' => 20,
                'crit' => 20,
                'health' => 250,
            ],
            [
                'name' => 'vuốt rồng',
                'armor_magic' => 75,
            ],
            [
                'name' => 'quỷ thư morello',
                'health' => 150,
                'per_dmg_magic' => 0.2,
            ],
            [
                'name' => 'giáp vai',
                'health' => 250,
                'armor_magic' => 20,
            ],
            [
                'name' => 'kiếm hextech',
                'per_dmg_physical' => 0.2,
                'per_dmg_magic' => 0.2,
                'crit' => 0.15,
            ],
            [
                'name' => 'giảm kháng phép',
                'per_dmg_magic' => 0.15,
                'health' => 250,
                'armor_magic' => 35,
            ],
            [
                'name' => 'bùa đỏ',
                'per_speed' => 0.45,
            ],
            [
                'name' => 'cung xanh',
                'per_dmg_physical' => 0.15,
                'per_speed' => 0.2,
                'crit' => 0.20,
            ],
            [
                'name' => 'deathblade',
                'per_dmg_physical' => 0.55,
            ],
        ]);
    }
}
