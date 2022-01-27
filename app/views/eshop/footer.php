	<footer id="footer">
		<!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="companyinfo">
						<img style="width : 160px; padding-bottom:20px"src="<?= ASSETS . THEME ?>images/home/lgb.png?v=<?php echo time(); ?>" alt="" />
							<p style="text-align: justify;">This is the fastest, easiest and most convenient way to order your meals online in Tunisia.
							From your computer or smartphone, feel free to contact us and thank you for using our service.</p>
						</div>
					</div>
					<div class="col-sm-4" style="text-align:center">
						<div class="companyinfo">

							<h2 style="color:brown;font-style:ROBOTO">Services</h2>
							<ul class="nav nav-pills nav-stacked">
							<li><a href="<?= ROOT ?>contact-us">Contact Us</a></li>
							<li><a href="">Order Status</a></li>
								<?php if (isset($data['user_data']) && $data['user_data']->rank == 'admin') : ?>
									<li><a href="<?= ROOT ?>admin">Admin</a></li>
								<?php endif; ?>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="address">
							<img src="<?= ASSETS . THEME ?>images/home/tn.png?v=<?php echo time(); ?>" alt="" />
							<p></p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p style="text-align: center; color:black">Designed by Rafik, Houssem & Mohamed Amine</p>
				</div>
			</div>
		</div>

	</footer>
	<!--/Footer-->



	<script src="<?= ASSETS . THEME ?>js/jquery.js"></script>
	<script src="<?= ASSETS . THEME ?>js/bootstrap.min.js"></script>
	<script src="<?= ASSETS . THEME ?>js/jquery.scrollUp.min.js"></script>
	<script src="<?= ASSETS . THEME ?>js/price-range.js"></script>
	<script src="<?= ASSETS . THEME ?>js/jquery.prettyPhoto.js"></script>
	<script src="<?= ASSETS . THEME ?>js/main.js"></script>
	</body>

	</html>