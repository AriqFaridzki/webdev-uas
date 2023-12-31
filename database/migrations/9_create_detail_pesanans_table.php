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
        Schema::create('detail_pesanans', function (Blueprint $table) {
            $table->id('id_detail_pesanan');

            
            $table->foreignId('id_pesanan')->constrained(
                table: 'pesanans', column:'id_pesanan' , indexName: 'id_pesanan on detail_pesanans'
            );
            
            $table->foreignId('id_harga_wisata')->constrained(
                table: 'harga_wisatas', column:'id_harga_wisata' ,indexName: 'id_harga_wisata on detail_pesanans'
            );  
            $table->tinyInteger('qty');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detail_pesanans');
    }
};
