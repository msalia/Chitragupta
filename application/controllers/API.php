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

    public function getTeams() {
            $callback = $_GET['callback'];
        $teams = $this->db->query(
            'SELECT t.team_id as id, t.team_name as label FROM Team t WHERE t.year = '.date('Y')
        );
        $data = json_encode($teams->result());
            echo $callback.'('.$data.');';
    }

    public function getTeam() {
            $callback = $_GET['callback'];
        $id = $_GET['id'];
        $team = $this->db->query(
            'SELECT t.team_id as id, t.team_name as teamName FROM Team t WHERE t.team_id = '.$id
        );
        $teamData = $team->result();
        $players = $this->db->query(
            'SELECT p.profile_id as id, p.first_name as first, p.last_name as last FROM Profile p WHERE p.team_id = '.$id
        );
        $data = array(
            'total' => count($players->result()),
            'teamName' => $teamData[0]->teamName,
            'players' => $players->result(),
        );
            echo $callback.'('.json_encode($data).');';
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
