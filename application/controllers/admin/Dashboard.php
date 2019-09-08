<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/* ------- DONE --------*/
class Dashboard extends CI_Controller {
    var $userdata = NULL;

    public function __construct (){
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');

        $this->load->view('template/header');
        $this->load->view('template/aside');
    }

    public function index() {
        $data['title_page'] = "DASHBOARD";
        $data['breadcrumb'] = "Home,Dashboard";
        $data['load']    =  array("home"); 

        
        $this->load->view('template/footer', $data);
    }
}
?>
