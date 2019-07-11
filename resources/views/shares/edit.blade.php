@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">GorSon</div>
                <a href=""></a>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                      <form method="post" action="{{ route('shares.update', $share->id) }}">
                        @method('PATCH')
                        @csrf
                        <div class="form-group">
                          <label for="name">Share Name:</label>
                          <input type="text" class="form-control" name="share_name" value={{ $share->share_name }} />
                        </div>
                        <div class="form-group">
                          <label for="price">Share Price :</label>
                          <input type="text" class="form-control" name="share_price" value={{ $share->share_price }} />
                        </div>
                        <div class="form-group">
                          <label for="quantity">Share Quantity:</label>
                          <input type="text" class="form-control" name="share_qty" value={{ $share->share_qty }} />
                        </div>
                          <button type="submit" class="btn btn-primary">Update</button>
                          <a href="{{ URL::previous() }}" type="button" class="btn btn-default form-class">Go Back</a>

                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
