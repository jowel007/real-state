@extends('admin.admin_dashboard')
@section('admin')
<div class="page-content">

    <nav class="page-breadcrumb">
        <ol class="breadcrumb">
            <button type="button" class="btn btn-inverse-info">Add Property Type</button>
        </ol>
    </nav>

    <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
<div class="card">
  <div class="card-body">
    <h6 class="card-title">All Property Type</h6>
    <p class="text-muted mb-3">Read the <a href="https://datatables.net/" target="_blank"> Official DataTables Documentation </a>for a full list of instructions and other options.</p>
    <div class="table-responsive">
      <table id="dataTableExample" class="table">
        <thead>
          <tr>
            <th>SL</th>
            <th>Type Name</th>
            <th>Type Icon</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($property as $key => $item)
            <tr>
                <td>{{ $key+1 }}</td>
                <td>{{ $item->type_name }}</td>
                <td>{{ $item->type_icon }}</td>
                <td>
                    <a href="" class="btn btn-inverse-warning">Edit</a>
                    <a href="" class="btn btn-inverse-danger">Delete</a>
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
@endsection