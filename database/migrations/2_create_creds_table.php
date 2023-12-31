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
        Schema::create('creds', function (Blueprint $table) {
            $table->engine = 'InnoDB'; // Add this line
            $table->id();

            $table->foreignId('id_user')->constrained(
                table: 'users', column:'id_user' ,indexName: 'id_user'
            );
            
            $table->string('username');
            $table->string('password');
            $table->enum('roles',['admin', 'pelanggan']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('creds');
    }
};
