<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
<!--sidebar start-->
<?php include "header.php"?>

<aside>
    <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <li class="sub-menu">
                <a href="<?= ROOT ?>admin">
                    <i class="bx bxs-dashboard"></i>
                    <span>Dashboard</span>
                </a>

            </li>

            <li class="sub-menu">
                <a <?= (isset($current_page) && $current_page == "products") ? ' class="active" ' : ''; ?> href="<?= ROOT ?>admin/products">
                <i class='bx bx-list-check'></i>
                    <span>Products</span>
                </a>

            </li>

            <li class="sub-menu">
                <a <?= (isset($current_page) && $current_page == "categories") ? ' class="active" ' : ''; ?> href="<?= ROOT ?>admin/categories">
                    <i class="bx bxs-category"></i>
                    <span>Categories</span>
                </a>

            </li>

            <li class="sub-menu">
                <a <?= (isset($current_page) && $current_page == "orders") ? ' class="active" ' : ''; ?> href="<?= ROOT ?>admin/orders">
                    <i class="bx bx-dollar"></i>
                    <span>Orders</span>
                </a>

            </li>

            <li class="sub-menu">
                <a <?= (isset($current_page) && $current_page == "messages") ? ' class="active" ' : ''; ?> href="<?= ROOT ?>admin/messages">
                    <i class="bx bxs-chat"></i>
                    <span>Messages</span>
                </a>

            </li>

            <li class="sub-menu">
                <a <?= (isset($current_page) && $current_page == "settings") ? ' class="active" ' : ''; ?> href="<?= ROOT ?>admin/settings/socials">
                    <i class="bx bx-bell"></i>
                    <span>Social links</span>
                </a>
                <!-- <ul class="sub">
                    <li><a href="<?= ROOT ?>admin/settings/slider_images">Slider Images</a></li>
                </ul> -->
<!-- 
                <ul class="sub">
                    <li><a href="<?= ROOT ?>admin/settings/socials">Social links / Contacts</a></li>
                </ul> -->

            </li>

            <li class="sub-menu">
                <a <?= (isset($current_page) && $current_page == "users") ? ' class="active" ' : ''; ?> href="<?= ROOT ?>admin/users">
                    <i class="fa fa-user"></i>
                    <span>Users</span>
                </a>
                <ul class="sub">
                    <li><a href="<?= ROOT ?>admin/users/customers">Customers</a></li>
                    <li><a href="<?= ROOT ?>admin/users/admins">Admins</a></li>
                </ul>
            </li>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>    
            <li class="sub-menu">
                 <a class="logout" href="<?= ROOT ?>logout">
                    <i class="fa fa-sign-out"></i>
                    <span>Logout</span>
                </a>

            </li>

        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->


<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i><?= ' '.ucwords($data['page_title']) ?></h3>
        <div class="row mt">
            <div class="col-lg-12">