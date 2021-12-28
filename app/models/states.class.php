<?php 


Class States{

	public function get_states(){

		$DB = Database::newInstance();
		$query = "select * from states order by id desc";
		$data = $DB->read($query);

		return $data;
	}

	public function get_cities($state){

		$arr['state'] = addslashes($state);

		$DB = Database::newInstance();
		$query = "select * from states where state = :state limit 1";
		
		$check = $DB->read($query,$arr);
		$data = false;

		if(is_array($check)){
			$arr = false;
			$arr['id'] = $check[0]->id;

			$query = "select * from cities where parent = :id order by id desc";
			$data = $DB->read($query,$arr);
		}
		

		return $data;
	}


	public function get_state($id){

		$id = (int)$id;
		$DB = Database::newInstance();
		$query = "select * from states where id = '$id' ";
		$data = $DB->read($query);

		return is_array($data) ? $data[0] : false ;
	}

	public function get_city($id){

		$arr['id'] = (int)$id;

		$DB = Database::newInstance();
		$query = "select * from cities where id = :id ";
		$data = $DB->read($query,$arr);

		return is_array($data) ? $data[0] : false ;
	}

	

	
}