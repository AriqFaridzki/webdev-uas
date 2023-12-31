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
        Schema::create('users', function (Blueprint $table) {
            $table->engine = 'InnoDB'; 
            $table->id('id_user');
            $table->string('nama_depan', 100);
            $table->string('nama_belakang', 100);
            $table->text('alamat');
            $table->string('email', 70);
            $table->string('no_telp', 16);
            $table->enum('gender', ['laki', 'perempuan']);
            $table->smallInteger('umur');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
