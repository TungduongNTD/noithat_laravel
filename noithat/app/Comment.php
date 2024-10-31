<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments'; // Use plural form for table names as a convention
    public $timestamps = true;

    public function product()
    {
        return $this->belongsTo(Product::class, 'id_product', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user', 'id');
    }
}
