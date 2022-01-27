<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title><?= $page_title . ' - ' . WEBSITE_TITLE ?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?= ASSETS . THEME ?>admin/css/bootstrap.css?v=<?php echo time(); ?>" rel="stylesheet">
    <!--external css-->
    <link href="<?= ASSETS . THEME ?>admin/font-awesome/css/font-awesome.css?v=<?php echo time(); ?>" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="<?= ASSETS . THEME ?>admin/css/style.css?v=<?php echo time(); ?>" rel="stylesheet">
    <link href="<?= ASSETS . THEME ?>admin/css/style-responsive.css?v=<?php echo time(); ?>" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="<?= ASSETS . THEME ?>admin//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="<?= ASSETS . THEME ?>admin//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <section id="container">
        <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
        <!--header start-->
        <header class="header black-bg">
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars tooltips" style="color:white" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <!--logo start-->
            <a href="<?= ROOT ?>admin" class="logo"><img src="<?= ASSETS . THEME ?>images/home/lg.png?v=<?php echo time(); ?>" style="height:30px"alt="" /></a> 
            <!--logo end-->
            
            <div class="top-menu">
                
                <ul class="nav pull-right top-menu">
                    <li style="font-size:15px; padding-top:20px; text-align:center; padding-right:10px;color:white"><?= $data['user_data']->name ?></li>

                    <li><a class="logout" href="<?= ROOT ?>logout"> <i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
                </ul>

            </div>
        </header>
        <!--header end-->