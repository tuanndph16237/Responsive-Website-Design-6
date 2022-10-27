<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Area</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="{!! asset('api/fontawesome/css/all.css') !!}">

        <link rel="stylesheet" href="{!! asset('admin/css/style.css') !!}">
  </head>
  <body>

	<div class="wrapper d-flex align-items-stretch">
        @include('admin.theme.sidebar')
        <div id="content">
        @include('admin.theme.nav')
        @include('admin.theme.content')
        </div>
	</div>
    <script src="{!! asset('admin/js/jquery.min.js') !!}"></script>
    <script src="{!! asset('admin/js/popper.js') !!}"></script>
    <script src="{!! asset('admin/js/bootstrap.min.js') !!}"></script>
    <script src="{!! asset('admin/js/main.js') !!}"></script>
  </body>
</html>
