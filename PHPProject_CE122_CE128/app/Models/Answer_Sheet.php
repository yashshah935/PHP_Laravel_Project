<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Answer_Sheet extends Model
{
    use HasFactory;
    protected $fillable = [
        'q_id',
        'student_no',
        'correct',
        'marked',
        'quiz_id',
        'unique',
    ];
}