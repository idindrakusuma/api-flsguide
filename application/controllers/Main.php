<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Main extends REST_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

	function users_get(){
		
		$id = $this->get('id');
		if ($id == '') {
			$users = $this->db->get('users')->result();
		}

		else{
			$this->db->where('id_user', $id);
			$users = $this->db->get('users')->result();

			if ($users== NULL) {
				// jika user tidak ditemukan
                $this->response([
                    'status' => FALSE,
                    'message' => 'data tidak ditemukan'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
			}
		}

		$this->response($users, 200);
	}

}

/* End of file Guide.php */
/* Location: ./application/controllers/Guide.php */