<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Agenda extends REST_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

	function index_get(){
		$id_agenda = $this->get('id_agenda');
		if ($id_agenda == '') {
			$users = $this->db->get('agenda')->result();
		}

		else{
			$this->db->where('id_agenda', $email);
			$users = $this->db->get('agenda')->result();
		}

		$this->response($users, 200);
	}

}

/* End of file Guide.php */
/* Location: ./application/controllers/Guide.php */