<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    function __construct() {
        parent::__construct();
	}
    public function home()
	{
		$this->load->view('user/home_page');
	}
	public function rekap_rp3kp_provinsi(){
		$this->load->view('user/rekap_rp3kp_provinsi');
	}
	public function simpan_aspirasi(){
        $this->db->trans_start();
        $data_1 = array(
            'nama' => $this->input->post('nama'),
            'email' => $this->input->post('email'),
            'nohp' => $this->input->post('nohp'),
			'pesan' => $this->input->post('pesan'),
			'waktu' => date('Y-m-d H:i:s')
        );
        // print_r($data_1);
        $this->Main_model->insertData('aspirasi',$data_1);
		
        // $this->Main_model->log_activity($this->session->userdata('id'),'Insert data',"Menyimpan data kritik/ saran dari masyarakat (".$this->input->post('nama').")",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            echo "<script>window.location='http://blog-sibilup.aplikasiku.online/hubungi-kami/'</script>";
        }
        else{
            echo "<script>window.location='http://blog-sibilup.aplikasiku.online/hubungi-kami/'</script>";
        }
    }
}