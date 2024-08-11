<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Spering</title>

    <!-- Bootstrap core CSS from CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{{asset('css/style.css')}}" rel="stylesheet" />
    <!-- Responsive style -->
    <link href="{{asset('css/responsive.css')}}" rel="stylesheet" />

    <!-- DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.0/css/dataTables.bootstrap5.min.css">

    <!-- Bootstrap Bundle JS from CDN (includes Popper.js) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- jQuery from CDN -->
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!-- DataTables core script -->
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

	<!-- Optional: DataTables Bootstrap 5 integration -->
	<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
</head>

<body class="sub_page" style="background-color:#cbcbcb;">
    <div class="hero_area">
		<!-- header section strats -->
		@php use Illuminate\Support\Str; @endphp
		<header class="header_section">
			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg custom_nav-container">
					<a class="navbar-brand" href="{{route('home')}}">
						<img src="images/logo.png" alt="" />
						<span>
							BADMINTON
						</span>
					</a>
					
					<div class="float-end" id="">
						<ul class="navbar-nav">
							<li class="nav-item mx-4 ">
								<a href="{{route('home')}}" class="nav-link" >
									HOME
								</a>
							</li>
							<li class="nav-item mx-4 ">
								<a class="nav-link" href="{{ route('getCourts', ['month' => date('m'),'year' => date('Y')]) }}">COURT VIEW</a>
							</li>
							<li class="nav-item mx-4 ">
                                    <a class="nav-link" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                
							</li>

							
						</ul>
						
					</div>
					<div>
						<!-- <div class="custom_menu-btn ">
							<button>
								<span class=" s-1">

								</span>
								<span class="s-2">

								</span>
								<span class="s-3">

								</span>
							</button>
						</div> -->
					</div>

				</nav>
			</div>
		</header>
		<!-- end header section -->
	</div>
    <div class="row mx-1 w-100 d-block" style="min-height:650px;">
		<div class="row">
			<div class="m-2">
			@if(session('success'))
				<div class="alert alert-success">
					{{session('success')}}
				</div>
			@elseif(session('error'))
				<div class="alert alert-danger">
					{{session('error')}}
				</div>
			@endif
			</div>
		</div>
        @yield('mainContent')
    </div>
   
</body>
</html>

