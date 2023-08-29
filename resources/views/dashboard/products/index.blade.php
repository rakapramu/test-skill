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
                            @if (session()->has('success'))
                                <div class="alert alert-success">
                                    {{ session()->get('success') }}
                                </div>
                            @endif
                            <a href="{{ route('product.create') }}" class="btn btn-primary btn-sm float-end"><i
                                    class="bi-plus-circle me-2"></i>Add
                                Product</a>
                            <h5>Table Product</h5>
                            <div class="table-responsive text-nowrap">
                                <table class="table" id="product">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <th>Stock</th>
                                            <th>Description</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody class="table-border-bottom-0">
                                        @php
                                            $no = 1;
                                        @endphp
                                        @foreach ($products as $product)
                                            <tr>
                                                <td>{{ $no++ }}</td>
                                                <td>{{ $product->name }}</td>
                                                <td>Rp.{{ number_format($product->price) }}</td>
                                                <td>{{ $product->stock }}</td>
                                                <td>{{ $product->description }}</td>
                                                <td>
                                                    <div class="dropdown">
                                                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                            data-bs-toggle="dropdown">
                                                            <i class="bx bx-dots-vertical-rounded"></i>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item"
                                                                href="{{ route('product.edit', $product->id) }}"><i
                                                                    class="bx bx-edit-alt me-1"></i> Edit</a>
                                                            <a class="dropdown-item" href=""
                                                                onclick="event.preventDefault(); document.getElementById('delete-product').submit();">
                                                                <i class="bx bx-trash me-1"></i> Delete
                                                            </a>
                                                            <form id="delete-product"
                                                                action="{{ route('product.destroy', $product->id) }}"
                                                                method="POST" style="display: none;">
                                                                @csrf
                                                                @method('delete')
                                                            </form>
                                                        </div>
                                                    </div>
                                                </td>
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
    </div>
@endsection
@push('js')
    <script>
        $(document).ready(function() {
            $('#product').DataTable();
        });
    </script>
@endpush
