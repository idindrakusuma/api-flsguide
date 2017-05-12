<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Rest_server extends CI_Controller {

	function __construct($config = 'rest') {
        parent::__construct($config);
    }

    public function index()
    {
        $this->load->helper('url');

        $this->load->view('rest_server');
    }
}
