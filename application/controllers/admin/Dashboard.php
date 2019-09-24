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
    public function rekap_provinsi()
	{
        $data['title_page'] = "Rekap Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap Provinsi";
        $data['load']       =  array("admin/dashboard/rekap_provinsi"); 

        $this->load->view('template/footer', $data);
    }
    public function ubah_data_rekap_provinsi()
	{
        $data['title_page'] = "Ubah Data Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap Provinsi,Ubah Data";
		$data['load']       =  array("admin/dashboard/ubah_data_rekap_provinsi");
		$data['data_utama'] = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi,a.regional', array('md5(a.id_provinsi)'=>$this->uri->segment(3)),'','','','',array(
            'table' => 'rekap_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
        ))->row();

        $this->load->view('template/footer', $data);
    }
    public function perbarui_data_rekap_provinsi(){
        $this->db->trans_start();
        $rencana_anggaran = preg_replace("/[^0-9]/", "", $this->input->post('rencana_anggaran'));
        $belum = 'X';
        $menganggarkan = 'X';
        $sedang = 'X';
        $review = 'X';
        $sudah = 'X';
        if($this->input->post('group1')=='belum'){
            $belum = 'V';
        }
        elseif($this->input->post('group1')=='menganggarkan'){
            $menganggarkan = 'V';
        }
        elseif($this->input->post('group1')=='sedang'){
            $sedang = 'V';
        }
        elseif($this->input->post('group1')=='review'){
            $review = 'V';
        }
        elseif($this->input->post('group1')=='sudah'){
            $sudah = 'V';
        }
        else{
            echo'';
        }
        $data_1 = array(
            'id_provinsi' => $this->input->post('id_provinsi'),
            'belum' => $belum,
            'menganggarkan' => $menganggarkan,
            'sedang' => $sedang,
            'review' => $review,
            'sudah' => $sudah,
            'bentuk_kegiatan' => $this->input->post('bentuk_kegiatan'),
            'anggaran' => $rencana_anggaran
        );
        // print_r($data_1);
        $check = $this->Main_model->getSelectedData('rekap_provinsi a', 'a.*', array('a.id_provinsi'=>$this->input->post('id_provinsi')))->result();
		if($check==NULL){
            $this->Main_model->insertData('rekap_provinsi',$data_1);
		}else{
            $this->Main_model->updateData('rekap_provinsi',$data_1,array('id_provinsi'=>$this->input->post('id_provinsi')));
        }
        $this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Memperbarui data rekap provinsi",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            $this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/ubah_data_rekap_provinsi/".md5($this->input->post('id_provinsi'))."'</script>";
        }
        else{
            $this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/rekap_provinsi/'</script>";
        }
	}
    public function rekap_kabkota()
	{
        $data['title_page'] = "Rekap Kabupaten/ Kota";
        $data['breadcrumb'] = "Dashboard,Rekap Kabupaten/ Kota";
        $data['load']       =  array("admin/dashboard/rekap_kabkota"); 

        $this->load->view('template/footer', $data);
    }
    public function ubah_data_rekap_kabkota()
	{
        $data['title_page'] = "Ubah Data Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap Provinsi,Ubah Data";
		$data['load']       =  array("admin/dashboard/ubah_data_rekap_kabkota");
		$data['data_utama'] = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten,aa.nm_provinsi', array('md5(a.id_kabupaten)'=>$this->uri->segment(3)),'','','','',array(
            array(
                'table' => 'rekap_kabkota b',
				'on' => 'a.id_kabupaten=b.id_kabupaten',
				'pos' => 'LEFT'
            ),
            array(
                'table' => 'provinsi aa',
                'on' => 'a.id_provinsi=aa.id_provinsi',
                'pos' => 'LEFT'
            )
        ))->row();

        $this->load->view('template/footer', $data);
    }
    public function perbarui_data_rekap_kabkota(){
        $this->db->trans_start();
        $rencana_anggaran = preg_replace("/[^0-9]/", "", $this->input->post('rencana_anggaran'));
        $belum = 'X';
        $sedang = 'X';
        $review = 'X';
        $sudah = 'X';
        if($this->input->post('group1')=='belum'){
            $belum = 'V';
        }
        elseif($this->input->post('group1')=='sedang'){
            $sedang = 'V';
        }
        elseif($this->input->post('group1')=='review'){
            $review = 'V';
        }
        elseif($this->input->post('group1')=='sudah'){
            $sudah = 'V';
        }
        else{
            echo'';
        }
        $data_1 = array(
            'id_kabupaten' => $this->input->post('id_kabupaten'),
            'belum' => $belum,
            'sedang' => $sedang,
            'review' => $review,
            'sudah' => $sudah,
            'bentuk_kegiatan' => $this->input->post('bentuk_kegiatan'),
            'anggaran' => $rencana_anggaran
        );
        // print_r($data_1);
        $check = $this->Main_model->getSelectedData('rekap_kabkota a', 'a.*', array('a.id_kabupaten'=>$this->input->post('id_kabupaten')))->result();
		if($check==NULL){
            $this->Main_model->insertData('rekap_kabkota',$data_1);
		}else{
            $this->Main_model->updateData('rekap_kabkota',$data_1,array('id_kabupaten'=>$this->input->post('id_kabupaten')));
        }
        $this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Memperbarui data rekap kabupaten/ kota",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            $this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/ubah_data_rekap_kabkota/".md5($this->input->post('id_kabupaten'))."'</script>";
        }
        else{
            $this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/rekap_kabkota/'</script>";
        }
	}
}