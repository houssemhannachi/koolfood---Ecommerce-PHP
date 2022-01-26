<?php $this->view("header", $data); ?>

<?php

if (isset($errors) && count($errors) > 0) {
	echo "<div>";
	foreach ($errors as $error) {

		echo "<div class='alert alert-danger' style='padding:5px;max-width:500px;margin:auto;text-align:center;'>$error</div>";
	}
	echo "</div>";
}

?>
<section id="cart_items">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Check out</li>
			</ol>
		</div>
		<!--/breadcrums-->

		<?php if (is_array($ROWS)) : ?>

			<div class="register-req">
				<p>Fileds with a * are required</p>
			</div>
			<!--/register-req-->

			<?php

			$address1 		= "";
			$address2 		= "";
			$postal_code 	= "";
			$state 		= "";
			$city 			= "";
			$home_phone 	= "";
			$mobile_phone 	= "";
			$message 	= "";

			// if(isset($POST_DATA)){

			// 	extract($POST_DATA);
			// }

			?>

			<form method="post">
				<div class="shopper-informations">
					<div class="row">

						<div class="col-sm-8 clearfix">
							<div class="bill-to">
								<p>Bill To</p>
								<div class="form-one">

									<input name="address1" value="<?= $address1 ?>" class="form-control" type="text" placeholder="Address 1 *" autofocus="autofocus" required><br>
									<input name="address2" value="<?= $address2 ?>" class="form-control" type="text" placeholder="Address 2"><br>
									<input name="postal_code" value="<?= $postal_code ?>" class="form-control" type="text" placeholder="Zip / Postal Code *" required><br>

								</div>
								<div class="form-two">

									<select name="state" class="js-state" oninput="get_cities(this.value)" required>SSS
										<?php if ($state == "") {
											echo "<option>-- State --</option>";
										} else {
											echo "<option>$state</option>";
										} ?>
										<?php if (isset($states) && $states) : ?>
											<?php foreach ($states as $row) : ?>

												<option value="<?= $row->state ?>"><?= $row->state ?></option>

											<?php endforeach; ?>
										<?php endif; ?>
									</select><br><br>
									<select name="city" value="<?= $city ?>" class="js-city" required>
										<?php if ($city == "") {
											echo "<option>-- City --</option>";
										} else {
											echo "<option>$city</option>";
										} ?>


									</select><br><br>

									<input name="home_phone" value="<?= $home_phone ?>" class="form-control" type="text" placeholder="Home Phone"><br>
									<input name="mobile_phone" value="<?= $mobile_phone ?>" class="form-control" type="text" placeholder="Mobile Phone *" required><br>
									<br>

								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="order-message">
								<p>Shipping Order</p>
								<textarea name="message" placeholder="Notes about your order, Special Notes for Delivery" rows="16"><?= $message ?></textarea>

							</div>
						</div>
					</div>

					<input type="submit" class="btn btn-warning pull-right" value="Continue >" name="">

				</div>
			</form>


		<?php else : ?>
			<h3 style="text-align: center;">
				Please add some items in the cart first!
			</h3>
		<?php endif; ?>

		<a href="<?= ROOT ?>cart">
			<input type="button" class="btn btn-warning pull-left" value="< Back to cart" name="">
		</a>
	</div>
</section>
<!--/#cart_items-->

<script type="text/javascript">
	function get_cities(state) {

		send_data({
			id: state.trim()
		}, "get_cities");
	}

	function send_data(data = {}, data_type) {

		var ajax = new XMLHttpRequest();

		ajax.addEventListener('readystatechange', function() {

			if (ajax.readyState == 4 && ajax.status == 200) {
				handle_result(ajax.responseText);
			}
		});

		var info = {};
		info.data_type = data_type;
		info.data = data;

		ajax.open("POST", "<?= ROOT ?>ajax_checkout", true);
		ajax.send(JSON.stringify(info));
	}

	function handle_result(result) {

		console.log(result);
		if (result != "") {
			var obj = JSON.parse(result);

			if (typeof obj.data_type != 'undefined') {

				if (obj.data_type == "get_cities") {

					var select_input = document.querySelector(".js-city");
					select_input.innerHTML = "<option>-- City --</option>";

					for (var i = 0; i < obj.data.length; i++) {

						select_input.innerHTML += "<option value='" + obj.data[i].city + "'>" + obj.data[i].city + "</option>";
					}
				}
			}

		}


	}
</script>
<?php $this->view("footer", $data); ?>