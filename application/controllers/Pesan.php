<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Pesan extends REST_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

	function index_get(){
		$id_pesan = $this->get('id_pesan');
		if ($id_pesan == '') {
			$users = $this->db->get('pesan')->result();
		}

		else{
			$this->db->where('id_pesan', $email);
			$users = $this->db->get('pesan')->result();
		}

		$this->response($users, 200);
	}

}

/* End of file Guide.php */
/* Location: ./application/controllers/Guide.php */