<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('barangay_officials', function (Blueprint $table) {
            $table->unsignedBigInteger('resident_id')->nullable()->after('id');
            $table->foreign('resident_id')->references('id')->on('residents')->onDelete('set null');
        });
    }

    public function down(): void
    {
        Schema::table('barangay_officials', function (Blueprint $table) {
            $table->dropForeign(['resident_id']);
            $table->dropColumn('resident_id');
        });
    }

};
