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
        Schema::create('harga_wisatas', function (Blueprint $table) {
            $table->id('id_harga_wisata');
            
            $table->foreignId('id_lokasi')->constrained(
                table: 'lokasis', column: 'id_lokasi', indexName: "id_lokasi_ on harga_Wisata"
            );

        
            $table->integer('harga');
        });

        // Schema::table('detail_pesanans', function (Blueprint $table) {
        //     $table->foreignId('id_harga_wisata')->constrained(
        //         table: 'harga_wisatas', column:'id_harga_wisata' ,indexName: 'id_harga_wisata on detail_pesanans'
        //     );
        // });
    }

    

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('harga_wisatas');
    }
};
