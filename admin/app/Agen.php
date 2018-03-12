<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reseller extends Model
{
    protected $table = 'agen';
    protected $fillable = [
    	'identifier', 'name', 'phone', 'address'
    ];
}
