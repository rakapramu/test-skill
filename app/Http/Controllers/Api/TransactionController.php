<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class TransactionController extends Controller
{
    public function store(Request $request)
    {
        $product = DB::table('products')->select('price')->where('id', $request->product_id)->first();
        $payment_amount = $request->quantity * $product->price;

        // get reference_no
        $response = Http::withHeaders([
            'x-api-key' => 'DATAUTAMA'
        ])->post('https://pay.saebo.id/test-dau/api/v1/transactions', [
            'quantity' => $request->quantity,
            'price' => $product->price,
            'payment_amount' => $payment_amount
        ]);
        // return $response['data']['reference_no'];

        // post to database
        $data = Transaction::create([
            'reference_no' => $response['data']['reference_no'],
            'price' => $product->price,
            'quantity' => $request->quantity,
            'payment_amount' => $payment_amount,
            'product_id' => $request->product_id
        ]);

        return response()->json([
            'code' => 200,
            'message' => 'ok',
            'data' => $data
        ]);
    }
}
