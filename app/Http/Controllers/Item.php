<?php

namespace App\Http\Controllers;

class Item
{
    public $name = null;
    public $dmgPhysical = 0;
    public $dmgMagic = 0;
    public $armorPhysical = 0;
    public $armorMagic = 0;
    public $health = 0;
    public $mana = 0;
    public $speed = 0;
    public $crit = 0;
    public $perDmgPhysical = 0;
    public $perDmgMagic = 0;
    public $perArmorPhysical = 0;
    public $perArmorMagic = 0;

    public function __construct($item)
    {
        $this->name = $item->name;
        $this->dmgPhysical = $item->dmg_physical;
        $this->dmgMagic = $item->dmg_magic;
        $this->armorPhysical = $item->armor_physical;
        $this->armorMagic = $item->armor_magic;
        $this->health = $item->health;
        $this->mana = $item->mana;
        $this->speed = $item->speed;
        $this->crit = $item->crit;
        $this->perDmgPhysical = $item->per_dmg_physical;
        $this->perDmgMagic = $item->per_dmg_magic;
        $this->perArmorPhysical = $item->per_armor_physical;
        $this->perArmorMagic = $item->per_armor_magic;
        $this->perHealth = $item->per_health;
        $this->perMana = $item->per_mana;
        $this->perSpeed = $item->per_speed;
        $this->perCrit = $item->per_crit;
    }

    public function quyenTruongThienThan($i, Champion &$champion)
    {
        // if ($i == 1) {
        //     $champion->perDmgMagic += 0.3;
        // }

        if ($i % 50 == 0) {
            $champion->perDmgMagic += 0.2;
        }

        if ($i % 10 == 0) {
            $champion->currentMana += 1;
        }
    }

    public function gangBaoThach($i, Champion &$champion)
    {
        // if ($i == 1) {
        //     $champion->perDmgMagic += 0.35;
        //     $champion->crit += 0.35;
        // }
    }

    public function muPhuThuy($i, Champion &$champion)
    {
        if ($i == 1) {
            $champion->perDmgMagic += 0.5;
        }
    }

    public function muPhuThuyKhuechDaiSatThuong($damage)
    {
        return $damage * 1.1;
    }

    public function quyThuMoreLlo($i, Champion &$champion)
    {
        if ($i == 1) {
            $champion->health += 150;
            $champion->perDmgMagic += 0.2;
        }

        if ($i % 10 == 0) {
            $champion->currentMana += 1;
        }
    }
}
