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
        Schema::create('jenis_orangs', function (Blueprint $table) {
            $table->id('id_jenis_orang');
            $table->string('jenis_orang', 150);
        });

        Schema::table('harga_wisatas', function (Blueprint $table) {
            $table->foreignId('id_jenis_orang')->constrained(
                table: 'jenis_orangs', column: 'id_jenis_orang', indexName: "id_jenis_orang on harga wisata"
            );
        });

        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jenis_orangs');
    }
};
