<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends CI_Controller {
	var $userdata = NULL;

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
    public function __construct (){
        parent::__construct();
        $this->load->view('user/template/header');
    }
    public function home()
	{
		$this->load->view('user/home_page');
	}
	public function rekap_rp3kp_provinsi(){
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;
        $data['load']       =  array("user/rekap_rp3kp_provinsi"); 

        $this->load->view('user/template/footer', $data);
	}
	public function rekap_rp3kp_kabkota(){
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;
		$data['load']       =  array("user/rekap_rp3kp_kabkota"); 
		$data['data_provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
        $this->load->view('user/template/footer', $data);
	}
	public function rekap_pokja_pkp_provinsi()
	{
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;
        $data['load']       =  array("user/rekap_pokja_pkp_provinsi"); 
        $data['get_where'] = '';
        if($this->input->post('jenis')!=NULL){
            $data['get_where'] = $this->input->post('jenis');
        }else{
            echo'';
        }

        $this->load->view('user/template/footer', $data);
	}
	public function rekap_pokja_pkp_kabkota()
	{
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;
        $data['load']       =  array("user/rekap_pokja_pkp_kabkota");
        if($this->input->post('search_field')==NULL){
            $data['get_where'] = 'semua';
        }else{
            $data['get_where'] = $this->input->post('search_field');
        }
        $data['data_provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result(); 

        $data['data_hitung1'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE (c.status="Sudah" OR c.sk="V") AND b.id_provinsi=a.id_provinsi) AS jml')->result();
        $data['data_hitung2'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE c.penggabungan="Sudah" AND b.id_provinsi=a.id_provinsi) AS jml')->result();
        $data['data_hitung3'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE c.forum="Ya" AND b.id_provinsi=a.id_provinsi) AS jml')->result();
        $data['data_hitung4'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE c.apbd="Ya" AND b.id_provinsi=a.id_provinsi) AS jml')->result();
        $this->load->view('user/template/footer', $data);
    }
}