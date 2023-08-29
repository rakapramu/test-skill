@extends('dashboard.layout')
@section('title')
    add-product
@endsection
@section('content')
    <div class="row">
        <div class="col-lg-12 mb-4 order-0">
            <div class="card">
                <div class="d-flex align-items-end row">
                    <div class="card-body">
                        <div class="container">
                            <a href="{{ route('product.index') }}" class="btn btn-primary btn-sm float-end"><i
                                    class="bi-plus-circle me-2"></i>Back</a>
                            <h5>Table Product</h5>
                        </div>
                        <div class="table-responsive text-nowrap">
                            <form action="{{ route('product.store') }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" name="name"
                                        class="form-control @error('name') is-invalid @enderror"
                                        value="{{ old('name') }}">
                                    @error('name')
                                        <span class="invalid-feedback">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Price</label>
                                    <input type="integer" name="price"
                                        class="form-control @error('price') is-invalid @enderror"
                                        value="{{ old('price') }}">
                                    @error('price')
                                        <span class="invalid-feedback">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Stock</label>
                                    <input type="integer" name="stock"
                                        class="form-control @error('stock') is-invalid @enderror"
                                        value="{{ old('stock') }}">
                                    @error('stock')
                                        <span class="invalid-feedback">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Description</label>
                                    <textarea name="description" cols="10" class="form-control @error('description') is-invalid @enderror">{{ old('description') }}</textarea>
                                    @error('description')
                                        <span class="invalid-feedback">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="mb-2">
                                    <button class="btn btn-primary btn-sm" type="submit">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
