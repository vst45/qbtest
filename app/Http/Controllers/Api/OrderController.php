<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use App\Http\Requests\OrderStoreRequest;
use App\Services\ServiceHttp;

class OrderController extends BaseController
{

    public function store(OrderStoreRequest $request)
    {
        $input = $request->validated();

        $data = $this->serviceOrder->prepareInputOrderData($input);
        $order = $this->serviceOrder->createOrder($data);

        if (!$order['result']) {
            return ServiceHttp::sendError($order['msg'], ['error' => $order['msg']]);
        } else {
            return ServiceHttp::sendResponse($order['data'], $order['msg']);
        }
    }
}
