<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Champion;
use App\Http\Controllers\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public ?Champion $champion = null;
    public array $itemsChampion = [];
    public ?Champion $enemy = null;
    public array $itemsEnemy = [];

    public $time = 0;
    public $duration = 12;
    public $times = 100;

    public function index(Request $request)
    {
        try {
            $championName = $request->input('champion');
            $itemNamesChampion = $request->input('itemsChampion', []);
            $enemyName = $request->input('enemy');
            $itemNamesEnemy = $request->input('itemsEnemy', []);

            for ($i = 0; $i < $this->times; $i++) {
                $this->itemsChampion = $this->initItem($itemNamesChampion);
                $this->champion = $this->initChampion($championName)->initItem($this->itemsChampion);
                $this->itemsEnemy = $this->initItem($itemNamesEnemy);
                $this->enemy = $this->initChampion($enemyName)->initItem($this->itemsEnemy);

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

    private function initItem($itemNames)
    {
        $items = [];
        foreach ($itemNames as $item) {
            $item = DB::table('items')->where('name', $item)->first();
            $items[] = new Item($item);
        }

        return $items;
    }

    private function battle()
    {
        $duration = $this->duration * 10;
        for ($i = 1; $i < $duration; $i++) {
            $this->champion->attack($i);
            if ($this->champion->currentMana >= $this->champion->maxMana) {
                $this->champion->ulti($i);
            }
        }
    }
}
