<?php if ( ! defined('BASEPATH')) exit('No echo direct script access allowed');

class Ujian_ol extends CI_Controller {
	var $userdata = NULL;
	public function __construct (){
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		if ($this->session->userdata('admin_valid') == false && $this->session->userdata('admin_id') == "") {
			redirect('auth/login');
		} 
		// //ROLE ACCESS
		// cek_role();
      	// $this->load->view('auth/authorized');
	}

	public function output($output = null)
	{	
		// echo $output;
		$this->load->view('grocery.php',$output);

	}

	public function templates()
	{	
		// echo $output;
		$this->load->view('template/header');
		$this->load->view('template/aside');

	}

	public function regulasi(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('regulasi');

		$crud->display_as('file','File (.pdf)');

		//$crud->unset_columns('tupoksi','struktur_organisasi');

		//$crud->change_field_type('tupoksi' , 'invisible');
		//$crud->change_field_type('file' , 'invisible');
		$this->config->set_item('grocery_crud_file_upload_allow_file_types','pdf');
		$crud->set_field_upload('file','assets/images/article');

		$crud->unset_read();
		$crud->unset_texteditor('keterangan');
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Regulasi";
        $output->breadcrumb = "Home,Regulasi";
		$this->output($output);
	}

	public function soal(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('m_soal');
		if ($this->uri->segment(4)) {
			$uri4 = $this->uri->segment(4);
			$data =  $this->db->query("SELECT * FROM ujian_modul WHERE id_ujianmodul='$uri4'")->row();
			if (!empty($data)) {
				$list_id_soal	= "";
				$idsoal = explode("|^|", $data->id_soal);

				foreach ($idsoal as $keys) {
					$list_id_soal .= "id='".$keys."' OR ";
				}

				$list_id_soal = substr($list_id_soal, 0, -3);
				$crud->where($list_id_soal);
			}
		}
		$crud->display_as('file','Foto Soal (jpg|jpeg|png)')->display_as('id_mapel','Modul');

		$crud->set_relation('id_mapel','modul','judul');

		$crud->unset_columns('jml_benar','jml_salah','tgl_input','tipe_file','file','bobot','id_guru','opsi_e');

		$crud->change_field_type('tipe_file' , 'invisible');
		$crud->change_field_type('jml_benar' , 'invisible');
		$crud->change_field_type('jml_salah' , 'invisible');
		$crud->change_field_type('tgl_input' , 'invisible');
		$crud->change_field_type('opsi_e' , 'invisible');
		$crud->field_type('jawaban','dropdown', array('A' => 'A', 'B' => 'B','C' => 'C' , 'D' => 'D'));

		//$crud->unset_columns('tupoksi','struktur_organisasi');

		$crud->change_field_type('bobot' , 'invisible');
		$crud->change_field_type('id_guru' , 'invisible');
		$this->config->set_item('grocery_crud_file_upload_allow_file_types','jpg|jpeg|png');
		$crud->set_field_upload('file','upload/gambar_soal');

		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
		} else {
			$crud->unset_read();
		}
		$crud->callback_before_insert(array($this,'bobot'));
		//$crud->unset_texteditor('keterangan');
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Soal Ujian";
        $output->breadcrumb = "Perpustakaan,Soal Ujian";
		$this->output($output);
	}

	public function get_servertime() {
		$now = new DateTime(); 
        $dt = $now->format("M j, Y H:i:s O"); 

        j($dt);
	}

	public function cek_aktif() {
		if ($this->session->userdata('admin_valid') == false && $this->session->userdata('admin_id') == "") {
			redirect('auth/login');
		} 
	}
	
	function bobot($post_array) {
		$post_array['bobot'] = "1";
		return $post_array;
	}
}
