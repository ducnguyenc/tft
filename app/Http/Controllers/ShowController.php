<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ShowController extends Controller
{
    public function index()
    {
        $nameList = [];
        $matchs = DB::table('matchs')->get();
        foreach ($matchs->pluck('name') as $names) {
            foreach (json_decode($names, true) as $name) {
                if (isset($nameList[$name])) {
                    $nameList[$name]++;
                } else {
                    $nameList[$name] = 1;
                }
            }
        }

        $nameList = collect($nameList)->sortDesc();

        $matchs = $matchs->map(function ($match) {
            $matchs = [];
            $matchs['id'] = $match->id;
            $matchs['name'] = json_decode($match->name, true);
            $matchs['he'] = json_decode($match->he, true);
            $matchs['kick_he'] = json_decode($match->kick_he, true);
            $matchs['bac'] = json_decode($match->bac, true);
            $matchs['bac_he_ko_he'] = json_decode($match->bac_he_ko_he, true);
            $matchs['vang'] = json_decode($match->vang, true);
            $matchs['price'] = $match->price;
            $matchs['price1'] = $match->price1;
            return $matchs;
        });
        return view('show', compact('matchs', 'nameList'));
    }
}
