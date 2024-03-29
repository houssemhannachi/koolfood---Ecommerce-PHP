<?php $this->view("header", $data); ?>

<section id="form" style="margin-top: 5px;">
	<!--form-->
	<div class="container">
		<div class="row" style="text-align: center;">

			<span style="font-size:18px;color:red;"><?php check_error() ?></span>

			<div class="col-sm-4 col-sm-offset-1" style="float: none;display: inline-block;">
				<div class="login-form">
					<!--login form-->
					<h2>Login to your account</h2>
					<form method="post">
						<input type="email" name="email" value="<?= isset($_POST['email']) ? $_POST['email'] : ''; ?>" placeholder="Email Address" />
						<input type="password" name="password" value="<?= isset($_POST['password']) ? $_POST['password'] : ''; ?>" placeholder="Password" />

						<button type="submit" class="btn btn-default" style="margin-left: auto;margin-right: auto;">Login</button>
					</form>
					<br>
					<a href="<?= ROOT ?>signup">Don't have an account yet? Sign Up</a>
				</div>
				<!--/login form-->
			</div>

		</div>
	</div>
</section>
<!--/form-->

<?php $this->view("footer", $data); ?>