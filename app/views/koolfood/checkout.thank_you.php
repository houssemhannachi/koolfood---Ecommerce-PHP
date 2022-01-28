<?php $this->view("header", $data); ?>
<div style="text-align: center;">
<br><br>
<div class="pizzaro-order-steps">
			<ul>
				<li>
					<span class="step">1</span> Shopping Cart 
				</li>
				<li>
					<span class="step">2</span> Checkout
				</li>
				<li  class="cart">
					<span class="step" >3</span> Order Complete
				</li>
			</ul>
		</div>
		<div class="entry-header"> </div>
	<h1>Thank you for shopping with us!</h1>
	<h4>Your order was successful</h4>
	<br><br>

	<div>What would you like to do next?</div><br>
	<a href="<?= ROOT ?>shop">
		<input type="button" class="btn btn-warning" value="Continue shopping">
	</a>
	<a href="<?= ROOT ?>profile">
		<input type="button" class="btn btn-warning" value="View your orders">
	</a>

	<br><br>

</div>
<?php $this->view("footer", $data); ?>