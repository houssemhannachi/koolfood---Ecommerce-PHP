<?php $this->view("admin/header", $data); ?>

<?php $this->view("admin/sidebar", $data); ?>

<h3>Main admin page.</h3>

<div class="row mtbox">
	<div class="col-md-2 col-sm-2 box0">
		<div class="box1">
			<span class="bx bxs-category"></span>
			<h3><?= get_categories_count() ?></h3>
		</div>
		<p><?= get_categories_count() ?> total categories.</p>
	</div>
	<div class="col-md-2 col-sm-2 box0">
		<div class="box1">
			<span class="bx bx-user"></span>
			<h3><?= get_customer_count() ?></h3>
		</div>
		<p>You have <?= get_customer_count() ?> customers.</p>
	</div>
	<div class="col-md-2 col-sm-2 box0">
		<div class="box1">
			<span class="fa fa-paste"></span>
			<h3><?= get_order_count() ?></h3>
		</div>
		<p>More than <?= get_order_count() ?> orders were received.</p>
	</div>
	<div class="col-md-2 col-sm-2 box0">
		<div class="box1">
			<span class="bx bx-ghost"></span>
			<h3><?= get_admin_count() ?></h3>
		</div>
		<p>Your have <?= get_admin_count() ?> admins.</p>
	</div>

</div><!-- /row mt -->

<?php $this->view("admin/footer", $data); ?>