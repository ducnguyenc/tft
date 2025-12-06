<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Champion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class HomeController extends Controller
{
    const EACH_SECOND = 'each_second';
    const EACH_ATTACK = 'each_attack';
    const EACH_ULTI = 'each_ulti';

    public ?Champion $champion = null;
    public array $itemsChampion = [];
    public ?Champion $enemy = null;
    public array $itemsEnemy = [];

    public $duration = 12;
    public $times = 100;

    public function index(Request $request)
    {
        $items = [
            'quyenTruongThienThan' => 'quyenTruongThienThan',
            'blue' => 'blue',
            'cuongDaoGuinsoo' => 'cuongDaoGuinsoo',
            'muPhuThuy' => 'muPhuThuy',
            'kiemShojin' => 'kiemShojin',
            'nanhNashor' => 'nanhNashor',
        ];

        try {
            $championName = $request->input('champion');
            $itemNamesChampion = $request->input('itemsChampion', []);
            $enemyName = $request->input('enemy');
            $itemNamesEnemy = $request->input('itemsEnemy', []);

            for ($i = 0; $i < $this->times; $i++) {
                $this->itemsChampion = $this->initItems($itemNamesChampion);
                $this->champion = $this->initChampion($championName)->initItem($this->itemsChampion);
                // $this->enemy = $this->initChampion($enemyName)->initItem($itemNamesEnemy);
                $this->enemy = new Champion((object)[
                    'name' => 'enemy',
                    'health' => 4000,
                    'armor_physical' => 105,
                    'armor_magic' => 105,
                ]);

                $this->battle();

                $resTimes[] = [
                    'time' => $this->champion->timeOld,
                    'damage' => $this->champion->totalDamage,
                    'mana' => $this->champion->currentMana,
                    'countUlti' => $this->champion->countUlti,
                    'countCrit' => $this->champion->countCrit,
                    'damages' => $this->champion->damages,
                ];
            }

            return response()->json([
                'times' => $this->times,
                'time' => array_sum(array_column($resTimes, 'time')) / $this->times,
                'damage' => round(array_sum(array_column($resTimes, 'damage')) / $this->times),
                'mana' => array_sum(array_column($resTimes, 'mana')) / $this->times,
                'countUlti' => array_sum(array_column($resTimes, 'countUlti')) / $this->times,
                'countCrit' => array_sum(array_column($resTimes, 'countCrit')) / $this->times,
                'damages' => array_column($resTimes, 'damages'),
            ]);
        } catch (\Throwable $th) {
            dd($th);
        }
    }

    private function initChampion($championName)
    {
        $champion = DB::table('champions')->where('name', $championName)->first();
        if (!$champion) {
            throw new \Exception('Champion not found');
        }

        return new Champion($champion);
    }

    private function initItems($itemNames)
    {
        $items = [];
        foreach ($itemNames as $itemName) {
            $items[] = new Item($itemName);
        }

        return $items;
    }

    private function battle()
    {
        $duration = $this->duration * 10;
        for ($time = 1; $time < $duration; $time++) {
            $this->useItem($time, self::EACH_SECOND);

            $this->attack($time);
            if ($this->champion->currentMana >= $this->champion->maxMana) {
                $this->ulti($time);
            }
        }
    }

    public function attack($time)
    {
        $speed = round(1 / $this->champion->speed, 1) * 10;
        if ($this->champion->timeAttack % $speed == 0) {
            $this->useItem($time, self::EACH_ATTACK);

            $damage = $this->champion->dmgBasic;
            $damage = $this->champion->isCrit() ? $this->champion->crit($damage) : $damage;

            $damage = $this->champion->armorEnemy($this->enemy, $damage);

            $damage = round($damage);
            $this->champion->damages[$time] = $damage;
            $this->champion->totalDamage += $damage;

            $this->champion->currentMana += 10;
        }

        $this->champion->timeAttack++;
    }

    public function ulti($time)
    {
        $this->useItem($time, self::EACH_ULTI);

        $damageUlti = 0;
        switch ($this->champion->name) {
            case 'Anivia':
                $damageUlti = $this->champion->ultiAnivia($time);
                break;
            default:
                break;
        }

        $damageUlti = $this->champion->armorEnemy($this->enemy, $damageUlti);

        $damageUlti = round($damageUlti);
        $this->champion->damages[] = $damageUlti;
        $this->champion->currentMana -= $this->champion->maxMana;

        $this->champion->totalDamage += $damageUlti;
        $this->champion->countUlti++;
        $this->champion->timeAttack = 1;
    }

    private function useItem($time, $type)
    {
        /** @var Item $item */
        foreach ($this->champion->items as $item) {
            $item->{Str::camel(Str::ascii($item->name))}($this->champion, $time, $type);
        }

        /** @var Item $item */
        foreach ($this->enemy->items as $item) {
            $item->{Str::camel(Str::ascii($item->name))}($this->enemy, $time, $type);
        }
    }
}
