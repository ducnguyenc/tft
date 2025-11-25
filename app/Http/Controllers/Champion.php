<?php

namespace App\Http\Controllers;

class Champion
{
    const CRIT = 1.4;

    public $name = null;
    public $dmgBasic = 0;
    public $dmgUltiPhysical = 0;
    public $dmgPhysical = 0;
    public $dmgUltiMagic = 0;
    public $dmgMagic = 0;
    public $armorPhysical = 0;
    public $armorMagic = 0;
    public $startTimeArmor = null;
    public $armor = 0;
    public $currentHealth = 0;
    public $health = 0;
    public $currentMana = 0;
    public $maxMana = 0;
    public $speed = 0;
    public $crit = 0;
    public $suckBlood = 0;
    public $perDmgPhysical = 0;
    public $perDmgMagic = 0;
    public $perArmorPhysical = 0;
    public $perArmorMagic = 0;
    public $perHealth = 0;
    public $perMana = 0;
    public $perSpeed = 0;
    public $perCrit = 0;
    public $countUlti = 0;
    public $countCrit = 0;
    public $totalDamage = 0;
    public $timeOld = 0;
    public $damages = [];
    public $timeAttack = 1;
    public $items = [];
    public $mocDietTimes = 0;
    public $startTimeGayQuaKho = null;
    public $matNaTimes = 0;

    public function __construct($champion)
    {
        $this->name = $champion->name ?? '';
        $this->dmgBasic = $champion->dmg_basic ?? 0;
        $this->dmgUltiPhysical = $champion->dmg_ulti_physical ?? 0;
        $this->dmgUltiMagic = $champion->dmg_ulti_magic ?? 0;
        $this->armorPhysical = $champion->armor_physical ?? 0;
        $this->armorMagic = $champion->armor_magic ?? 0;
        $this->health = $champion->health ?? 0;
        $this->maxMana = $champion->mana ?? 0;
        $this->speed = $champion->speed ?? 0;
        $this->crit = $champion->crit ?? 0;
        $this->suckBlood = $champion->suck_blood ?? 0;
        $this->perDmgPhysical = $champion->per_dmg_physical ?? 0;
        $this->perDmgMagic = $champion->per_dmg_magic ?? 0;
        $this->perArmorPhysical = $champion->per_armor_physical ?? 0;
        $this->perArmorMagic = $champion->per_armor_magic ?? 0;
        $this->perHealth = $champion->per_health ?? 0;
        $this->perMana = $champion->per_mana ?? 0;
        $this->perSpeed = $champion->per_speed ?? 0;
        $this->perCrit = $champion->per_crit ?? 0;
    }

    public function initItem($items)
    {
        $this->items = $items;
        foreach ($items as $item) {
            $this->perDmgMagic += $item->perDmgMagic;
        }

        return $this;
    }

    public function ultiAnivia($time)
    {
        $damageUlti = $this->dmgUltiMagic * (1 + $this->perDmgMagic);
        $damageUlti = $this->isCrit() ? $this->crit($damageUlti) : $damageUlti;

        return $damageUlti;
    }

    public function isCrit()
    {
        return rand(0, 100) <= ($this->crit * 100);
    }

    public function crit($damage)
    {
        $damage *= self::CRIT;
        $this->countCrit++;

        return $damage;
    }

    public function armorEnemy($enemy, $damage)
    {
        $armor = $enemy->armorMagic;
        $damage = $damage * (1 - $armor / (100 + $armor));

        return $damage;
    }
}
