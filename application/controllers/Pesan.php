<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Pesan extends REST_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

	function info_get(){
		$id_pesan = $this->get('id');
		if ($id_pesan == '') {
			$info = $this->db->get('pesan')->result();
		}

		else{
			$this->db->where('id_pesan', $id_pesan);
			$info = $this->db->get('pesan')->result();

			if ($info== NULL) {
				// jika user tidak ditemukan
                $this->response([
                    'status' => FALSE,
                    'message' => 'data tidak ditemukan'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
			}
		}
		//jika Ada
		$this->response($info, 200);
		 
	}

}

/* End of file Guide.php */
/* Location: ./application/controllers/Guide.php */