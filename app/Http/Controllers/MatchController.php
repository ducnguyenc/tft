<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class MatchController extends Controller
{

    public function index()
    {
        set_time_limit(0);

        try {
            $champions = DB::table('champion_hes')->whereNotIn('name', ['Baron Nashor', 'Aurelion Sol', 'Ryze', 'Zaahen'])
                // ->whereIn('name', ['Ornn', 'Shyvana', 'Tahm Kench', 'Ngộ Không', 'Nautilus', 'Lucian & Senna', 'Miss Fortune'])
                ->where('price', '>=', 3)
                ->get();
            $heDB = DB::table('hes')->get();

            $championList = [];
            $matchAlls = [];
            $i = 0;
            // 1
            foreach ($champions as $champion1) {
                if (!$this->checkPrice($champion1, 5)) {
                    break;
                }
                $champion2s = collect($champions)->where('id', '>', $champion1->id)->values();

                //2
                foreach ($champion2s as $champion2) {
                    if (!$this->checkPrice($champion2, 5)) {
                        continue;
                    }
                    $champion3s = collect($champions)->where('id', '>', $champion2->id)->values();

                    //3
                    foreach ($champion3s as $champion3) {
                        if (!$this->checkPrice($champion3, 5)) {
                            continue;
                        }
                        $champion4s = collect($champions)->where('id', '>', $champion3->id)->values();

                        //4
                        foreach ($champion4s as $champion4) {
                            if (!$this->checkPrice($champion4, 5)) {
                                continue;
                            }

                            Log::info($i . ' - ' . $champion1->name . ' - ' . $champion2->name . ' - ' . $champion3->name . ' - ' . $champion4->name);
                            $champion5s = collect($champions)->where('id', '>', $champion4->id)->values();

                            //5
                            foreach ($champion5s as $champion5) {
                                if (!$this->checkPriceE($champion5, 4)) {
                                    continue;
                                }
                                $champion6s = collect($champions)->where('id', '>', $champion5->id)->values();

                                //6
                                foreach ($champion6s as $champion6) {
                                    if (!$this->checkPriceE($champion6, 4)) {
                                        continue;
                                    }
                                    $champion7s = collect($champions)->where('id', '>', $champion6->id)->values();

                                    //7
                                    foreach ($champion7s as $champion7) {
                                        $i++;
                                        if (!$this->checkPriceE($champion7, price: 3)) {
                                            continue;
                                        }
                                        // $champion8s = collect($champions)->where('id', '>', $champion7->id)->values();

                                        // //8
                                        // foreach ($champion8s as $champion8) {
                                        //     $champion9s = collect($champions)->where('id', '>', $champion8->id)->values();

                                        //     //9
                                        //     foreach ($champion9s as $champion9) {
                                        // $champion10s = collect($champions)->where('id', '>', $champion9->id)->values();

                                        // //10
                                        // foreach ($champion10s as $champion10) {
                                        $championList = [$champion1, $champion2, $champion3, $champion4, $champion5, $champion6, $champion7];
                                        $matchs = $this->getMatchs($championList);

                                        $isMatch = $this->matchAll($matchs, $heDB);
                                        if ($isMatch) {
                                            Log::info('done: ' . $i++ . ' - ' . $champion1->name . ' - ' . $champion2->name . ' - ' . $champion3->name . ' - ' . $champion4->name . ' - ' . $champion5->name . ' - ' . $champion6->name . ' - ' . $champion7->name);
                                            // luu db
                                        }

                                        array_pop($championList);
                                        $matchs = [];
                                        // }
                                        // array_pop($championList);
                                        //     }
                                        //     array_pop($championList);
                                        // }
                                        // array_pop($championList);
                                    }
                                    array_pop($championList);
                                }
                                array_pop($championList);
                            }
                            array_pop($championList);
                        }
                        array_pop($championList);
                    }
                    array_pop($championList);
                }
                array_pop($championList);
            }
        } catch (\Throwable $th) {
            dd($th);
        }
    }

    public function getMatchs($championList)
    {
        $matchs = [
            'original' => $championList,
            'name' => [],
            'he' => [],
            'kick_he' => [],
            'bac' => [
                'null' => 0,
                'dong' => 0,
                'bac' => 0,
                'vang' => 0,
                'kimcuong' => 0,
            ],
            'bac_he_ko_he' => [
                'he' => 0,
                'ko_he' => 0,
            ],
            'vang' => [],
            'price' => 0,
            'price1' => 0,
        ];
        $matchs['price'] = collect($championList)->sum(function ($champion) {
            return $champion->price * 3;
        });

        $championList = collect($championList)->unique('name')->values()->toArray();
        foreach ($championList as $champion) {
            if ($champion->he1) {
                if (isset($matchs['he'][$champion->he1])) {
                    $matchs['he'][$champion->he1]++;
                } else {
                    $matchs['he'][$champion->he1] = 1;
                }
            }
            if ($champion->he2) {
                if (isset($matchs['he'][$champion->he2])) {
                    $matchs['he'][$champion->he2]++;
                } else {
                    $matchs['he'][$champion->he2] = 1;
                }
            }
            if ($champion->he3) {
                if (isset($matchs['he'][$champion->he3])) {
                    $matchs['he'][$champion->he3]++;
                } else {
                    $matchs['he'][$champion->he3] = 1;
                }
            }

            if (isset($matchs['vang'][$champion->price])) {
                $matchs['vang'][$champion->price]++;
            } else {
                $matchs['vang'][$champion->price] = 1;
            }

            $matchs['name'][] = $champion->name;
            $matchs['price1'] += $champion->price * 3;
        }

        foreach ($matchs['he'] as $he => $heCount) {
            $matchs['he'][$he] = [
                'name' => $he,
                'soluong' => $heCount,
                'bac' => 'null',
            ];
        }

        return $matchs;
    }

    public function matchAll(&$matchs, $heDB)
    {
        $kichHe = collect($matchs['he'])->filter(function ($match) {
            return $match['soluong'] > 1;
        });

        if ($kichHe->count() == 0) {
            return false;
        }

        $heTmp = [];
        foreach ($matchs['he'] as $he => $heArray) {
            $heCount = $heArray['soluong'];
            $heTmp['name'] = $he;
            $heDBFirst = $heDB->where('name', $he)->first();

            if (!$heDBFirst) {
                $heTmp['soluong'] = $heCount . '/0';
                $heTmp['bac'] = 'null';

                $matchs['he'][$he] = $heTmp;
                $matchs['bac'][$heTmp['bac']]++;
                $heTmp = [];
                continue;
            }

            if (isset($heDBFirst->dong) && $heCount <= $heDBFirst->dong) {
                $heTmp['soluong'] = $heCount . '/' . $heDBFirst->dong;
                $heTmp['bac'] = $heCount == $heDBFirst->dong ? 'dong' : 'null';
            } elseif (isset($heDBFirst->bac) && $heCount <= $heDBFirst->bac) {
                $heTmp['soluong'] = $heCount . '/' . $heDBFirst->bac;
                $heTmp['bac'] = $heCount == $heDBFirst->bac ? 'bac' : 'dong';
            } elseif (isset($heDBFirst->vang) && $heCount <= $heDBFirst->vang) {
                $heTmp['soluong'] = $heCount . '/' . $heDBFirst->vang;
                $heTmp['bac'] = $heCount == $heDBFirst->vang ? 'vang' : 'bac';
            } elseif (isset($heDBFirst->kimcuong) && $heCount <= $heDBFirst->kimcuong) {
                $heTmp['soluong'] = $heCount . '/' . $heDBFirst->kimcuong;
                $heTmp['bac'] = $heCount == $heDBFirst->kimcuong ? 'kimcuong' : 'vang';
            } else {
                $heTmp['soluong'] = $heCount . '/' . max($heDBFirst->kimcuong ?? 0, $heDBFirst->vang ?? 0, $heDBFirst->bac ?? 0, $heDBFirst->dong ?? 0);
                $heTmp['bac'] = 'kimcuong';
            }

            $matchs['he'][$he] = $heTmp;
            $matchs['bac'][$heTmp['bac']]++;
            $heTmp = [];
        }

        $matchs['bac_he_ko_he']['he'] = array_sum($matchs['bac']) - ($matchs['bac']['null'] ?? 0);
        $matchs['bac_he_ko_he']['ko_he'] = count($matchs['he']) - $matchs['bac_he_ko_he']['he'];
        $matchs['bac_he_ko_he']['tong_he'] = count($matchs['he']);

        if ($matchs['bac_he_ko_he']['he'] < 1) {
            return false;
        }

        $matchs['kick_he'] = collect($matchs['he'])->where('bac', '!=', 'null')->values()->toArray();

        $a = collect($matchs['original'])->whereNotIn('he1', collect($matchs['kick_he'])->pluck('name'))
            ->whereNotIn('he2', collect($matchs['kick_he'])->pluck('name'))
            ->whereNotIn('he3', collect($matchs['kick_he'])->pluck('name'));

        if ($a->count() > 0) {
            return false;
        }

        if ((($matchs['vang'][7] ?? 0) + ($matchs['vang'][5] ?? 0)) < 2 && ($matchs['vang'][4] ?? 0) < 2) {
            return false;
        }

        return true;
    }

    public function checkPrice($champion, $price)
    {
        if ($champion->price >= $price) {
            return true;
        }

        return false;
    }

    public function checkPriceE($champion, $price)
    {
        if ($champion->price == $price) {
            return true;
        }

        return false;
    }
}
