<?php

namespace App\Http\Controllers;

class Champion
{
    const CRIT = 1.4;

    public $name = null;
    public $dmgPhysical = 0;
    public $dmgMagic = 0;
    public $armorPhysical = 0;
    public $armorMagic = 0;
    public $health = 0;
    public $currentMana = 0;
    public $maxMana = 0;
    public $speed = 0;
    public $crit = 0;
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
    public $time = 1;
    public $items = [];

    public function __construct($champion)
    {
        $this->name = $champion->name;
        $this->dmgPhysical = $champion->dmg_physical;
        $this->dmgMagic = $champion->dmg_magic;
        $this->armorPhysical = $champion->armor_physical;
        $this->armorMagic = $champion->armor_magic;
        $this->health = $champion->health;
        $this->maxMana = $champion->mana;
        $this->speed = $champion->speed;
        $this->crit = $champion->crit;
        $this->perDmgPhysical = $champion->per_dmg_physical;
        $this->perDmgMagic = $champion->per_dmg_magic;
        $this->perArmorPhysical = $champion->per_armor_physical;
        $this->perArmorMagic = $champion->per_armor_magic;
        $this->perHealth = $champion->per_health;
        $this->perMana = $champion->per_mana;
        $this->perSpeed = $champion->per_speed;
        $this->perCrit = $champion->per_crit;
    }

    public function initItem($items)
    {
        $this->items = $items;
        foreach ($items as $item) {
            $this->dmgPhysical += $item->dmgPhysical;
            $this->dmgMagic += $item->dmgMagic;
            $this->armorPhysical += $item->armorPhysical;
            $this->armorMagic += $item->armorMagic;
            $this->health += $item->health;
            $this->currentMana += $item->mana;
            $this->speed += $item->speed;
            $this->crit += $item->crit;
            $this->perDmgPhysical += $item->perDmgPhysical;
            $this->perDmgMagic += $item->perDmgMagic;
            $this->perArmorPhysical += $item->perArmorPhysical;
            $this->perArmorMagic += $item->perArmorMagic;
            $this->perHealth += $item->perHealth;
            $this->perMana += $item->perMana;
            $this->perSpeed += $item->perSpeed;
            $this->perCrit += $item->perCrit;
        }

        return $this;
    }

    public function attack($i)
    {
        /** @var Item $item */
        foreach ($this->items as $item) {
            switch ($item->name) {
                case 'quyền trượng thiên thần':
                    $item->quyenTruongThienThan($i, $this);
                    break;
                case 'găng bảo thạch':
                    $item->gangBaoThach($i, $this);
                    break;
                case 'mũ phú thủy':
                    $item->muPhuThuy($i, $this);
                    break;
            }
        }

        $speed = round(1 / $this->speed, 1) * 10;
        if ($this->time % $speed == 0) {
            $damage = $this->dmgPhysical;
            $damage = $this->isCrit() ? $this->crit($damage) : $damage;

            /** @var Item $item */
            foreach ($this->items as $item) {
                switch ($item->name) {
                    case 'mũ phú thủy':
                        $damage = $item->muPhuThuyKhuechDaiSatThuong($damage);
                        break;
                }
            }

            $damage = round($damage);
            $this->damages[$i] = $damage;
            $this->totalDamage += $damage;

            $this->currentMana += 10;
        }

        $this->time++;
    }

    public function ulti($i)
    {
        $damageUlti = 0;
        switch ($this->name) {
            case 'Anivia':
                $damageUlti = $this->ultiAnivia($i);
                break;
            default:
                break;
        }

        /** @var Item $item */
        foreach ($this->items as $item) {
            switch ($item->name) {
                case 'mũ phú thủy':
                    $damageUlti = $item->muPhuThuyKhuechDaiSatThuong($damageUlti);
                    break;
            }
        }

        $damageUlti = round($damageUlti);
        $this->damages[] = $damageUlti;
        $this->currentMana -= $this->maxMana;

        $this->totalDamage += $damageUlti;
        $this->countUlti++;
        $this->time = 1;
    }

    private function ultiAnivia($i)
    {
        $damageUlti = 325 * (1 + $this->perDmgMagic);
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
}
