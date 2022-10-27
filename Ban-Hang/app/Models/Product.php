<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table='product';
    protected $fillable = [
        'name',
        'image',
        'price',
        'discount',
        'content',
        'idcat',
    ];
    public function category(){
        return $this->belongsTo('App\Models\Category', 'idcat', 'id');
    }
}
