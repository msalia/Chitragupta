<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class API extends CI_Controller {

    private $subview = null;
    private $viewData = null;

    public function index() {
        $this->setIndexSubview();
        $this->loadView();
    }

    public function uploadScoreboard() {
        $this->setUploadSubview();
        $this->loadView();
    }

    public function uploadScoreboardSuccess($data) {
        $this->setUploadSubviewSuccess();
        $this->setViewData($data);
        $this->loadView();
    }

    public function uploadScoreboardError($data) {
        $this->setUploadSubviewError();
        $this->setViewData($data);
        $this->loadView();
    }

    function doUpload() {
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'csv|png';
        $config['max_size']	= '500';

        $this->load->library('upload', $config);
        $data = null;
        if (!$this->upload->do_upload()) {
            $data['error'] = $this->upload->display_errors();
            $this->uploadScoreboardError($data);
        } else {
            $data['upload_data'] = $this->upload->data();
            $this->uploadScoreboardSuccess($data);
        }
    }

    private function getData() {
        $data = array();
        $data["subview"] = $this->subview;
        $data["viewData"] = $this->viewData;
        return $data;
    }

    private function loadView() {
        $this->load->view('api_page', $this->getData());
    }

    private function setIndexSubview() {
        $this->subview = "index/landing.php";
    }

    private function setUploadSubview() {
        $this->subview = "upload/upload.php";
    }

    private function setUploadSubviewSuccess() {
        $this->subview = "upload/success.php";
    }

    private function setUploadSubviewError() {
        $this->subview = "upload/error.php";
    }

    private function setViewData($data) {
        $this->viewData = $data;
    }

}
