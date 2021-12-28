<?php 

Class Ajax_checkout extends Controller
{

	public function index($data_type = '',$id = '')
	{
		$info = file_get_contents("php://input");
		$info = json_decode($info);

		$id = $info->data->id;
 
		$states = $this->load_model('states');
		$data = $states->get_cities($id);

		$info = (object)[];
		$info->data = $data;
		$info->data_type = "get_cities";
		
		echo json_encode($info);

	}

}