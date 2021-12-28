<?php 

Class hello extends Controller
{

	public function index()
	{
		$data['page_title'] = "hello";
		
		
         echo $_GET['qty'];
    	}


}