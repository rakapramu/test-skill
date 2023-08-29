@extends('dashboard.layout')
@section('title')
    product
@endsection
@section('content')
    <div class="row">
        <div class="col-lg-12 mb-4 order-0">
            <div class="card">
                <div class="d-flex align-items-end row">
                    <div class="card-body">
                        <div class="container">
                            <h5>Table Transaction</h5>
                        </div>
                        <div class="table-responsive text-nowrap">
                            <table class="table" id="transaction">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Reference No</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Payment Amount</th>
                                        <th>Product</th>
                                    </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">
                                    @php
                                        $no = 1;
                                    @endphp
                                    @foreach ($transactions as $transaction)
                                        <tr>
                                            <td>{{ $no++ }}</td>
                                            <td>{{ $transaction->reference_no }}</td>
                                            <td>Rp.{{ number_format($transaction->price) }}</td>
                                            <td>{{ $transaction->quantity }}</td>
                                            <td>{{ $transaction->payment_amount }}</td>
                                            <td>{{ $transaction->product->name }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
    <script>
        $(document).ready(function() {
            $('#transaction').DataTable();
        });
    </script>
@endpush
