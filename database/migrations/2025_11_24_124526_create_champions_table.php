<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('champions', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->float('dmg_basic')->default(0);
            $table->float('dmg_ulti_physical')->default(0);
            $table->float('dmg_ulti_magic')->default(0);
            $table->float('per_dmg_physical')->default(0);
            $table->float('per_dmg_magic')->default(0);
            $table->float('armor_physical')->default(0);
            $table->float('armor_magic')->default(0);
            $table->float('health')->default(0);
            $table->float('mana')->default(0);
            $table->float('speed')->default(0);
            $table->float('crit')->default(0);
            $table->float('suck_blood')->default(0);
            $table->float('per_armor_physical')->default(0);
            $table->float('per_armor_magic')->default(0);
            $table->float('per_health')->default(0);
            $table->float('per_mana')->default(0);
            $table->float('per_speed')->default(0);
            $table->float('per_crit')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('champions');
    }
};
