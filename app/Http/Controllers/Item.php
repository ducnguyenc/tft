<?php

namespace App\Http\Controllers;

class Item
{
    public $name = null;
    public $perDmgMagic = 0;

    public function __construct($item) {}

    public function quyenTruongThienThan(?Champion &$champion = null, $time = null)
    {
        if ($time % 50 == 0) {
            $champion->perDmgMagic += 0.2;
        }

        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function muPhuThuyKhuechDaiSatThuong($damage)
    {
        return $damage * 1.1;
    }

    public function quyThuMorello(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function cuongDaoGuinsoo(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->speed *= 1.07;
        }
    }

    public function huyetKiem(?Champion &$champion = null, $time = null)
    {
        if ($champion->currentHealth / $champion->health <= 0.4 && !isset($champion->startTimeArmor)) {
            $champion->startTimeArmor = $time;
            $champion->armor = $champion->health * 0.25;
        }

        if ($champion->startTimeArmor !== null && $time - $champion->startTimeArmor >= 50) {
            $champion->armor = 0;
            $champion->startTimeArmor = -1;
        }
    }

    public function banTayCongLy(?Champion &$champion = null, $time = null)
    {
        if ($champion->currentHealth / $champion->health > 0.5) {
            // TODO
        } else {
            // TODO
        }
    }

    public function kiemShojin(?Champion &$champion = null, $time = null)
    {

        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }

        if ($time > 0) {
            $champion->currentMana += 5;
        }
    }

    public function giapTamLinh(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 2;
            $champion->currentHealth += (($champion->health * $champion->currentHealth) * 0.025);
        }
    }

    public function dietKhongLo(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function dietKhongLoKhuechDaiSatThuong($damage)
    {
        return $damage * 1.15 * 1.15;
    }

    public function giapLua(?Champion &$champion = null, $time = null)
    {
        if ($time % 20 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function giapLuaDamage($healthEnemy, $time)
    {
        if ($time % 20 == 0) {
            return $healthEnemy * 0.01;
        }
    }

    public function giapLuaGiamHoiMau($hps)
    {
        return $hps * (1 - 0.33);
    }

    public function voCuc(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function matNa(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }

        if ($champion->matNaTimes <= 25) {
            $champion->dmgPhysical += 0.04;
            $champion->dmgMagic += 0.04;
        }
    }

    public function gang(?Champion &$champion = null, $time = null)
    {
        if ($champion->currentHealth / $champion->health <= 0.6) {
            $champion->startTimeArmor = $time;
            $champion->armor = $champion->health * 0.5;
        }

        if ($champion->startTimeArmor !== null && $time - $champion->startTimeArmor >= 50) {
            $champion->armor = 0;
            $champion->startTimeArmor = -1;
        }
    }

    public function blue(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 5;
        }
    }

    public function mocDiet(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }

        if ($champion->mocDietTimes <= 15) {
            $champion->perDmgPhysical += 0.035;
            $champion->mocDietTimes++;
        }

        if ($champion->mocDietTimes = 15) {
            $champion->speed *= 0.3;
        }
    }

    public function gayQuaKho(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }

        // if ($champion->startTimeGayQuaKho === null) {
        //     $champion->armorMagic *= (1 + 0.3);
        //     $champion->startTimeGayQuaKho = $time;
        // }

        // if ($champion->startTimeGayQuaKho !== null && $time - $champion->startTimeGayQuaKho >= 50) {
        //     $champion->startTimeGayQuaKho = -1;
        // }
    }

    public function nanhNashor(?Champion &$champion = null, $time = null)
    {
        $champion->currentMana += 3;
    }

    public function muThichNghi(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 3;
        }
    }

    public function giapBang(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }

        if ($champion->currentHealth / $champion->health <= 0.4) {
            $champion->currentMana += 15;
            $champion->armor += $champion->health * 0.2;
        }
    }

    public function giapGai(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function giapGaiDamage($damage)
    {
        return $damage * (1 - 0.05);
    }

    public function timLon(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function timLonDamage(?Champion &$champion = null, $damage = null)
    {
        if ($champion->currentHealth / $champion->health <= 0.5) {
            return $damage * (1 - 0.1);
        }

        return $damage * (1 - 0.18);
    }

    public function vuotRauQua(?Champion &$champion = null, $time = null)
    {
        if ($time % 20 == 0) {
            $champion->currentHealth += ($champion->health * 0.02);
        }
    }

    public function kiemHextech(?Champion &$champion = null, $time = null)
    {
        if ($time % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function deathbladeKhuechDaiSatThuong($damage)
    {
        return $damage * (1 + 0.1);
    }
}
