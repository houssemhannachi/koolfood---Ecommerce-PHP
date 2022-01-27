<?php $this->view("header", $data); ?>

<?php $this->view("slider", $data); ?>
<section>
	<div class="container">
		<div class="row">

			<?php $this->view("sidebar.inc", $data); ?>

			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Featured Items</h2>

					<?php if (is_array($ROWS)) : ?>
						<?php foreach ($ROWS as $row) : ?>

							<?php $this->view("product.inc", $row); ?>

						<?php endforeach; ?>
					<?php endif; ?>

					
				</div>
				

			</div>
			<div> <img src="<?= ASSETS . THEME ?>images/home/adve.png?v=<?php echo time(); ?>"  style="width:800px; display: block;margin-left: auto;margin-right: auto;" /></div> <br> <br>
		</div>

	</div>

<div> <img src="<?= ASSETS . THEME ?>images/home/adv.jpg?v=<?php echo time(); ?>" width="100%" /></div> <br> <br>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-9 padding-right">
				<!--features_items-->

				<?php if (isset($segment_data) && is_array($segment_data)) : $num = 0 ?>

					<div class="category-tab">
						<!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<?php foreach ($segment_data as $key => $seg) : $num++ ?>
									<li <?= ($num == 1) ? 'class="active"' : ''; ?>><a href="#<?= $key ?>" data-toggle="tab"><?= $key ?></a></li>
								<?php endforeach; ?>
							</ul>
						</div>
						<div class="tab-content">

							<?php $num = 0 ?>
							<?php foreach ($segment_data as $key => $seg) : $num++ ?>

								<div class="tab-pane fade <?= ($num == 1) ? ' active in ' : ''; ?> " id="<?= $key ?>">

									<div class="col-sm-10">

										<?php if (is_array($seg)) : ?>
											<?php foreach ($seg as $row) : ?>

												<?php $this->view("product.inc", $row); ?>

											<?php endforeach; ?>
										<?php endif; ?>

									</div>

								</div>
							<?php endforeach; ?>
						</div>
					</div>
					<!--/category-tab-->
				<?php endif; ?>


			</div>
		</div>
	</div>
</section>

<?php $this->view("footer", $data); ?>