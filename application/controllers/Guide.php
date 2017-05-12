<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Guide extends REST_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

	function index_get(){
		$email = $this->get('email');
		if ($email == '') {
			$users = $this->db->get('users')->result();
		}

		else{
			$this->db->where('email', $email);
			$users = $this->db->get('users')->result();
		}

		$this->response($users, 200);
	}

}

/* End of file Guide.php */
/* Location: ./application/controllers/Guide.php */