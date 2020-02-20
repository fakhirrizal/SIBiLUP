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
    /* RP3KP */
    public function rekap_rp3kp_provinsi()
	{
        $data['title_page'] = "Rekap RP3KP Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap RP3KP Provinsi";
        $data['load']       =  array("admin/dashboard/rekap_rp3kp_provinsi");
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;

        $this->load->view('template/footer', $data);
    }
    public function ubah_data_rekap_rp3kp_provinsi()
	{
        $data['title_page'] = "Ubah Data Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap RP3KP Provinsi,Ubah Data";
		$data['load']       =  array("admin/dashboard/ubah_data_rekap_rp3kp_provinsi");
		$data['data_utama'] = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi,a.regional', array('md5(a.id_provinsi)'=>$this->uri->segment(3),''),'','','','',array(
            'table' => 'rekap_rp3kp_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
        ))->row();

        $this->load->view('template/footer', $data);
    }
    public function perbarui_data_rekap_rp3kp_provinsi(){
        $this->db->trans_start();
        // $rencana_anggaran = preg_replace("/[^0-9]/", "", $this->input->post('rencana_anggaran'));
        $belum = 'X';
        $menganggarkan = 'X';
        $sedang = 'X';
        $belum_legal = 'X';
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
        else{
            echo'';
        }
        if($this->input->post('group2')=='belum_legal'){
            $belum_legal = 'V';
        }
        elseif($this->input->post('group2')=='review'){
            $review = 'V';
        }
        elseif($this->input->post('group2')=='sudah'){
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
            'belum_legal' => $belum_legal,
            'review' => $review,
            'sudah' => $sudah,
            // 'bentuk_kegiatan' => $this->input->post('bentuk_kegiatan'),
            // 'anggaran' => $rencana_anggaran
            'tahun' => date('Y')
        );
        // print_r($data_1);
        $check = $this->Main_model->getSelectedData('rekap_rp3kp_provinsi a', 'a.*', array('a.id_provinsi'=>$this->input->post('id_provinsi'),'a.tahun'=>date('Y')))->result();
		if($check==NULL){
            $this->Main_model->insertData('rekap_rp3kp_provinsi',$data_1);
		}else{
            $this->Main_model->updateData('rekap_rp3kp_provinsi',$data_1,array('id_provinsi'=>$this->input->post('id_provinsi')));
        }
        $this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Memperbarui data rekap provinsi",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            $this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/ubah_data_rekap_rp3kp_provinsi/".md5($this->input->post('id_provinsi'))."'</script>";
        }
        else{
            $this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/rekap_rp3kp_provinsi/'</script>";
        }
	}
    public function rekap_rp3kp_kabkota()
	{
        $data['title_page'] = "Rekap RP3KP Kabupaten/ Kota";
        $data['breadcrumb'] = "Dashboard,Rekap RP3KP Kabupaten/ Kota";
        $data['load']       =  array("admin/dashboard/rekap_rp3kp_kabkota");
        if($this->input->post('search_field')==NULL){
            $data['get_where'] = 'semua';
        }else{
            $data['get_where'] = $this->input->post('search_field');
        }
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;
        $data['data_provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();

        $this->load->view('template/footer', $data);
    }
    public function ubah_data_rekap_rp3kp_kabkota()
	{
        $data['title_page'] = "Ubah Data Kabupaten/ Kota";
        $data['breadcrumb'] = "Dashboard,Rekap RP3KP Provinsi,Ubah Data";
		$data['load']       =  array("admin/dashboard/ubah_data_rekap_rp3kp_kabkota");
		$data['data_utama'] = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten,aa.nm_provinsi', array('md5(a.id_kabupaten)'=>$this->uri->segment(3),''),'','','','',array(
            array(
                'table' => 'rekap_rp3kp_kabkota b',
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
    public function perbarui_data_rekap_rp3kp_kabkota(){
        $this->db->trans_start();
        $rencana_anggaran = preg_replace("/[^0-9]/", "", $this->input->post('rencana_anggaran'));
        $belum = 'X';
        $menganggarkan = 'X';
        $sedang = 'X';
        $review = 'X';
        $sudah = 'X';
        $belum_legal = 'X';
        // if($this->input->post('group1')=='belum'){
        //     $belum = 'V';
        // }
        // elseif($this->input->post('group1')=='sedang'){
        //     $sedang = 'V';
        // }
        // elseif($this->input->post('group1')=='review'){
        //     $review = 'V';
        // }
        // elseif($this->input->post('group1')=='sudah'){
        //     $sudah = 'V';
        // }
        // else{
        //     echo'';
        // }
        if($this->input->post('group1')=='belum'){
            $belum = 'V';
        }
        elseif($this->input->post('group1')=='menganggarkan'){
            $menganggarkan = 'V';
        }
        elseif($this->input->post('group1')=='sedang'){
            $sedang = 'V';
        }
        else{
            echo'';
        }
        if($this->input->post('group2')=='belum_legal'){
            $belum_legal = 'V';
        }
        elseif($this->input->post('group2')=='review'){
            $review = 'V';
        }
        elseif($this->input->post('group2')=='sudah'){
            $sudah = 'V';
        }
        else{
            echo'';
        }
        $data_1 = array(
            'id_kabupaten' => $this->input->post('id_kabupaten'),
            'belum' => $belum,
            'menganggarkan' => $menganggarkan,
            'sedang' => $sedang,
            'belum_legal' => $belum_legal,
            'review' => $review,
            'sudah' => $sudah,
            'bentuk_kegiatan' => $this->input->post('bentuk_kegiatan'),
            'anggaran' => $rencana_anggaran,
            'tahun' => date('Y')
        );
        // print_r($data_1);
        $check = $this->Main_model->getSelectedData('rekap_rp3kp_kabkota a', 'a.*', array('a.id_kabupaten'=>$this->input->post('id_kabupaten'),'a.tahun'=>date('Y')))->result();
		if($check==NULL){
            $this->Main_model->insertData('rekap_rp3kp_kabkota',$data_1);
		}else{
            $this->Main_model->updateData('rekap_rp3kp_kabkota',$data_1,array('id_kabupaten'=>$this->input->post('id_kabupaten')));
        }
        $this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Memperbarui data rekap kabupaten/ kota",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            $this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/ubah_data_rekap_rp3kp_kabkota/".md5($this->input->post('id_kabupaten'))."'</script>";
        }
        else{
            $this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/rekap_rp3kp_kabkota/'</script>";
        }
    }
    /* Pokja PKP */
    public function rekap_pokja_pkp_provinsi()
	{
        $data['title_page'] = "Rekap Pokja PKP Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap Pokja PKP Provinsi";
        $data['load']       =  array("admin/dashboard/rekap_pokja_pkp_provinsi"); 

        $data['get_where'] = '';
        if($this->input->post('jenis')!=NULL){
            $data['get_where'] = $this->input->post('jenis');
        }else{
            echo'';
        }
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;

        $this->load->view('template/footer', $data);
    }
    public function ubah_data_rekap_pokja_pkp_provinsi()
	{
        $data['title_page'] = "Ubah Data Provinsi";
        $data['breadcrumb'] = "Dashboard,Rekap Pokja PKP Provinsi,Ubah Data";
		$data['load']       =  array("admin/dashboard/ubah_data_rekap_pokja_pkp_provinsi");
		$data['data_utama'] = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi', array('md5(a.id_provinsi)'=>$this->uri->segment(3),''),'','','','',array(
            'table' => 'rekap_pokja_pkp_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
        ))->row();

        $this->load->view('template/footer', $data);
    }
    public function perbarui_data_rekap_pokja_pkp_provinsi(){
        $this->db->trans_start();
        $data_1 = array(
            'id_provinsi' => $this->input->post('id_provinsi'),
            'penggabungan' => $this->input->post('penggabungan'),
            'program' => $this->input->post('program'),
            'ketua' => $this->input->post('ketua'),
            'perayaan' => $this->input->post('perayaan'),
            'apbd' => $this->input->post('apbd'),
            'tahun' => date('Y')
        );
        // print_r($data_1);
        $check = $this->Main_model->getSelectedData('rekap_pokja_pkp_provinsi a', 'a.*', array('a.id_provinsi'=>$this->input->post('id_provinsi'),'a.tahun'=>date('Y')))->result();
		if($check==NULL){
            $this->Main_model->insertData('rekap_pokja_pkp_provinsi',$data_1);
		}else{
            $this->Main_model->updateData('rekap_pokja_pkp_provinsi',$data_1,array('id_provinsi'=>$this->input->post('id_provinsi')));
        }
        $this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Memperbarui data rekap provinsi",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            $this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/ubah_data_rekap_pokja_pkp_provinsi/".md5($this->input->post('id_provinsi'))."'</script>";
        }
        else{
            $this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/rekap_pokja_pkp_provinsi/'</script>";
        }
    }
    public function rekap_pokja_pkp_kabkota()
	{
        $data['title_page'] = "Rekap Pokja PKP Kabupaten/ Kota";
        $data['breadcrumb'] = "Dashboard,Rekap Pokja PKP Kabupaten/ Kota";
        $data['load']       =  array("admin/dashboard/rekap_pokja_pkp_kabkota");
        if($this->input->post('search_field')==NULL){
            $data['get_where'] = 'semua';
        }else{
            $data['get_where'] = $this->input->post('search_field');
        }
        $tahun = date('Y');
        if($this->input->post('tahun')==''){
            echo'';
        }else{
            $tahun = $this->input->post('tahun');
        }
        $data['tahun'] = $tahun;
        $data['data_provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();

        $data['data_hitung1'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE (c.status="Selesai" OR c.sk="V") AND b.id_provinsi=a.id_provinsi AND c.tahun='.$tahun.') AS jml')->result();
        $data['data_hitung2'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE c.penggabungan="Sudah" AND b.id_provinsi=a.id_provinsi AND c.tahun='.$tahun.') AS jml')->result();
        $data['data_hitung3'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE c.forum="Ya" AND b.id_provinsi=a.id_provinsi AND c.tahun='.$tahun.') AS jml')->result();
        $data['data_hitung4'] = $this->Main_model->getSelectedData('provinsi a', 'a.*,(SELECT COUNT(c.id_kabupaten) FROM rekap_pokja_pkp_kabkota c LEFT JOIN kabupaten b ON c.id_kabupaten=b.id_kabupaten WHERE c.apbd="Ya" AND b.id_provinsi=a.id_provinsi AND c.tahun='.$tahun.') AS jml')->result();
        $this->load->view('template/footer', $data);
    }
    public function ubah_data_rekap_pokja_pkp_kabkota()
	{
        $data['title_page'] = "Ubah Data Kabupaten/ Kota";
        $data['breadcrumb'] = "Dashboard,Rekap Pokja PKP Kabupaten/ Kota,Ubah Data";
		$data['load']       =  array("admin/dashboard/ubah_data_rekap_pokja_pkp_kabkota");
		$data['data_utama'] = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten', array('md5(a.id_kabupaten)'=>$this->uri->segment(3),''),'','','','',array(
            'table' => 'rekap_pokja_pkp_kabkota b',
			'on' => 'a.id_kabupaten=b.id_kabupaten',
			'pos' => 'LEFT'
        ))->row();

        $this->load->view('template/footer', $data);
    }
    public function perbarui_data_rekap_pokja_pkp_kabkota(){
        $this->db->trans_start();
        $data_1 = array(
            'id_kabupaten' => $this->input->post('id_kabupaten'),
            'status' => $this->input->post('status'),
            'sk' => $this->input->post('sk'),
            'penggabungan' => $this->input->post('penggabungan'),
            'program' => $this->input->post('program'),
            'forum' => $this->input->post('forum'),
            'apbd' => $this->input->post('apbd'),
            'tahun' => date('Y')
        );
        // print_r($data_1);
        $check = $this->Main_model->getSelectedData('rekap_pokja_pkp_kabkota a', 'a.*', array('a.id_kabupaten'=>$this->input->post('id_kabupaten'),'a.tahun'=>date('Y')))->result();
		if($check==NULL){
            $this->Main_model->insertData('rekap_pokja_pkp_kabkota',$data_1);
		}else{
            $this->Main_model->updateData('rekap_pokja_pkp_kabkota',$data_1,array('id_kabupaten'=>$this->input->post('id_kabupaten')));
        }
        $this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Memperbarui data rekap kabupaten",$this->session->userdata('location'));
        $this->db->trans_complete();
        if($this->db->trans_status() === false){
            $this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/ubah_data_rekap_pokja_pkp_kabkota/".md5($this->input->post('id_kabupaten'))."'</script>";
        }
        else{
            $this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
            echo "<script>window.location='".base_url()."admin_side/rekap_pokja_pkp_kabkota/'</script>";
        }
    }
}