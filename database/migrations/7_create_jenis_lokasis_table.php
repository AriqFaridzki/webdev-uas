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
        Schema::create('jenis_lokasis', function (Blueprint $table) {
            $table->id('id_jenis_lokasi');
            $table->string('jenis_lokasi');
        });

        Schema::table('lokasis', function (Blueprint $table) {
             $table->foreignId('jenis_lokasi')->constrained(
                table: 'jenis_lokasis', column:'id_jenis_lokasi' ,indexName: 'id_jenis_lokasi_in_lokasi'
            );
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jenis_lokasis');
    }
};
