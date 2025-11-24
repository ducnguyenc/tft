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
            $table->float('dmg_physical');
            $table->float('dmg_magic');
            $table->float('armor_physical');
            $table->float('armor_magic');
            $table->float('health');
            $table->float('mana');
            $table->float('speed');
            $table->float('crit');
            $table->float('per_dmg_physical');
            $table->float('per_dmg_magic');
            $table->float('per_armor_physical');
            $table->float('per_armor_magic');
            $table->float('per_health');
            $table->float('per_mana');
            $table->float('per_speed');
            $table->float('per_crit');
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
