<?php if ( ! defined('BASEPATH')) exit('No echo direct script access allowed');

class Perpustakaan extends CI_Controller {
	var $userdata = NULL;
	public function __construct (){
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');

		// //ROLE ACCESS
		// cek_role();
		date_default_timezone_set('Asia/Jakarta');
      //  $this->load->view('auth/authorized');
	}


	public function output($output = null)
	{	
		// echo $output;
		$this->load->view('grocery.php',$output);

	}

	public function home()
	{
		$data['title_page'] = "Beranda";
        $data['breadcrumb'] = "";
       // $data['load']    =  array("home"); 

        
		$this->load->view('template/header');
        $this->load->view('template/aside');
        $this->load->view('template/footer', $data);
	}

	public function templates()
	{	
		// echo $output;
		$this->load->view('template/header');
		$this->load->view('template/aside');

	}


	public function index($output = null) {
		echo "<script>document.location.href='".base_url('sm-admin')."'</script>";
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
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
		} 

		if ($this->uri->segment(4) == 'add' OR $this->uri->segment(4) == 'edit') {
			$crud->change_field_type('upload_by' , 'invisible');
			$crud->change_field_type('jumlah_download' , 'invisible');
			$crud->change_field_type('create_at' , 'invisible');
		} else {
			$crud->set_relation('upload_by','pegawai','nama_pegawai');
		}

		//$crud->change_field_type('upload_by' , 'invisible');
		$crud->callback_before_insert(array($this,'uploaded'));
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Regulasi";
        $output->breadcrumb = "Perpustakaan,Regulasi";
		$this->output($output);
	}

	public function modul(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('modul');

		$crud->display_as('file','File (.pdf)')->display_as('upload_by','Di Tambah Oleh');

		$this->config->set_item('grocery_crud_file_upload_allow_file_types','pdf');
		$crud->set_field_upload('file','assets/images/article');

		$crud->add_action('Download File', 'https://image.flaticon.com/icons/svg/126/126476.svg', 'admin/Perpustakaan/download_modul');	

		$crud->unset_read();
		$crud->unset_texteditor('keterangan');
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
			$crud->unset_columns('create_at','file','jumlah_download');
		} else {
//			$crud->unset_read();
			$crud->unset_columns('create_at','file');
		}

		if ($this->uri->segment(4) == 'add' OR $this->uri->segment(4) == 'edit') {
			$crud->change_field_type('upload_by' , 'invisible');
			$crud->change_field_type('jumlah_download' , 'invisible');
		} else {
			$crud->set_relation('upload_by','pegawai','nama_pegawai');
		}

		$crud->change_field_type('create_at' , 'invisible');
		$crud->callback_before_insert(array($this,'uploaded'));
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Modul";
        $output->breadcrumb = "Perpustakaan,Modul";
		$this->output($output);
	}

	public function dokumen(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('dokumen');
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->where('upload_by',$this->session->userdata('admin_konid'));
		} else {
			$crud->unset_add();
		}

		$crud->display_as('file','File (pdf|xlsx|xlx|doc|docx)')->display_as('upload_by','Di Tambah Oleh');

		$this->config->set_item('grocery_crud_file_upload_allow_file_types','pdf|xms|xlsx|doc|docx');
		$crud->set_field_upload('file','assets/images/article');	

		$crud->unset_read();
		$crud->unset_texteditor('keterangan');
		

		$crud->unset_columns('create_at');
		if ($this->uri->segment(4) == 'add' OR $this->uri->segment(4) == 'edit') {
			$crud->change_field_type('upload_by' , 'invisible');
		} else {
			$crud->set_relation('upload_by','pegawai','nama_pegawai');
		}

		$crud->change_field_type('create_at' , 'invisible');
		$crud->callback_before_insert(array($this,'uploaded'));
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Modul";
        $output->breadcrumb = "Perpustakaan,Dokumen";
		$this->output($output);
	}

	public function download_modul($id){   
		$data = $this->db->query("SELECT * FROM modul WHERE id_modul='$id'")->row(); 
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
        	$uplod ['jumlah_download'] = $data->jumlah_download+1;
        	$main = $this->Crud_model->update('modul',$uplod,array("id_modul"=>$id));
        }
	 	$file = realpath ( "assets/images/article" ) . "\\" . $data->file;
	    // check file exists    
	    if (file_exists ( $file )) {
		     // get file content
		    $datas = file_get_contents ( $file );
		     //force download
		    force_download ( $data->file, $datas );
		}
    }

	public function materi(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('materi');

		$crud->display_as('file','File (.pdf)')->display_as('upload_by','Di Tambah Oleh');

		$this->config->set_item('grocery_crud_file_upload_allow_file_types','pdf');
		$crud->set_field_upload('file','assets/images/article');

		$crud->unset_read();
		$crud->unset_texteditor('keterangan');
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
			$crud->unset_columns('create_at','file','jumlah_download');
		} else {
//			$crud->unset_read();
			$crud->unset_columns('create_at','file');
		}
		if ($this->uri->segment(4) == 'add' OR $this->uri->segment(4) == 'edit') {
			$crud->change_field_type('upload_by' , 'invisible');
			$crud->change_field_type('jumlah_download' , 'invisible');
		} else {
			$crud->set_relation('upload_by','pegawai','nama_pegawai');
		}

		$crud->add_action('Download File', 'https://image.flaticon.com/icons/svg/126/126476.svg', 'admin/Perpustakaan/download_materi');	

		$crud->change_field_type('create_at' , 'invisible');
		$crud->callback_before_insert(array($this,'uploaded'));
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Materi";
        $output->breadcrumb = "Perpustakaan,Materi";
		$this->output($output);
	}

	public function download_materi($id){   
		$data = $this->db->query("SELECT * FROM materi WHERE id_materi='$id'")->row(); 
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
        	$uplod ['jumlah_download'] = $data->jumlah_download+1;
        	$main = $this->Crud_model->update('materi',$uplod,array("id_materi"=>$id));
        }
	 	$file = realpath ( "assets/images/article" ) . "\\" . $data->file;
	    // check file exists    
	    if (file_exists ( $file )) {
		     // get file content
		    $datas = file_get_contents ( $file );
		     //force download
		    force_download ( $data->file, $datas );
		}
    }

	public function photo(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('galeri');
		$crud->where('type','1');

		$crud->display_as('file','Foto (jpg|jpeg|png)');

		$crud->unset_columns('type');

		//$crud->change_field_type('tupoksi' , 'invisible');
		$crud->change_field_type('type' , 'invisible');
		$this->config->set_item('grocery_crud_file_upload_allow_file_types','jpg|jpeg|png');
		$crud->set_field_upload('file','assets/images');

		$crud->unset_read();
		$crud->unset_texteditor('keterangan');
		//$crud->unset_delete();
		//$crud->unset_back_to_list();
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
		} 

		$crud->callback_before_insert(array($this,'foto'));

		$output = $crud->render();
		$output->title_page = "Galeri Foto";
        $output->breadcrumb = "Perpustakaan,Galeri Foto";
		$this->output($output);
	}

	public function vidio(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('galeri');
		$crud->where('type','2');

		$crud->display_as('file','Foto (mp4|wmv|avi|mpg|3gp)');

		$crud->unset_columns('type');

		//$crud->change_field_type('tupoksi' , 'invisible');
		$crud->change_field_type('type' , 'invisible');
		$this->config->set_item('grocery_crud_file_upload_allow_file_types','mp4|wmv|avi|mpg|3gp');
		$crud->set_field_upload('file','assets/images');

		$crud->unset_texteditor('keterangan');
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
		}
		$crud->unset_read();
		//$crud->unset_delete();
		//$crud->unset_back_to_list();

		$crud->callback_before_insert(array($this,'vidios'));

		$output = $crud->render();
		$output->title_page = "Galeri Video";
        $output->breadcrumb = "Perpustakaan,Galeri Video";
		$this->output($output);
	}

	public function agenda(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('agenda');

		//$crud->change_field_type('tupoksi' , 'invisible');
//		$crud->change_field_type('type' , 'invisible');
//		$this->config->set_item('grocery_crud_file_upload_allow_file_types','mp4|wmv|avi|mpg|3gp');
		$crud->set_field_upload('undangan','assets/images');

		
		$crud->unset_texteditor('deskripsi');
		if ($this->session->userdata('admin_level') != '1' AND $this->session->userdata('admin_level') != '2') {
			$crud->unset_delete();
			$crud->unset_edit();
			$crud->unset_add();
		}
		$crud->unset_read();
		//$crud->unset_back_to_list();

	//	$crud->callback_before_insert(array($this,'vidios'));

		$output = $crud->render();
		$output->title_page = "Agenda";
        $output->breadcrumb = "";
		$this->output($output);
	}

	/*CALLBACK FUNCTION*/
	public function get_init_date($post_array){
  		
  		$post_array['update_at'] = date('Y-m-d H:i:s');

  		return $post_array;
	}

	public function uploaded($post_array){
  		
  		$post_array['upload_by'] = $this->session->userdata('admin_konid');

  		return $post_array;
	}

	public function foto($post_array){
  		
  		$post_array['type'] = '1';

  		return $post_array;
	}

	public function vidios($post_array){
  		
  		$post_array['type'] = '2';

  		return $post_array;
	}
}
