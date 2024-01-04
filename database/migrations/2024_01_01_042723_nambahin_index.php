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
        Schema::table('users', function (Blueprint $table) {
            $table->string('nama_depan', 100)->index()->change();
        });

        Schema::table('creds', function (Blueprint $table) {
            $table->string('password')->index()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('nama_depan', 100)->change();
        });

        Schema::table('creds', function (Blueprint $table) {
            $table->string('password')->change();
        });
    }
};
