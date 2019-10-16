<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Map extends CI_Controller {
	function __construct() {
		parent::__construct();
	}
	public function templates()
	{	
		$this->load->view('template/header');
		$this->load->view('template/aside');
	}
	/* Provinsi */
	public function province()
	{
		$this->templates();
        $data['title_page'] = "Data Provinsi";
        $data['breadcrumb'] = "Master,Peta,Data Provinsi";
        $data['load']       =  array("admin/master/map/province"); 

        $this->load->view('template/footer', $data);
	}
	public function json_peta_provinsi(){
		$get_data = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			$return_on_click = "return confirm('Anda yakin?')";
			$regional = '';
			if($value->regional=='B'){
				$regional = 'Barat';
			}elseif($value->regional=='T'){
				$regional = 'Timur';
			}else{
				echo'';
			}
			$isi['regional'] = $regional;
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_provinsi/'.md5($value->id_provinsi)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
									<a href="'.base_url('admin_side/hapus_data_provinsi/'.md5($value->id_provinsi)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
	}
	public function json_rekap_rp3kp_provinsi(){
		$get_data = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi,a.regional', '', '', '', '', '', array(
			'table' => 'rekap_rp3kp_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			// if($value->belum==NULL){
			// 	$isi['belum'] = 'X';
			// }else{
			// 	$isi['belum'] = $value->belum;
			// }
			// if($value->menganggarkan==NULL){
			// 	$isi['menganggarkan'] = 'X';
			// }else{
			// 	$isi['menganggarkan'] = $value->menganggarkan;
			// }
			// if($value->sedang==NULL){
			// 	$isi['sedang'] = 'X';
			// }else{
			// 	$isi['sedang'] = $value->sedang;
			// }
			// if($value->belum_legal==NULL){
			// 	$isi['belum_legal'] = 'X';
			// }else{
			// 	$isi['belum_legal'] = $value->belum_legal;
			// }
			// if($value->review==NULL){
			// 	$isi['review'] = 'X';
			// }else{
			// 	$isi['review'] = $value->review;
			// }
			// if($value->sudah==NULL){
			// 	$isi['sudah'] = 'X';
			// }else{
			// 	$isi['sudah'] = $value->sudah;
			// }
            // $isi['bentuk_kegiatan'] = $value->bentuk_kegiatan;
			// $isi['anggaran'] = 'Rp '.number_format($value->anggaran,2);
			// $regional = '';
			// if($value->regional=='B'){
			// 	$regional = 'Barat';
			// }elseif($value->regional=='T'){
			// 	$regional = 'Timur';
			// }else{
			// 	echo'';
            // }
			// $isi['regional'] = $regional;
			if($value->belum==NULL AND $value->menganggarkan==NULL AND $value->sedang==NULL){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->menganggarkan=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sedang=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			if($value->belum_legal==NULL AND $value->review==NULL AND $value->sudah==NULL){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum_legal=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->review=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sudah=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_rp3kp_provinsi/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
			
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function json_rekap_rp3kp_provinsi2(){
		$get_data = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi,a.regional', '', '', '', '', '', array(
			'table' => 'rekap_rp3kp_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			if($value->belum==NULL AND $value->menganggarkan==NULL AND $value->sedang==NULL){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->menganggarkan=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sedang=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			if($value->belum_legal==NULL AND $value->review==NULL AND $value->sudah==NULL){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum_legal=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->review=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sudah=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			
			$data_tampil[] = $isi;
			
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function json_rekap_pokja_pkp_provinsi(){
		$get_data = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi', '', '', '', '', '', array(
			'table' => 'rekap_pokja_pkp_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			// if($value->penggabungan==NULL){
			// 	$isi['penggabungan'] = 'Belum';
			// }else{
			// 	$isi['penggabungan'] = $value->penggabungan;
			// }
			if($value->penggabungan==NULL){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/remove.png" width="25%"/>';
			}elseif($value->penggabungan=='Proses'){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/question.png" width="25%"/>';
			}elseif($value->penggabungan=='Sudah'){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/checkmark.png" width="25%"/>';
			}else{
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/remove.png" width="25%"/>';
			}
			if($value->program==NULL OR $value->program=='Tidak'){
				$isi['program'] = '<img src="'.site_url().'assets/images/remove.png" width="27%"/>';
			}else{
				$isi['program'] = '<img src="'.site_url().'assets/images/checkmark.png" width="27%"/>';
			}
			// if($value->program==NULL){
			// 	$isi['program'] = 'Tidak';
			// }else{
			// 	$isi['program'] = $value->program;
			// }
			if($value->ketua==NULL){
				$isi['ketua'] = '';
			}else{
				$isi['ketua'] = $value->ketua;
			}
			if($value->perayaan==NULL OR $value->perayaan=='Tidak'){
				$isi['perayaan'] = '<img src="'.site_url().'assets/images/remove.png" width="27%"/>';
			}else{
				$isi['perayaan'] = '<img src="'.site_url().'assets/images/checkmark.png" width="27%"/>';
			}
			// if($value->perayaan==NULL){
			// 	$isi['perayaan'] = 'Tidak';
			// }else{
			// 	$isi['perayaan'] = $value->perayaan;
			// }
			if($value->apbd==NULL OR $value->apbd=='Tidak'){
				$isi['apbd'] = '<img src="'.site_url().'assets/images/remove.png" width="27%"/>';
			}else{
				$isi['apbd'] = '<img src="'.site_url().'assets/images/checkmark.png" width="27%"/>';
			}
			// if($value->apbd==NULL){
			// 	$isi['apbd'] = 'Tidak';
			// }else{
			// 	$isi['apbd'] = $value->apbd;
			// }
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_pokja_pkp_provinsi/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function json_rekap_pokja_pkp_provinsi2(){
		$get_data = $this->Main_model->getSelectedData('provinsi a', 'b.*,a.id_provinsi AS id,a.nm_provinsi', '', '', '', '', '', array(
			'table' => 'rekap_pokja_pkp_provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'LEFT'
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			// if($value->penggabungan==NULL){
			// 	$isi['penggabungan'] = 'Belum';
			// }else{
			// 	$isi['penggabungan'] = $value->penggabungan;
			// }
			if($value->penggabungan==NULL){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/remove.png" width="25%"/>';
			}elseif($value->penggabungan=='Proses'){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/question.png" width="25%"/>';
			}elseif($value->penggabungan=='Sudah'){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/checkmark.png" width="25%"/>';
			}else{
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/remove.png" width="25%"/>';
			}
			if($value->program==NULL OR $value->program=='Tidak'){
				$isi['program'] = '<img src="'.site_url().'assets/images/remove.png" width="27%"/>';
			}else{
				$isi['program'] = '<img src="'.site_url().'assets/images/checkmark.png" width="27%"/>';
			}
			// if($value->program==NULL){
			// 	$isi['program'] = 'Tidak';
			// }else{
			// 	$isi['program'] = $value->program;
			// }
			if($value->ketua==NULL){
				$isi['ketua'] = '';
			}else{
				$isi['ketua'] = $value->ketua;
			}
			if($value->perayaan==NULL OR $value->perayaan=='Tidak'){
				$isi['perayaan'] = '<img src="'.site_url().'assets/images/remove.png" width="27%"/>';
			}else{
				$isi['perayaan'] = '<img src="'.site_url().'assets/images/checkmark.png" width="27%"/>';
			}
			// if($value->perayaan==NULL){
			// 	$isi['perayaan'] = 'Tidak';
			// }else{
			// 	$isi['perayaan'] = $value->perayaan;
			// }
			if($value->apbd==NULL OR $value->apbd=='Tidak'){
				$isi['apbd'] = '<img src="'.site_url().'assets/images/remove.png" width="27%"/>';
			}else{
				$isi['apbd'] = '<img src="'.site_url().'assets/images/checkmark.png" width="27%"/>';
			}
			// if($value->apbd==NULL){
			// 	$isi['apbd'] = 'Tidak';
			// }else{
			// 	$isi['apbd'] = $value->apbd;
			// }
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_pokja_pkp_provinsi/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function add_province()
	{
		$this->templates();
        $data['title_page'] = "Tambah Data Provinsi";
        $data['breadcrumb'] = "Master,Peta,Data Provinsi,Tambah Data";
        $data['load']       =  array("admin/master/map/add_province"); 

		$this->load->view('template/footer', $data);
	}
	public function save_province(){
		$this->db->trans_start();
		$file_kml = '';
		$nmfile = "file_".time();
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/peta/';
		$config['allowed_types'] = 'kml';
		$config['max_size'] = '9072';
		$config['file_name'] = $nmfile;

		$this->upload->initialize($config);

		if(isset($_FILES['kml']['name']))
		{
			if(!$this->upload->do_upload('kml'))
			{
				echo'';
			}
			else
			{
				$gbr = $this->upload->data();
				$file_kml = $gbr['file_name'];
			}
		}
		$data_insert = array(
			'nm_provinsi' => $this->input->post('nm_provinsi'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude'),
			'kml' => $file_kml
		);
		$this->Main_model->insertData("provinsi",$data_insert);

		$this->Main_model->log_activity($this->session->userdata('id'),'Adding data',"Add province data (".$this->input->post('nm_provinsi').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tambah_data_provinsi'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_provinsi/'</script>";
		}
	}
	public function edit_province()
	{
		$this->templates();
        $data['title_page'] = "Ubah Data Provinsi";
        $data['breadcrumb'] = "Master,Peta,Data Provinsi,Ubah Data";
		$data['load']       =  array("admin/master/map/edit_province");
		$data['data_utama'] = $this->Main_model->getSelectedData('provinsi a', 'a.*', array('md5(a.id_provinsi)'=>$this->uri->segment(3)))->row();

		$this->load->view('template/footer', $data);
	}
	public function update_province_data(){
		$this->db->trans_start();
		$nmfile = "file_".time();
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/peta/';
		$config['allowed_types'] = 'kml';
		$config['max_size'] = '9072';
		$config['file_name'] = $nmfile;

		$this->upload->initialize($config);

		if(isset($_FILES['kml']['name']))
		{
			if(!$this->upload->do_upload('kml'))
			{
				echo'';
			}
			else
			{
				$gbr = $this->upload->data();
				$this->Main_model->updateData("provinsi",array('kml'=>$gbr['file_name']),array('md5(id_provinsi)'=>$this->input->post('id_provinsi')));
			}
		}
		$data_update = array(
			'nm_provinsi' => $this->input->post('nm_provinsi'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude')
		);
		$this->Main_model->updateData("provinsi",$data_update,array('md5(id_provinsi)'=>$this->input->post('id_provinsi')));

		$this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Update province data (".$this->input->post('nm_provinsi').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/ubah_data_provinsi/".$this->input->post('id_provinsi')."'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_provinsi/'</script>";
		}
	}
	public function delete_province(){
		$this->db->trans_start();
		$nama_provinsi = '';

		$get_data = $this->Main_model->getSelectedData('provinsi a', 'a.*',array('md5(a.id_provinsi)'=>$this->uri->segment(3)))->row();
		$nama_provinsi = $get_data->nm_provinsi;

		$this->Main_model->deleteData('provinsi',array('md5(id_provinsi)'=>$this->uri->segment(3)));

		$this->Main_model->log_activity($this->session->userdata('id'),"Deleting province","Delete province (".$nama_provinsi.")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_provinsi'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_provinsi'</script>";
		}
	}
	/* Kabupaten/ Kota */
	public function city()
	{
		$this->templates();
        $data['title_page'] = "Data Kabupaten/ Kota";
        $data['breadcrumb'] = "Master,Peta,Data Kabupaten/ Kota";
        $data['load']       =  array("admin/master/map/city"); 

		$this->load->view('template/footer', $data);
	}
	public function json_peta_kabupaten(){
		$get_data = $this->Main_model->getSelectedData('kabupaten a', 'a.*,b.nm_provinsi','','','','','',array(
			'table' => 'provinsi b',
			'on' => 'a.id_provinsi=b.id_provinsi',
			'pos' => 'left',
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['checkbox'] =	'
								<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
									<input type="checkbox" class="checkboxes" name="selected_id[]" value="'.$value->id_kabupaten.'"/>
									<span></span>
								</label>
								';
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			$isi['nm_kabupaten'] = $value->nm_kabupaten;
			$return_on_click = "return confirm('Anda yakin?')";
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_kabkot/'.md5($value->id_kabupaten)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
									<a href="'.base_url('admin_side/hapus_data_kabkot/'.md5($value->id_kabupaten)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
	}
	public function json_rekap_rp3kp_kabupaten(){
		$get_data = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten', '', '', '', '', '', array(
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
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_kabupaten'] = $value->nm_kabupaten;
			// if($value->belum==NULL){
			// 	$isi['belum'] = 'X';
			// }else{
			// 	$isi['belum'] = $value->belum;
			// }
			// if($value->menganggarkan==NULL){
			// 	$isi['menganggarkan'] = 'X';
			// }else{
			// 	$isi['menganggarkan'] = $value->menganggarkan;
			// }
			// if($value->sedang==NULL){
			// 	$isi['sedang'] = 'X';
			// }else{
			// 	$isi['sedang'] = $value->sedang;
			// }
			// if($value->review==NULL){
			// 	$isi['review'] = 'X';
			// }else{
			// 	$isi['review'] = $value->review;
			// }
			// if($value->sudah==NULL){
			// 	$isi['sudah'] = 'X';
			// }else{
			// 	$isi['sudah'] = $value->sudah;
			// }
            // $isi['bentuk_kegiatan'] = $value->bentuk_kegiatan;
			// $isi['anggaran'] = 'Rp '.number_format($value->anggaran,2);
			if($value->belum==NULL AND $value->menganggarkan==NULL AND $value->sedang==NULL){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->menganggarkan=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sedang=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			if($value->belum_legal==NULL AND $value->review==NULL AND $value->sudah==NULL){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum_legal=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->review=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sudah=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_rp3kp_kabkota/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function json_rekap_rp3kp_kabupaten2(){
		$get_data = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten', '', '', '', '', '', array(
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
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_kabupaten'] = $value->nm_kabupaten;
			// if($value->belum==NULL){
			// 	$isi['belum'] = 'X';
			// }else{
			// 	$isi['belum'] = $value->belum;
			// }
			// if($value->menganggarkan==NULL){
			// 	$isi['menganggarkan'] = 'X';
			// }else{
			// 	$isi['menganggarkan'] = $value->menganggarkan;
			// }
			// if($value->sedang==NULL){
			// 	$isi['sedang'] = 'X';
			// }else{
			// 	$isi['sedang'] = $value->sedang;
			// }
			// if($value->review==NULL){
			// 	$isi['review'] = 'X';
			// }else{
			// 	$isi['review'] = $value->review;
			// }
			// if($value->sudah==NULL){
			// 	$isi['sudah'] = 'X';
			// }else{
			// 	$isi['sudah'] = $value->sudah;
			// }
            // $isi['bentuk_kegiatan'] = $value->bentuk_kegiatan;
			// $isi['anggaran'] = 'Rp '.number_format($value->anggaran,2);
			if($value->belum==NULL AND $value->menganggarkan==NULL AND $value->sedang==NULL){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->menganggarkan=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sedang=='V'){
				$isi['status'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			if($value->belum_legal==NULL AND $value->review==NULL AND $value->sudah==NULL){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->belum_legal=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}elseif($value->review=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/question.png" width="10%"/>';
			}elseif($value->sudah=='V'){
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/checkmark.png" width="10%"/>';
			}else{
				$isi['legalisasi'] = '<img src="'.site_url().'assets/images/remove.png" width="10%"/>';
			}
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_rp3kp_kabkota/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function json_rekap_pokja_pkp_kabupaten(){
		$get_data = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten', '', '', '', '', '', array(
			'table' => 'rekap_pokja_pkp_kabkota b',
			'on' => 'a.id_kabupaten=b.id_kabupaten',
			'pos' => 'LEFT'
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_kabupaten'] = $value->nm_kabupaten;
			$isi['belum'] = '';
			$isi['proses'] = '';
			$isi['selesai'] = '';
			if($value->status==NULL OR $value->status=='Belum'){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="45%"/>';
			}elseif($value->status=='Proses'){
				$isi['status'] = '<img src="'.site_url().'assets/images/question.png" width="45%"/>';
			}else{
				$isi['status'] = '<img src="'.site_url().'assets/images/checkmark.png" width="45%"/>';
			}
			if($value->sk=='V'){
				$isi['sk'] = '<img src="'.site_url().'assets/images/checkmark.png" width="50%"/>';
			}else{
				$isi['sk'] = '';
			}
			if($value->penggabungan==NULL OR $value->penggabungan=='Belum'){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			if($value->program==NULL OR $value->program=="Tidak"){
				$isi['program'] = '<img src="'.site_url().'assets/images/remove.png" width="40%"/>';
			}else{
				$isi['program'] = '<img src="'.site_url().'assets/images/checkmark.png" width="40%"/>';
			}
			if($value->forum==NULL OR $value->forum=='Tidak'){
				$isi['forum'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['forum'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			if($value->apbd==NULL OR $value->apbd=='Tidak'){
				$isi['apbd'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['apbd'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_pokja_pkp_kabkota/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function json_rekap_pokja_pkp_kabupaten2(){
		$get_data = $this->Main_model->getSelectedData('kabupaten a', 'b.*,a.id_kabupaten AS id,a.nm_kabupaten', '', '', '', '', '', array(
			'table' => 'rekap_pokja_pkp_kabkota b',
			'on' => 'a.id_kabupaten=b.id_kabupaten',
			'pos' => 'LEFT'
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nm_kabupaten'] = $value->nm_kabupaten;
			$isi['belum'] = '';
			$isi['proses'] = '';
			$isi['selesai'] = '';
			if($value->status==NULL OR $value->status=='Belum'){
				$isi['status'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}elseif($value->status=='Proses'){
				$isi['status'] = '<img src="'.site_url().'assets/images/question.png" width="35%"/>';
			}else{
				$isi['status'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			if($value->sk=='V'){
				$isi['sk'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}else{
				$isi['sk'] = '';
			}
			if($value->penggabungan==NULL OR $value->penggabungan=='Belum'){
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['penggabungan'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			if($value->program==NULL OR $value->program=="Tidak"){
				$isi['program'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['program'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			if($value->forum==NULL OR $value->forum=='Tidak'){
				$isi['forum'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['forum'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			if($value->apbd==NULL OR $value->apbd=='Tidak'){
				$isi['apbd'] = '<img src="'.site_url().'assets/images/remove.png" width="35%"/>';
			}else{
				$isi['apbd'] = '<img src="'.site_url().'assets/images/checkmark.png" width="35%"/>';
			}
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_rekap_pokja_pkp_kabkota/'.md5($value->id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
		// print_r($get_data);
	}
	public function add_city()
	{
		$this->templates();
        $data['title_page'] = "Tambah Data Kabupaten/ Kota";
        $data['breadcrumb'] = "Master,Peta,Data Kabupaten/ Kota,Tambah Data";
		$data['load']       =  array("admin/master/map/add_city");
		$data['provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result(); 

		$this->load->view('template/footer', $data);
	}
	public function save_city(){
		$this->db->trans_start();
		$file_kml = '';
		$nmfile = "file_".time();
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/peta_kabupaten/';
		$config['allowed_types'] = 'kml';
		$config['max_size'] = '9072';
		$config['file_name'] = $nmfile;

		$this->upload->initialize($config);

		if(isset($_FILES['kml']['name']))
		{
			if(!$this->upload->do_upload('kml'))
			{
				echo'';
			}
			else
			{
				$gbr = $this->upload->data();
				$file_kml = $gbr['file_name'];
			}
		}
		$data_insert = array(
			'id_provinsi' => $this->input->post('id_provinsi'),
			'nm_kabupaten' => $this->input->post('nm_kabupaten'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude'),
			'kml' => $file_kml
		);
		$this->Main_model->insertData("kabupaten",$data_insert);

		$this->Main_model->log_activity($this->session->userdata('id'),'Adding data',"Add city data (".$this->input->post('nm_kabupaten').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tambah_data_kabkot'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kabkot/'</script>";
		}
	}
	public function edit_city()
	{
		$this->templates();
        $data['title_page'] = "Ubah Data Kabupaten/ Kota";
        $data['breadcrumb'] = "Master,Peta,Data Kabupaten/ Kota,Ubah Data";
		$data['load']       =  array("admin/master/map/edit_city");
		$data['provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
		$data['data_utama'] = $this->Main_model->getSelectedData('kabupaten a', 'a.*', array('md5(a.id_kabupaten)'=>$this->uri->segment(3)))->row();
		$this->load->view('template/footer', $data);
	}
	public function update_city_data(){
		$this->db->trans_start();
		$nmfile = "file_".time();
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/peta_kabupaten/';
		$config['allowed_types'] = 'kml';
		$config['max_size'] = '9072';
		$config['file_name'] = $nmfile;

		$this->upload->initialize($config);

		if(isset($_FILES['kml']['name']))
		{
			if(!$this->upload->do_upload('kml'))
			{
				echo'';
			}
			else
			{
				$gbr = $this->upload->data();
				$this->Main_model->updateData("kabupaten",array('kml'=>$gbr['file_name']),array('md5(id_kabupaten)'=>$this->input->post('id_kabupaten')));
			}
		}
		$data_update = array(
			'id_provinsi' => $this->input->post('id_provinsi'),
			'nm_kabupaten' => $this->input->post('nm_kabupaten'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude')
		);
		$this->Main_model->updateData("kabupaten",$data_update,array('md5(id_kabupaten)'=>$this->input->post('id_kabupaten')));

		$this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Update city data (".$this->input->post('nm_kabupaten').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/ubah_data_kabkot/".$this->input->post('id_kabupaten')."'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kabkot/'</script>";
		}
	}
	public function delete_city(){
		$this->db->trans_start();
		$nama_kabupaten = '';

		$get_data = $this->Main_model->getSelectedData('kabupaten a', 'a.*',array('md5(a.id_kabupaten)'=>$this->uri->segment(3)))->row();
		$nama_kabupaten = $get_data->nm_kabupaten;

		$this->Main_model->deleteData('kabupaten',array('md5(id_kabupaten)'=>$this->uri->segment(3)));

		$this->Main_model->log_activity($this->session->userdata('id'),"Deleting city","Delete city (".$nama_kabupaten.")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kabkot'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kabkot'</script>";
		}
	}
	/* Kecamatan */
	public function sub_district()
	{
		$data['parent'] = 'master';
		$data['child'] = 'map';
		$data['grand_child'] = 'sub_district';
		$data_kecamatan = $this->Main_model->getSelectedData('kecamatan a', 'a.*',array('md5(a.id_kecamatan)'=>$this->uri->segment(3)))->result();
		$kml = '';
		$wilayah = '';
		foreach ($data_kecamatan as $key => $value) {
			$kml = $value->kml;
			$wilayah = $value->nm_kecamatan;
		}
		$data['wilayah'] = $wilayah;
		$data['kml'] = $kml;
		$data['data_marker'] = $this->Main_model->getSelectedData('desa a', 'a.*',array('md5(a.id_kecamatan)'=>$this->uri->segment(3)))->result();
		$this->load->view('admin/template/header',$data);
		$this->load->view('admin/master/map/sub_district',$data);
		$this->load->view('admin/template/footer');
	}
	public function json_peta_kecamatan(){
		$get_data = $this->Main_model->getSelectedData('kecamatan a', 'a.*,b.nm_provinsi,c.nm_kabupaten','','','','','',array(
			array(
				'table' => 'provinsi b',
				'on' => 'a.id_provinsi=b.id_provinsi',
				'pos' => 'left'
			),
			array(
				'table' => 'kabupaten c',
				'on' => 'a.id_kabupaten=c.id_kabupaten',
				'pos' => 'left'
			)
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['checkbox'] =	'
								<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
									<input type="checkbox" class="checkboxes" name="selected_id[]" value="'.$value->id_kecamatan.'"/>
									<span></span>
								</label>
								';
			$isi['number'] = $no++.'.';
			$isi['nm_provinsi'] = $value->nm_provinsi;
			$isi['nm_kabupaten'] = $value->nm_kabupaten;
			$isi['nm_kecamatan'] = $value->nm_kecamatan;
			$return_on_click = "return confirm('Anda yakin?')";
			$isi['action'] =	'
								<div class="btn-group">
									<button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Aksi
										<i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="'.site_url('admin_side/ubah_data_kecamatan/'.md5($value->id_kecamatan)).'">
												<i class="icon-wrench"></i> Ubah Data </a>
										</li>
										<li>
											<a onclick="'.$return_on_click.'" href="'.site_url('admin_side/hapus_data_kecamatan/'.md5($value->id_kecamatan)).'">
												<i class="icon-trash"></i> Hapus Data </a>
										</li>
									</ul>
								</div>
								';
			$data_tampil[] = $isi;
		}
		$results = array(
			"sEcho" => 1,
			"iTotalRecords" => count($data_tampil),
			"iTotalDisplayRecords" => count($data_tampil),
			"aaData"=>$data_tampil);
		echo json_encode($results);
	}
	public function add_sub_district()
	{
		$data['parent'] = 'master';
		$data['child'] = 'map';
		$data['grand_child'] = 'sub_district';
		$data['provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
		$this->load->view('admin/template/header',$data);
		$this->load->view('admin/master/map/add_sub_district',$data);
		$this->load->view('admin/template/footer');
	}
	public function save_sub_district(){
		$this->db->trans_start();
		$file_kml = '';
		$nmfile = "file_".time();
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/peta_kec/';
		$config['allowed_types'] = 'kml';
		$config['max_size'] = '9072';
		$config['file_name'] = $nmfile;

		$this->upload->initialize($config);

		if(isset($_FILES['kml']['name']))
		{
			if(!$this->upload->do_upload('kml'))
			{
				echo'';
			}
			else
			{
				$gbr = $this->upload->data();
				$file_kml = $gbr['file_name'];
			}
		}
		$data_insert = array(
			'id_provinsi' => $this->input->post('id_provinsi'),
			'id_kabupaten' => $this->input->post('id_kabupaten'),
			'nm_kecamatan' => $this->input->post('nm_kecamatan'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude'),
			'kml' => $file_kml
		);
		$this->Main_model->insertData("kecamatan",$data_insert);

		$this->Main_model->log_activity($this->session->userdata('id'),'Tambah data',"Tambah data Kecamatan (".$this->input->post('nm_kecamatan').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tambah_data_kecamatan'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kecamatan/'</script>";
		}
	}
	public function edit_sub_district()
	{
		$data['parent'] = 'master';
		$data['child'] = 'map';
		$data['grand_child'] = 'sub_district';
		$data['provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
		$data['data_utama'] = $this->Main_model->getSelectedData('kecamatan a', 'a.*,b.nm_kabupaten', array('md5(a.id_kecamatan)'=>$this->uri->segment(3)),'','','','',array(
			'table' => 'kabupaten b',
			'on' => 'a.id_kabupaten=b.id_kabupaten',
			'pos' => 'left',
		))->row();
		$this->load->view('admin/template/header',$data);
		$this->load->view('admin/master/map/edit_sub_district',$data);
		$this->load->view('admin/template/footer');
	}
	public function update_sub_district_data(){
		$this->db->trans_start();
		$nmfile = "file_".time();
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/peta_kec/';
		$config['allowed_types'] = 'kml';
		$config['max_size'] = '9072';
		$config['file_name'] = $nmfile;

		$this->upload->initialize($config);

		if(isset($_FILES['kml']['name']))
		{
			if(!$this->upload->do_upload('kml'))
			{
				echo'';
			}
			else
			{
				$gbr = $this->upload->data();
				$this->Main_model->updateData("kecamatan",array('kml'=>$gbr['file_name']),array('md5(id_kecamatan)'=>$this->input->post('id_kecamatan')));
			}
		}
		$data_update = array(
			'id_provinsi' => $this->input->post('id_provinsi'),
			'id_kabupaten' => $this->input->post('id_kabupaten'),
			'nm_kecamatan' => $this->input->post('nm_kecamatan'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude')
		);
		$this->Main_model->updateData("kecamatan",$data_update,array('md5(id_kecamatan)'=>$this->input->post('id_kecamatan')));

		$this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Update sub_district data (".$this->input->post('nm_kecamatan').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/ubah_data_kecamatan/".$this->input->post('id_kecamatan')."'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kecamatan/'</script>";
		}
	}
	public function delete_sub_district(){
		$this->db->trans_start();
		$nama_kecamatan = '';

		$get_data = $this->Main_model->getSelectedData('kecamatan a', 'a.*',array('md5(a.id_kecamatan)'=>$this->uri->segment(3)))->row();
		$nama_kecamatan = $get_data->nm_kecamatan;

		$this->Main_model->deleteData('kecamatan',array('md5(id_kecamatan)'=>$this->uri->segment(3)));

		$this->Main_model->log_activity($this->session->userdata('id'),"Hapus data","Hapus data Kecamatan (".$nama_kecamatan.")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kecamatan'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kecamatan'</script>";
		}
	}
	/* Kelurahan */
	public function village()
	{
		$data['parent'] = 'master';
		$data['child'] = 'map';
		$data['grand_child'] = 'village';
		$data_kecamatan = $this->Main_model->getSelectedData('kecamatan a', 'a.*',array('md5(a.id_kecamatan)'=>$this->uri->segment(3)))->result();
		$kml = '';
		$wilayah = '';
		foreach ($data_kecamatan as $key => $value) {
			$kml = $value->kml;
			$wilayah = $value->nm_kecamatan;
		}
		$data['wilayah'] = $wilayah;
		$data['kml'] = $kml;
		$data['data_marker'] = $this->Main_model->getSelectedData('desa a', 'a.*',array('md5(a.id_kecamatan)'=>$this->uri->segment(3)))->result();
		$this->load->view('admin/template/header',$data);
		$this->load->view('admin/master/map/village',$data);
		$this->load->view('admin/template/footer');
	}
	public function json_peta_kelurahan(){
		$return_on_click = "return confirm('Anda yakin?')";
		$action =	'<div class="btn-group">
						<button class="btn btn-xs green dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"> Aksi
							<i class="fa fa-angle-down"></i>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="'.site_url('admin_side/ubah_data_kelurahan/$1').'">
									<i class="icon-wrench"></i> Ubah Data </a>
							</li>
							<li>
								<a onclick="'.$return_on_click.'" href="'.site_url('admin_side/hapus_data_kelurahan/$1').'">
									<i class="icon-trash"></i> Hapus Data </a>
							</li>
						</ul>
					</div>';
		$this->load->library('datatables');
		$this->datatables->select('a.id_desa,b.nm_provinsi,c.nm_kabupaten,d.nm_kecamatan,a.nm_desa');
		$this->datatables->from('desa a');
		$this->datatables->join('provinsi b', 'a.id_provinsi = b.id_provinsi','LEFT');
		$this->datatables->join('kabupaten c', 'a.id_kabupaten = c.id_kabupaten','LEFT');
		$this->datatables->join('kecamatan d', 'a.id_kecamatan = d.id_kecamatan','LEFT');
		$this->datatables->add_column('action', $action, 'md5(id_desa)');
		echo $this->datatables->generate();
	}
	public function add_village()
	{
		$data['parent'] = 'master';
		$data['child'] = 'map';
		$data['grand_child'] = 'village';
		$data['provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
		$this->load->view('admin/template/header',$data);
		$this->load->view('admin/master/map/add_village',$data);
		$this->load->view('admin/template/footer');
	}
	public function save_village(){
		$this->db->trans_start();
		$get_last_data = $this->Main_model->getSelectedData('desa a', 'a.*', array('a.id_kecamatan'=>$this->input->post('id_kecamatan'),'a.id_kabupaten'=>$this->input->post('id_kabupaten'),'a.id_provinsi'=>$this->input->post('id_provinsi')),'a.id_desa DESC',1)->row_array();
		$id_desa = '';
		if($get_last_data==NULL){
			$id_desa = $this->input->post('id_kecamatan').'001';
		}else{
			$id_desa = $get_last_data['id_desa']+1;
		}
		$data_insert = array(
			'id_desa' => $id_desa,
			'id_provinsi' => $this->input->post('id_provinsi'),
			'id_kabupaten' => $this->input->post('id_kabupaten'),
			'id_kecamatan' => $this->input->post('id_kecamatan'),
			'nm_desa' => $this->input->post('nm_desa'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude')
		);
		$this->Main_model->insertData("desa",$data_insert);

		$this->Main_model->log_activity($this->session->userdata('id'),'Tambah data',"Tambah data desa (".$this->input->post('nm_desa').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tambah_data_kelurahan'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil disimpan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kelurahan/'</script>";
		}
	}
	public function edit_village()
	{
		$data['parent'] = 'master';
		$data['child'] = 'map';
		$data['grand_child'] = 'village';
		$data['provinsi'] = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
		$data['data_utama'] = $this->Main_model->getSelectedData('desa a', 'a.*,b.nm_kabupaten,c.nm_kecamatan', array('md5(a.id_desa)'=>$this->uri->segment(3)),'','','','',array(
			array(
				'table' => 'kabupaten b',
				'on' => 'a.id_kabupaten=b.id_kabupaten',
				'pos' => 'left'
			),
			array(
				'table' => 'kecamatan c',
				'on' => 'a.id_kecamatan=c.id_kecamatan',
				'pos' => 'left'
			)
		))->row();
		$this->load->view('admin/template/header',$data);
		$this->load->view('admin/master/map/edit_village',$data);
		$this->load->view('admin/template/footer');
	}
	public function update_village_data(){
		$this->db->trans_start();
		$data_update = array(
			'id_provinsi' => $this->input->post('id_provinsi'),
			'id_kabupaten' => $this->input->post('id_kabupaten'),
			'id_kecamatan' => $this->input->post('id_kecamatan'),
			'nm_desa' => $this->input->post('nm_desa'),
			'bujur' => $this->input->post('longitude'),
			'lintang' => $this->input->post('latitude')
		);
		$this->Main_model->updateData("desa",$data_update,array('md5(id_desa)'=>$this->input->post('id_desa')));

		$this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Update village data (".$this->input->post('nm_desa').")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/ubah_data_kelurahan/".$this->input->post('id_desa')."'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kelurahan/'</script>";
		}
	}
	public function delete_village(){
		$this->db->trans_start();
		$nama_desa = '';

		$get_data = $this->Main_model->getSelectedData('desa a', 'a.*',array('md5(a.id_desa)'=>$this->uri->segment(3)))->row();
		$nama_desa = $get_data->nm_desa;

		$this->Main_model->deleteData('desa',array('md5(id_desa)'=>$this->uri->segment(3)));

		$this->Main_model->log_activity($this->session->userdata('id'),"Hapus data","Hapus data desa (".$nama_desa.")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kelurahan'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/data_kelurahan'</script>";
		}
	}
}