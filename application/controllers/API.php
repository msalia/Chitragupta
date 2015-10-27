<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class API extends CI_Controller {

    public function index()
    {
        $this->load->view('api_welcome');
    }

}
