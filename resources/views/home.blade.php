@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    GorSon

                    <a href="{{ route('shares.create')}}" class="btn btn-default form-class text-right">Add Item</a>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                      <table class="table table-striped align-content-center text-center">
                        <thead>
                            <tr>
                              <td>ID</td>
                              <td>Stock Name</td>
                              <td>Stock Price</td>
                              <td>Stock Quantity</td>
                              <td colspan="2">Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($shares as $share)
                            <tr>
                                <td>{{$share->id}}</td>
                                <td>{{$share->share_name}}</td>
                                <td>{{$share->share_price}}</td>
                                <td>{{$share->share_qty}}</td>
                                <td><a href="{{ route('shares.edit',$share->id)}}" class="btn btn-primary">Edit</a></td>
                                <td>
                                    <form action="{{ route('shares.destroy', $share->id)}}" method="post">
                                      @csrf
                                      @method('DELETE')
                                      <button class="btn btn-danger" type="submit">Delete</button>
                                    </form>
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
@endsection
