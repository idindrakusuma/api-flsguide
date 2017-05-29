<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Agenda extends REST_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

	function program_get(){

		$id_agenda = $this->get('id');
		
		if ($id_agenda == '') {
			$program = $this->db->get('agenda')->result();
		}

		else{
			$this->db->where('agenda_id', $id_agenda);
			$program = $this->db->get('agenda')->result();

			if ($program== NULL) {
				// jika user tidak ditemukan
                $this->response([
                    'status' => FALSE,
                    'message' => 'data tidak ditemukan'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
			}
		}

		$this->response($program, 200);
	}

}

/* End of file Guide.php */
/* Location: ./application/controllers/Guide.php */