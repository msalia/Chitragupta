<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class API extends CI_Controller {

    private $subview = null;

    public function index() {
        $this->setIndexSubview();
        $this->loadView();
    }

    public function uploadScoreboard() {
        $this->setUploadSubview();
        $this->loadView();
    }

    private function getData() {
        $data = array();

        if ($this->subview) {
            $data["subview"] = $this->subview;
        }

        return $data;
    }

    private function loadView() {
        $this->load->view('api_page', $this->getData());
    }

    private function setIndexSubview() {
        $this->subview = "index/landing.php";
    }

    private function setUploadSubview() {
        $this->subview = "upload/landing.php";
    }

}
