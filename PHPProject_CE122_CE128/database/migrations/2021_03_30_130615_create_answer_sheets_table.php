<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnswerSheetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answer__sheets', function (Blueprint $table) {
            $table->id();
            $table->integer('q_id');
            $table->integer('student_no');
            $table->string('correct');
            $table->string('marked');
            $table->integer('quiz_id');
            $table->biginteger('unique');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('answer__sheets');
    }
}
