<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MatchController extends Controller
{
    public function index()
    {
        $champions = DB::table('champion_hes')->where('name', '!=', 'Baron Nashor')->get();

        $matchAlls = [];
        $matchs = [
            'name' => [],
            'he' => [],
            'price' => [],
        ];
        // 1
        foreach ($champions as $champion1) {
            $this->sumMatchs($champion1, $matchs);

            //2
            foreach ($champions as $champion2) {
                $this->sumMatchs($champion2, $matchs);

                //3
                foreach ($champions as $champion3) {
                    $this->sumMatchs($champion3, $matchs);

                    //4
                    foreach ($champions as $champion4) {
                        $this->sumMatchs($champion4, $matchs);

                        //5
                        foreach ($champions as $champion5) {
                            $this->sumMatchs($champion5, $matchs);

                            //6
                            foreach ($champions as $champion6) {
                                $this->sumMatchs($champion6, $matchs);

                                //7
                                foreach ($champions as $champion7) {
                                    $this->sumMatchs($champion7, $matchs);

                                    //8
                                    foreach ($champions as $champion8) {
                                        $this->sumMatchs($champion8, $matchs);

                                        //9
                                        foreach ($champions as $champion9) {
                                            $this->sumMatchs($champion9, $matchs);

                                            //10
                                            foreach ($champions as $champion10) {
                                                $this->sumMatchs($champion10, $matchs);

                                                $matchs['name'] = collect($matchs['name'])->unique()->toArray();
                                                $matchs['price'] = collect($matchs['price'])->sum();
                                                $matchAlls[] = $matchs;
                                                $matchs = [];


                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        dd(collect($matchAlls)->take(10));
    }

    public function sumMatchs($champion, &$matchs)
    {
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

        $matchs['name'][] = $champion->name;
        $matchs['price'][] = $champion->price * 3;
    }

    public function matchAll(&$matchs, &$matchAlls)
    {
        $matchs['name'] = collect($matchs['name'])->unique()->toArray();
        $matchs['price'] = collect($matchs['price'])->sum();
        $matchAlls[] = $matchs;
        $matchs = [];
    }
}
