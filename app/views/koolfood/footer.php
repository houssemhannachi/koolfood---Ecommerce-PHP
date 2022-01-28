	
	<footer id="colophon" class="site-footer footer-v1">
            <div class="col-full">
               <div class="footer-social-icons">
                  <span class="social-icon-text">Follow us</span>
                  <ul class="social-icons list-unstyled">
                     <li><a class="fa fa-facebook" href="#"></a></li>
                     <li><a class="fa fa-twitter" href="#"></a></li>
                     <li><a class="fa fa-instagram" href="#"></a></li>
                     <li><a class="fa fa-youtube" href="#"></a></li>
                     <li><a class="fa fa-dribbble" href="#"></a></li>
                  </ul>
               </div>
               <div class="footer-logo">
                  <a href="index.html" class="custom-logo-link" rel="home">
                     <img src="<?= ASSETS . THEME ?>images/home/lg.png?v=<?php echo time(); ?>"/>
                  </a>
               </div>
               <div class="site-address">
                  <br>
                     This is the fastest, easiest and most convenient way 
							
to order your meals online in Tunisia.</br>
                     From your computer or smartphone,<br>
                      feel free to contact us and thank you for using our service.</br>
					 <a href="<?= ROOT ?>contact-us">Contact Us </a><br>
					 <?php if (isset($data['user_data']) && $data['user_data']->rank == 'admin') : ?>
									<a href="<?= ROOT ?>admin">Admin</a></li>
								<?php endif; ?>
								
                 
               </div> <br><br>
                  <p class="copyright">Copyright &copy;All rights reserved.</p>
				  <p>Designed by Rafik, Houssem and Mohamed Amine.<br>
				   
  
               
            </div>
            <!-- .col-full -->
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