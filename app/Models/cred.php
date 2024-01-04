<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class cred extends Model
{
    use HasFactory;


    public function cred(): BelongsTo {
        return $this->BelongsTo(User::class, 'id_user');
    }


    protected $fillable = [
        'id_user',
        'username',
        'password',
        'roles',
    ];
}
