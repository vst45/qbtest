<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    use HasFactory;

    public function location() {
        return $this->belongsTo(Location::class);
    }

    public function blocks()
    {
        $this->hasMany(Block::class);
    }

}
