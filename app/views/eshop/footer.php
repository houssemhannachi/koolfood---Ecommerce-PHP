	<footer id="footer">
		<!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>e</span>-shopper</h2>
							<p>This is the fastest, easiest and most convenient way to order your meals online in Tunisia, from your computer or smartphone, feel free to contact us and thank you for using our service.</p>
						</div>
					</div>
					<div class="col-sm-3"></div>
					<div class="col-sm-3">
						<div class="companyinfo">
							<br />
							<h2>Service</h2>
							<ul class="nav nav-pills nav-stacked">
								<a href="http://localhost/kool/eshop/public/contact-us">Contact Us</a><br>
								<a href="">Order Status</a>
								<?php if (isset($data['user_data']) && $data['user_data']->rank == 'admin') : ?>
									<li><a href="<?= ROOT ?>admin">Admin</a></li>
								<?php endif; ?>
							</ul>
						</div>
					</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-3">
						<div class="address">
							<img src="<?= ASSETS . THEME ?>images/home/tn.png" alt="" />
							<p></p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2021 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by Rafik, Houssem & Mohamed Amine</a></span></p>
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