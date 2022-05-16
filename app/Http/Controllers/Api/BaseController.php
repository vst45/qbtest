<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller as Controller;
use App\Services\ServiceOrder;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public $serviceOrder;

    public function __construct()
    {
        $this->serviceOrder = new ServiceOrder();
    }

public function createOrder($input) {

}

}
