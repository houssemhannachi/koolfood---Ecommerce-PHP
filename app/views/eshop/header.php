<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title><?= $data['page_title'] ?> | eShop</title>
	<link href="<?= ASSETS . THEME ?>css/bootstrap.min.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link href="<?= ASSETS . THEME ?>css/font-awesome.min.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link href="<?= ASSETS . THEME ?>css/prettyPhoto.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link href="<?= ASSETS . THEME ?>css/price-range.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link href="<?= ASSETS . THEME ?>css/animate.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link href="<?= ASSETS . THEME ?>css/main.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link href="<?= ASSETS . THEME ?>css/responsive.css?v=<?php echo time(); ?>" rel="stylesheet">
	<link rel="icon" href="<?= ASSETS . THEME ?>images/home/icon.png" type="image/x-icon">


	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?= ASSETS . THEME ?>images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?= ASSETS . THEME ?>images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?= ASSETS . THEME ?>images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="<?= ASSETS . THEME ?>images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
	<header id="header" style="background-color:#c00a27">
		<!--header-->
		<div class="header_top">
			<!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<?php if (isset($data['user_data'])) : ?>
									<li><a href="#"><i class="fa fa-envelope"></i> <?= $data['user_data']->email ?></a></li>
									<li><a href="#"><i class="fa fa-user"></i> <?= $data['user_data']->name ?></a></li>
								<?php endif; ?>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a target="_new" href="<?= Settings::facebook_link() ?>"><i class="fa fa-facebook"></i></a></li>
								<li><a target="_new" href="<?= Settings::twitter_link() ?>"><i class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header_top-->

		<div class="header-middle" style="width: 1200px; margin-right: auto;margin-left: auto;padding-left: 35px;padding-right: 35px;">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left logokoolfood">
							<a href="<?= ROOT ?>"><img src="<?= ASSETS . THEME ?>images/home/logo.png?v=<?php echo time(); ?>" alt="" /></a>
						</div>

					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								
								<!-- <li><a href="<?= ROOT ?>checkout"><i class="fa fa-crosshairs"></i> Checkout</a></li> -->
								
									<li class="cart-content ">
										<a href="<?= ROOT ?>cart" title="View your shopping cart">
											<i class="fa fa-shopping-cart"></i>
											<span>Go to Your Cart</span>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="cart.html" title="View your shopping cart">
													<span class="count">2 items</span> <span class="amount">$50.00</span>
												</a>
											</li>
										</ul>
									</li>
									<?php if (isset($data['user_data']) && $data['user_data']->rank == 'admin') : ?>
									<li style="padding-top:15px"><a href="<?= ROOT ?>profile"><i class="fa fa-user"></i> Account</a></li>
								<?php endif; ?>
								<?php if (isset($data['user_data'])) : ?>
									<li style="padding-top:15px"><a href="<?= ROOT ?>logout"><i class="fa fa-lock"></i> Logout</a></li>
								<?php else : ?>
									<li  style="padding-top:15px"><a href="<?= ROOT ?>login"><i class="fa fa-lock"></i> Login</a></li>
								<?php endif; ?>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom" style="background-color: #c00a27">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<?php if (isset($categories) && is_array($categories)) :
									foreach ($categories as $cat) : ?>
										<li class="dropdown"> <a href="<?= ROOT . "shop/category/" . $cat->category; ?>"><?= $cat->category ?> </a> </li>
									<?php endforeach; ?>
								<?php endif; ?>
							</ul>
						</div>
					</div>
					<?php if (isset($show_search)) : ?>
						<div class="col-sm-3">
							<form method="get">
								<div class="search_box pull-right">
									<input name="find" type="text" placeholder="Search" />
								</div>
							</form>
						</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->

	<style type="text/css">
		.product-image {
			transition: all 1s ease;
		}

		.product-image:hover {
			transform: scale(1.5);
		}
	</style>