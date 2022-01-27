<?php $this->view("header", $data); ?>
<?php $this->view("slider", $data); ?>
<section>
	<div class="container">
		<div class="row">
			<?php $this->view("sidebar.inc", $data); ?>
			<!--start product-->
			<div class="col-sm padding-right">
				<?php if ($ROW) : ?>
					<div class="product-details">
						<!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="<?= ROOT . $ROW->image ?>" alt="" />
							</div>
						</div>
						<div class="col-sm-5">
						<div class="product-information">
							<!--/product-information-->
							<img src="images/product-details/new.jpg" class="newarrival" alt="" />
							<h1><?= $ROW->description ?></h1>
							<img src="images/product-details/rating.png" alt="" />
							<span>
								<span> <?= $ROW->price ?> TND</span>
								<a href="<?= ROOT ?>add_to_cart/<?= $ROW->id ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
							</span>
							<p><b>Availability:</b><?php if ($ROW->quantity > 0) : ?> In Stock<?php else : ?> Out of Stock<?php endif; ?></p>
							<a href=""><img src="images/product-details/share.png" class="share img-responsive" alt="" /></a>
						</div>
						<!--/product-information-->
					</div>	
					</div>
					
			</div>


			<!--end product-->
		<?php else : ?>
			<div style="padding: 1em;background-color: grey;color:white;margin:1em;text-align: center;">
				<h2>That product was not found</h2>
			</div>
		<?php endif; ?>
		</div>

	</div>
	</div>
</section>
<br><br> <br><br><br> <br>s
<?php $this->view("footer", $data); ?>