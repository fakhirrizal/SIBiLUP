<?php if ( ! defined('BASEPATH')) exit('No echo direct script access allowed');

class Master extends CI_Controller {
	var $userdata = NULL;
	public function __construct (){
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		// ROLE ACCESS
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

	public function index($output = null) {
		echo "<script>document.location.href='".base_url('sm-admin')."'</script>";
	}

	public function visimisi(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('profil_dir');

		$crud->display_as('visi_misi','Visi dan Misi');

		$crud->unset_columns('tupoksi','struktur_organisasi');

		$crud->change_field_type('tupoksi' , 'invisible');
		$crud->change_field_type('struktur_organisasi' , 'invisible');

		$crud->unset_read();
		// $crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Visi dan Misi";
        $output->breadcrumb = "Profil Direktorat,Visi dan Misi,Ubah Data";
		$this->output($output);
	}

	public function akun(){
		$crud = new grocery_CRUD();

		if ($this->uri->segment(5) != $this->session->userdata('id')) {
			redirect('admin_side/beranda', 'refresh');
		}
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('user');

		$crud->display_as('pass','Password');

		$crud->columns('username','pass');

		$crud->change_field_type('pass' , 'password');
		$crud->change_field_type('username' , 'readonly');
		$crud->change_field_type('total_login' , 'invisible');
		$crud->change_field_type('last_login' , 'invisible');
		$crud->change_field_type('last_activity' , 'invisible');
		$crud->change_field_type('login_attempts' , 'invisible');
		$crud->change_field_type('last_login_attempt' , 'invisible');
		$crud->change_field_type('remember_time' , 'invisible');
		$crud->change_field_type('remember_exp' , 'invisible');
		$crud->change_field_type('ip_address' , 'invisible');
		$crud->change_field_type('verification_token' , 'invisible');
		$crud->change_field_type('recovery_token' , 'invisible');
		$crud->change_field_type('unlock_token' , 'invisible');
		$crud->change_field_type('created_by' , 'invisible');
		$crud->change_field_type('created_at' , 'invisible');
		$crud->change_field_type('updated_at' , 'invisible');
		$crud->change_field_type('updated_by' , 'invisible');
		$crud->change_field_type('deleted_by' , 'invisible');
		$crud->change_field_type('deleted_at' , 'invisible');
		$crud->change_field_type('deleted' , 'invisible');
		$crud->change_field_type('is_active' , 'invisible');

		$crud->unset_read();
		$crud->unset_add();
		$crud->unset_delete();
		$crud->unset_back_to_list();

		// enkripsi password md5 (silahkan rubah di function pass_md5)
		// $crud->callback_before_update(array($this,'pass_md5'));

		$output = $crud->render();
		$output->title_page = "Pengaturan Akun";
        $output->breadcrumb = "Pengaturan,Ubah Akun";
		$this->output($output);
	}

	public function profiles(){
		$crud = new grocery_CRUD();

		if ($this->uri->segment(5) != $this->session->userdata('admin_konid')) {
			redirect('admin_side/beranda', 'refresh');
		}
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('pegawai');

		// $crud->display_as('pass','Password');

		// $crud->columns('username','pass');
		$crud->change_field_type('user_id' , 'invisible');
		$crud->change_field_type('wilayah' , 'invisible');
		$this->config->set_item('grocery_crud_file_upload_allow_file_types','png');
		$crud->set_field_upload('foto','assets/images');
		$crud->unset_texteditor('alamat');

		$crud->unset_read();
		$crud->unset_add();
		$crud->unset_delete();
		$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Pengaturan Profil";
        $output->breadcrumb = "Pengaturan,Ubah Profil";
		$this->output($output);
	}

	function pass_md5($post_array) {
		$post_array['pass'] = md5($post_array['pass']);

		return $post_array;
	}

	public function faq_input(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('faq');
		$crud->unset_columns('create_at');

		$crud->change_field_type('create_at' , 'invisible');
		$crud->unset_read();
		// $crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "FAQ";
        $output->breadcrumb = "FAQ (Frequently Ask Question)";
		$this->output($output);
	}

	public function faq() {
		// $this->templates();
        $data['title_page'] = "FAQ";
        $data['breadcrumb'] = "FAQ (Frequently Ask Question)";
        $data['load']       =  array("admin/master/faq"); 

        $dt['table'] = "faq";
		$dt['type'] = "multiple";
		$data['data'] = $this->Crud_model->get_data($dt);
        
        $this->load->view('template/layout', $data);
    }

    public function visi_misi() {
		$this->templates();
        $data['title_page'] = "Visi dan Misi";
        $data['breadcrumb'] = "Profil Direktorat,Visi dan Misi";
        $data['load']       =  array("admin/master/list_visi"); 

        $dt['table'] = "profil_dir";
		$dt['type'] = "single";
		$dt['condition']['id_profil'] = "1";
		$data['data'] = $this->Crud_model->get_data($dt);
        
        $this->load->view('template/footer', $data);
    }

    public function tupok_si(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('profil_dir');

		$crud->display_as('tupoksi','Tugas Pokok dan Fungsi');

		$crud->unset_columns('visi_misi','struktur_organisasi');

		$crud->change_field_type('visi_misi' , 'invisible');
		$crud->change_field_type('struktur_organisasi' , 'invisible');

		$crud->unset_read();
		// $crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Tugas Pokok dan Fungsi";
        $output->breadcrumb = "Profil Direktorat,Tugas Pokok dan Fungsi,Ubah Data";
		$this->output($output);
	}

    public function tupoksi() {
		$this->templates();
        $data['title_page'] = "Tugas Pokok dan Fungsi";
        $data['breadcrumb'] = "Profil Direktorat,Tugas Pokok dan Fungsi";
        $data['load']       =  array("admin/master/list_tupoksi"); 

        $dt['table'] = "profil_dir";
		$dt['type'] = "single";
		$dt['condition']['id_profil'] = "1";
		$data['data'] = $this->Crud_model->get_data($dt);
        
        $this->load->view('template/footer', $data);
    }


    public function sturktur_or(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('profil_dir');

		$crud->display_as('struktur_organisasi','Struktur Organisasi');

		$crud->unset_columns('visi_misi','tupoksi');

		$crud->change_field_type('visi_misi' , 'invisible');
		$crud->change_field_type('tupoksi' , 'invisible');

		$crud->unset_read();
		// $crud->unset_edit();
		$crud->unset_delete();
		$crud->unset_back_to_list();

		$output = $crud->render();
		$output->title_page = "Struktur Organisasi";
        $output->breadcrumb = "Profil Direktorat,Struktur Organisasi,Ubah Data";
		$this->output($output);
	}

    public function struktur() {
		$this->templates();
        $data['title_page'] = "Struktur Organisasi";
        $data['breadcrumb'] = "Profil Direktorat,Struktur Organisasi";
        $data['load']       =  array("admin/master/list_struktur"); 

        $dt['table'] = "profil_dir";
		$dt['type'] = "single";
		$dt['condition']['id_profil'] = "1";
		$data['data'] = $this->Crud_model->get_data($dt);
        
        $this->load->view('template/footer', $data);
    }

	public function pegawai(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_employee');

		$crud->unset_columns('create_at','update_at');

		$display = array(
					'name_emp' => 'Nama',
					'addrs_emp' => 'Alamat',
					'phone_emp' => 'Telephone',
					'email_emp' => 'Email'
				);

		$crud->display_as($display);

		$crud->set_field_upload('photo_emp','images/user');

		$crud->change_field_type('create_at' , 'invisible');
		$crud->change_field_type('update_at' , 'invisible');

		$crud->callback_before_insert(array($this,'img_md5'));
		$crud->callback_before_update(array($this,'img_md5'));
		$crud->callback_before_insert(array($this,'get_init_date'));
		$crud->callback_before_update(array($this,'get_init_date'));

		$output = $crud->render();
		$this->output($output);
	}

	public function type(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_type');

		$crud->unset_columns('create_at','update_at','method');

		// $crud->unset_fields('method');

		$crud->display_as('id_type' ,'method');

		$list = array(
				'cat' => 'CATEGORY[menampilkan kategori tertentu]',
				'view' => 'VIEW[menampilkan kondisi detail dari sebuah konten]',
			);

		$crud->field_type('action','multiselect',$list);


		$crud->change_field_type('create_at' , 'invisible');
		$crud->change_field_type('update_at' , 'invisible');

		$crud->callback_before_insert(array($this,'get_init_date'));
		$crud->callback_before_update(array($this,'get_init_date'));

		$output = $crud->render();
		$this->output($output);
	}

	public function profile()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_employee');
		$crud->set_subject('Profile');
		
		$crud->display_as('name_emp','nama lengkap');
		$crud->display_as('photo_emp','foto profil');
		$crud->display_as('addrs_emp','alamat lengkap');
		$crud->display_as('phone_emp','Phone');
		$crud->display_as('email_emp','email');

		$crud->set_field_upload('photo_emp','images/user');

		$crud->unset_texteditor('addrs_emp');
		
		$crud->unset_columns('create_at');
		$crud->callback_before_insert(array($this,'get_init_date'));

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');

		$crud->set_rules('name_emp','nama lengkap','required');

		$crud->unset_list();
		$crud->unset_add();
		$crud->unset_back_to_list();

		try{
			$output = $crud->render();
			$this->output($output);
		} catch(Exception $e) {
		 
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{	
					$user = $this->userdata['user'];
			        echo direct(strtolower(__CLASS__).'/'.strtolower(__FUNCTION__).'/edit/'.$user['idemp_usr']);
			}
			else
			{
			        show_error($e->getMessage());
			}
		}
	}

	public function logo()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_setting');
		$crud->set_subject('Logo');
		// $crud->unset_operations(); 
		// $crud->unset_list();

		$crud->edit_fields('logo');

		$crud->set_field_upload('logo','images/logo');

		$crud->unset_list();
		$crud->unset_add();
		$crud->unset_back_to_list();

		try{
			$output = $crud->render();
			$this->output($output);
		} catch(Exception $e) {
		 
			if($e->getCode() == 14) //The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{
			        echo direct(strtolower(__CLASS__).'/'.strtolower(__FUNCTION__).'/edit/1');
			}
			else
			{
			        show_error($e->getMessage());
			}
		}
	}

	public function favicon()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_setting');
		$crud->set_subject('Setting');
		// $crud->unset_operations(); 
		// $crud->unset_list();

		$crud->edit_fields('favicon');

		$crud->set_field_upload('favicon','images/logo');

		$crud->unset_list();
		$crud->unset_add();
		$crud->unset_back_to_list();

		try{
			$output = $crud->render();
			$this->output($output);
		} catch(Exception $e) {
		 
			if($e->getCode() == 14) //	The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{
			        echo direct(strtolower(__CLASS__).'/'.strtolower(__FUNCTION__).'/edit/1');
			}
			else
			{
			        show_error($e->getMessage());
			}
		}
	}

	public function banner()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_banner');

		$crud->display_as('tgl','terakhir diperbarui');

		$this->config->set_item('grocery_crud_file_upload_allow_file_types','gif|jpeg|jpg|png');

		$crud->unset_columns('id_module','posisi','link')
			 ->unset_fields('id_module','posisi','link');;

		$crud->set_field_upload('images','images/banner');

		if ($this->uri->segment(3) == "add") {
			$crud->unset_fields('publish','id_module','posisi','link');
		}

		$crud->callback_after_upload(array($this,'resize'));

		$crud->change_field_type('tgl','invisible');
		$crud->callback_before_insert(array($this,'tgl'));
		$crud->callback_before_update(array($this,'tgl'));

		$output = $crud->render();
		$this->output($output);
	}

	public function metadata()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_setting');
		$crud->set_subject('Metadata');
		// $crud->unset_operations(); 
		// $crud->unset_list();

		$crud->display_as('deskripsi_ind','Deskripsi [IN]');
		$crud->display_as('deskripsi','Deskripsi [EN]');

		$unset = array('logo','favicon','tgl');

		if (get_bahasa()) {
			array_push($unset, 'deskripsi');
		}


		$crud->unset_fields($unset) ->unset_columns($unset);

		$crud->unset_list();
		$crud->unset_add();
		$crud->unset_back_to_list();

		try{
			$output = $crud->render();
			$this->output($output);
		} catch(Exception $e) {
		 
			if($e->getCode() == 14) // The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{
			        echo direct(strtolower(__CLASS__).'/'.strtolower(__FUNCTION__).'/edit/1');
			}
			else
			{
			        show_error($e->getMessage());
			}
		}
	}

	public function contact()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_contact');
		$crud->set_subject('metadata');

		$crud->edit_fields('nama','alamat_lengkap','email','phone','other');

		$crud->unset_list();
		$crud->unset_add();
		$crud->unset_back_to_list();

		try{
			$output = $crud->render();
			$this->output($output);
		} catch(Exception $e) {
		 
			if($e->getCode() == 14) // The 14 is the code of the "You don't have permissions" error on grocery CRUD.
			{
			        echo direct(strtolower(__CLASS__).'/'.strtolower(__FUNCTION__).'/edit/1');
			}
			else
			{
			        show_error($e->getMessage());
			}
		}
	}

	public function service(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_service');
		$crud->set_field_upload('images','images/service');

		$display = array(
			'nama' => 'Nama Layanan [ID]',
			'images' => 'Gambar Layanan',
			'deskripsi_singkat_id' => 'Deskripsi Singkat [ID]',
			'deskripsi' => 'Deskripsi Layanan [ID]',
			'images' => 'Gambar Layanan',
			'urutan' => 'Urutan'
		);
		$crud->display_as($display);

		$crud->display_as('title','Nama Layanan [EN]');
		$crud->display_as('deskripsi_singkat_en','Deskripsi Singkat [EN]');
		$crud->display_as('description','Deskripsi Layanan [EN]');

		$crud->change_field_type('tgl','invisible');

		$unset_column = array('title','link','deskripsi_singkat_en','deskripsi','description','icon');
		$unset_field = array();

		$crud->change_field_type('tgl','invisible');
		if ($this->uri->segment(3) == "add") {
			array_push($unset_field,'publish');
		}

		if (get_bahasa()) {
			array_push($unset_column, 'title');
			array_push($unset_field, 'title');

			array_push($unset_column, 'deskripsi_singkat_en');
			array_push($unset_field, 'deskripsi_singkat_en');

			array_push($unset_column, 'description');
			array_push($unset_field, 'description');
		}
		$crud->unset_fields($unset_field);
		$crud->unset_columns($unset_column);

		$crud->callback_before_insert(array($this,'tgl'));
		$crud->callback_before_update(array($this,'tgl'));

		$output = $crud->render();
		$this->output($output);
	}

	public function testimoni()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('tb_testimoni');

		$display = array(
			'nama_tes' => 'Nama',
			'isi_tes' => 'Isi testimoni',
			'jabatan_tes' => 'Jabatan',
			'update_at' => 'Terakhir diperbarui'
		);
		$crud->display_as($display);

		$crud->unset_columns('images_tes','create_at');

		$crud->set_field_upload('images_tes','images/testimoni');

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');

		$crud->callback_before_insert(array($this,'get_init_date'));
		$crud->callback_before_update(array($this,'get_init_date'));

		$output = $crud->render();
		$this->output($output);
	}

	public function team()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('tb_team');

		$display = array(
			'update_at' => 'terakhir diperbarui'
		);
		$crud->display_as($display);

		$crud->unset_columns('images_tes','create_at');

		$crud->set_field_upload('images_team','images/team');

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');

		$crud->callback_before_insert(array($this,'get_init_date'));
		$crud->callback_before_update(array($this,'get_init_date'));

		$output = $crud->render();
		$this->output($output);
	}

	public function content(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_content');


		$crud->display_as('id_controller',"Menu");
		$crud->display_as('update_at',"Terakhir Diperbarui");
		$crud->display_as('judul', 'Judul [ID]');
		$crud->display_as('isi', 'isi [ID]');
		
		$crud->display_as('title', 'Judul [EN]');
		$crud->display_as('content', 'isi [EN]');

		$unset_column = array('create_at','content','tanggal');
		$unset_field = array();

		$crud->change_field_type('tgl','invisible');
		if ($this->uri->segment(3) == "add") {
			array_push($unset_field,'publish');
		}

		if (get_bahasa()) {
			array_push($unset_column, 'title');
			array_push($unset_field, 'title');

			array_push($unset_column, 'content');
			array_push($unset_field, 'content');
		}
		$crud->unset_fields($unset_field);
		$crud->unset_columns($unset_column);

		$crud->set_relation('id_controller', 'smt_menu', '{nama}',['type' => 'content']);

		$crud->callback_before_insert(array($this,'get_init_date'));

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');


		$output = $crud->render();
		$this->output($output);
	}

	public function layout(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_layout');

		$crud->set_relation('id_module', 'ms_module', '{nama}');
		$crud->set_relation('controller', 'smt_menu', '{nama}');

		$output = $crud->render();
		$this->output($output);
	}

	public function slideshow()
	{
		$crud = new grocery_CRUD();

		role_access($crud);

		$crud->display_as('images','Gambar Slide');

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_slideshow');

		$display = array(
			'nama_ind' => 'Nama [ID]',
			'deskripsi_ind' => 'Deskripsi [ID]',
			'tgl' => 'Terakhir diperbarui'
		);

		$crud->display_as($display);
		$crud->display_as('nama','Nama [EN]');
		$crud->display_as('deskripsi','Deskripsi [EN]');

		$crud->set_field_upload('images','images/slideshow');


		$unset_column = array('id_module','link','nama','deskripsi');
		$unset_field = array('id_module','link');

		$crud->change_field_type('tgl','invisible');
		if ($this->uri->segment(3) == "add") {
			array_push($unset_field,'publish');
		}

		if (get_bahasa()) {
			array_push($unset_column, 'nama');
			array_push($unset_field, 'nama');

			array_push($unset_column, 'deskripsi');
			array_push($unset_field, 'deskripsi');
		}

		$crud->unset_fields($unset_field);
		$crud->unset_columns($unset_column);

		$crud->callback_after_upload(array($this,'resize'));

		$crud->callback_before_insert(array($this,'tgl'));
		$crud->callback_before_update(array($this,'tgl'));

		$output = $crud->render();
		$this->output($output);
	}

	public function menu()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_menu');
		
		$crud->set_relation('type','ms_type','{nama}');

		$crud->display_as('nama','Nama [ID]');
		$crud->display_as('tgl','Terakhir diperbarui');

		$crud->set_relation('upmenu', 'smt_menu', '{nama}');

		$crud->change_field_type('tgl','invisible');

		$crud->required_fields('type');


		$unset_column = array('upmenu','posisi','link');
		$unset_field = array();

		$crud->display_as('name','Nama [EN]');

		if (get_bahasa()) {
			array_push($unset_column, 'name');
			array_push($unset_field, 'name');
		}
		$crud->unset_fields($unset_field);
		$crud->unset_columns($unset_column);

		$this->session->set_userdata('field_link','nama');
		$crud->callback_field('link', array($this, 'link_callback'));

		$crud->callback_before_insert(array($this,'tgl'));
		$crud->callback_before_update(array($this,'tgl'));

		$output = $crud->render();
		$this->output($output);
	}

	public function module_category(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_module_category');

		$crud->display_as('nama_mdc','Nama');

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');

		$crud->callback_before_insert(array($this,'get_init_date'));

		$output = $crud->render();
		$this->output($output);
	}

	public function module(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_module');

		$crud->display_as('module','Source');

		$crud->set_relation('jenis','ms_module_category','{nama_mdc}');

		$output = $crud->render();
		$this->output($output);
	}

	public function menuadm()
	{

		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_menuadm');

		$crud->set_relation('upmenu', 'ms_menuadm', '{nama}');

		$output = $crud->render();
		$this->output($output);
	}

	public function socmed()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_socmed');

		$crud->columns('nama','url','icon','publish');

		$crud->field_type('icon','dropdown',icon());

		$crud->unset_fields('images');

		if ($this->uri->segment(3) == "add") {
			$crud->unset_fields('publish','images');
		}

		$crud->change_field_type('tgl','invisible');
		$crud->callback_before_insert(array($this,'tgl'));
		$crud->callback_before_update(array($this,'tgl'));

		$output = $crud->render();
		$this->output($output);
	}

	public function blog()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_article');

		
		$crud->display_as('nama','Judul [ID]');
		$crud->display_as('tgl', 'terakhir diperbarui')
			 ->display_as('isi', 'Isi [ID]');
		$crud->display_as('id_menu','tampilkan di menu');
		$crud->display_as('content', 'Isi [EN]');
		$crud->display_as('title','Judul [EN]');

		$crud->required_fields('nama','title','link');

		// $this->session->set_userdata('field_link','nama');
		// $crud->callback_field('link', array($this, 'link_callback'));

		$unset_column = array('images','type','link','content','isi');
		$unset_field = array('images','type','views');

		$crud->change_field_type('tgl','invisible');
		if ($this->uri->segment(3) == "add") {
			array_push($unset_field,'publish');
		}

		/* if (get_bahasa()) {
			array_push($unset_column, 'content');
			array_push($unset_field, 'content');

			array_push($unset_column, 'title');
			array_push($unset_field, 'title');
		} */
		$crud->unset_fields($unset_field);
		$crud->unset_columns($unset_column);

		// $crud->set_relation('id_menu','smt_menu','{nama}',['type' => 'article']);

		$crud->change_field_type('tgl','invisible');
		$crud->callback_before_insert(array($this,'tgl'));
		$crud->callback_before_update(array($this,'tgl'));

		$output = $crud->render();
		$output->title_page = "DASHBOARD";
        $output->breadcrumb = "Home,Dashboard";
		$this->output($output);
	}

	public function category()
	{
		$crud = new grocery_CRUD();
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_category');

		$crud->display_as('nama','Nama [Ind]');
		$crud->display_as('name','Nama [Eng]');

		$crud->unset_columns('create_at');

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');
		$crud->change_field_type('link','invisible');

		$crud->callback_before_insert(array($this,'get_init_date'),array($this,'create_link'));

		$output = $crud->render();
		$this->output($output);
	}

	public function category_photo()
	{
		$crud = new grocery_CRUD();
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_category_photos');
		$crud->set_subject("Album");

		$crud->display_as('update_at', 'terakhir diperbarui');

		$crud->unset_columns('create_at');

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');
		$crud->change_field_type('link','invisible');

		$crud->callback_before_insert(array($this,'get_init_date'));
		$crud->callback_before_update(array($this,'get_init_date'));

		$crud->callback_before_insert(array($this,'create_link'));

		if ($this->uri->segment(3) == "add") {
			$crud->unset_fields('publish');
		}

		$output = $crud->render();
		$this->output($output);
	}

	public function photos()
	{
		$crud = new grocery_CRUD();
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('tb_photos');
		$crud->set_subject("Photos");

		$crud->display_as('update_at', 'terakhir diperbarui')
			 ->display_as('id_cat','Photo Album')
		;

		$crud->set_relation('id_cat', 'ms_category_photos', '{nama}');

		$crud->set_field_upload('images','images/gallery');

		$crud->required_fields('id_cat');

		$crud->unset_columns('create_at');

		$crud->change_field_type('create_at','invisible');
		$crud->change_field_type('update_at','invisible');
		$crud->change_field_type('link','invisible');

		if ($this->uri->segment(3) == "add") {
			$crud->unset_fields('publish');
		}

		$crud->callback_after_upload(array($this,'resize'));

		$crud->callback_before_insert(array($this,'get_init_date'),array($this,'create_link'));

		$output = $crud->render();
		$this->output($output);
	}

	public function feedback()
	{
		$crud = new grocery_CRUD();
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('tb_feedback');
		$crud->set_subject("Photos");

		$crud->display_as('update_at', 'terakhir diperbarui')
			 ->display_as('id_cat','Photo Album')
		;

		$display = array(
			'nama_fbk' => 'nama',
			'phone_fbk' => 'phone',
			'email_fbk' => 'email',
			'pesan_fbk' => 'pesan'
		);
		$crud->display_as($display);

		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();

		$output = $crud->render();
		$this->output($output);
	}

	/* CALLBACK FUNCTION */
	public function password($post_array)
	{
		$post_array['pasid_usr'] = PasswordEncryption($post_array['password_baru']);
		unset($post_array['password_baru']);
		unset($post_array['password_lama']);
		unset($post_array['konfirmasi_password']);

		return $post_array;
	}


	public function create_page($post_array)
	{
		if ($post_array['type'] != 0 OR $post_array['type'] != NULL) {
			$page = $post_array['type'];
			$upper = ucwords($post_array['type']);
			create_new_page($page,$upper,$upper);
		}
	}

	public function create_link($post_array)
	{
		$post_array['link'] = create_link($post_array['nama']);
		return $post_array;
	}

  	public function get_init_date($post_array){
  		
  		$post_array['update_at'] = date('Y-m-d H:i:s');

  		return $post_array;
	}

	public function tgl($post_array){
  		
  		$post_array['tgl'] = date('Y-m-d H:i:s');

  		return $post_array;
	}

	function md5($post_array) {
		$post_array['pasid_usr'] = PasswordEncryption($post_array['pasid_usr']);
		$post_array['update'] = date("Y-m-d H:i:s");

		return $post_array;
	}

	function img_md5($post_array) {
		$post_array['photo_emp'] = md5($post_array['photo_emp']);

		return $post_array;
	}

	public function password_lama($str){
		$user = $this->auth_model->get_userdata();

		if ($user['pasid_usr'] != PasswordEncryption($str))
        {
                $this->form_validation->set_message('password_lama', 'Password tidak sesuai dengan password lama' );
                return FALSE;
        }
        else
        {
                return TRUE;
        }
	}

	/* IMAGE RESIZER */
	function resize($uploader_response,$field_info, $files_to_upload)
	{	 
		$this->load->library('Image_moo');
 
		// Is only one file uploaded so it ok to use it with $uploader_response[0].
		// $file_uploaded = $field_info->upload_path.'/'.$uploader_response[0]->name; 
		// $this->image_moo->load($file_uploaded)->resize(400,300)->save($file_uploaded,true);

		$file_uploaded = $field_info->upload_path.'/'.$uploader_response[0]->name; 

		$this->image_moo->load($file_uploaded)->resize(800,600)->save($field_info->upload_path.'/medium-'.$uploader_response[0]->name,true);
		$this->image_lib->clear();
		$this->image_moo->load($file_uploaded)->resize(400,300)->save($field_info->upload_path.'/small-'.$uploader_response[0]->name,true);

		$this->resize_medium($uploader_response,$field_info,$files_to_upload);

		return true;
	}

	function resize_medium($uploader_response,$field_info, $files_to_upload){
		$this->load->library('Image_moo');

		$this->image_lib->clear();
 
		// Is only one file uploaded so it ok to use it with $uploader_response[0].
		// $file_uploaded = $field_info->upload_path.'/'.$uploader_response[0]->name; 
		// $this->image_moo->load($file_uploaded)->resize(400,300)->save($file_uploaded,true);


		$file_uploaded = $field_info->upload_path.'/small-'.$uploader_response[0]->name; 

		$this->image_moo->load($file_uploaded)->resize(100,200)->save($file_uploaded,true);

		return true;
	}

	// AUTO FILL LINK
	function link_callback($value = '', $primary_key = null)
	{
		$field = $this->session->userdata('field_link');
	    $returner = "
	    			<input type='text' value='".$value."' id='link' name='link' class='form-control'/>
	    			<script>
	    				$(document).ready(function(){
	    					$('input[name=".$field."]').keyup(function(){
	    						$.ajax({
								  url: '".base_url('ajax/create_link')."',
								  data: { 
						            'link' : $(this).val()
						          },
								  success: function(data) {
								    $('#link').val(data);
								  }
								});
	    					});
	    				});
	    			</script>";
	    return $returner;
	}
	/* Tamu */
	public function tamu_data(){
		$this->templates();
        $data['title_page'] = "Tamu";
        $data['breadcrumb'] = "Master,Tamu";
        $data['load']       =  array("admin/master/tamu_data"); 

        $this->load->view('template/footer', $data);
	}
	public function json_tamu_data(){
		$get_data = $this->Main_model->getSelectedData('tamu a', 'a.*')->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nama'] = $value->nama;
			$isi['nik'] = $value->nik;
			$isi['alamat'] = $value->alamat;
			$isi['email'] = $value->email;
			$isi['no_hp'] = $value->no_hp;
			$return_on_click = "return confirm('Anda yakin?')";
			$isi['action'] =	'
									<a href="'.base_url('admin_side/hapus_data_tamu/'.md5($value->user_id)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
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
	public function delete_tamu_data(){
		$this->db->trans_start();
		$nama = '';
		$id = '';
		$get_data = $this->Main_model->getSelectedData('tamu a', 'a.*', array('md5(a.user_id)'=>$this->uri->segment(3)))->row();
		$nama = $get_data->nama;
		$id = $get_data->user_id;
		$this->Main_model->deleteData('tamu', array('user_id'=>$id));
		$this->Main_model->deleteData('user', array('id'=>$id));
		$this->Main_model->deleteData('user_profile', array('user_id'=>$id));
		$this->Main_model->deleteData('user_to_role', array('user_id'=>$id));
		$this->Main_model->log_activity($this->session->userdata('id'),'Deleting data',"Menghapus data tamu (".$nama.")",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tamu/'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tamu/'</script>";
		}
	}
	/* Administrator */
	public function administrator_data(){
		$this->templates();
        $data['title_page'] = "Pengguna";
        $data['breadcrumb'] = "Master,Pengguna";
        $data['load']       =  array("admin/master/administrator_data"); 

        $this->load->view('template/footer', $data);
	}
	public function json_administrator_data(){
		$get_data1 = $this->Main_model->getSelectedData('pegawai a', 'a.user_id,a.nama_pegawai,b.username,d.definition,d.description,e.nm_provinsi','b.is_active="1" AND b.deleted="0" AND (d.id="3" OR d.id="5" OR d.id="7")','','','','',array(
			array(
				'table' => 'user b',
				'on' => 'a.user_id=b.id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'user_to_role c',
				'on' => 'a.user_id=c.user_id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'user_role d',
				'on' => 'c.role_id=d.id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'provinsi e',
				'on' => 'a.wilayah=e.id_provinsi',
				'pos' => 'LEFT'
			)
		))->result();
		$get_data2 = $this->Main_model->getSelectedData('pegawai a', 'a.user_id,a.nama_pegawai,b.username,d.definition,d.description,e.nm_kabupaten','b.is_active="1" AND b.deleted="0" AND (d.id="4" OR d.id="6" OR d.id="8")','','','','',array(
			array(
				'table' => 'user b',
				'on' => 'a.user_id=b.id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'user_to_role c',
				'on' => 'a.user_id=c.user_id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'user_role d',
				'on' => 'c.role_id=d.id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'kabupaten e',
				'on' => 'a.wilayah=e.id_kabupaten',
				'pos' => 'LEFT'
			)
		))->result();
		$get_data3 = $this->Main_model->getSelectedData('pegawai a', 'a.user_id,a.nama_pegawai,b.username,d.definition,d.description,e.nm_kabupaten','b.is_active="1" AND b.deleted="0" AND d.id="2"','','','','',array(
			array(
				'table' => 'user b',
				'on' => 'a.user_id=b.id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'user_to_role c',
				'on' => 'a.user_id=c.user_id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'user_role d',
				'on' => 'c.role_id=d.id',
				'pos' => 'LEFT'
			),
			array(
				'table' => 'kabupaten e',
				'on' => 'a.wilayah=e.id_kabupaten',
				'pos' => 'LEFT'
			)
		))->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data1 as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nama'] = $value->nama_pegawai;
			$isi['username'] = $value->username;
			$isi['user_role'] = $value->definition.' ('.$value->nm_provinsi.')';
			$isi['keterangan'] = $value->description;
			$return_on_click = "return confirm('Anda yakin?')";
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_pengguna/'.md5($value->user_id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
									<a href="'.base_url('admin_side/hapus_data_pengguna/'.md5($value->user_id)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
								';
			$data_tampil[] = $isi;
		}
		foreach ($get_data2 as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nama'] = $value->nama_pegawai;
			$isi['username'] = $value->username;
			$isi['user_role'] = $value->definition.' ('.$value->nm_kabupaten.')';
			$isi['keterangan'] = $value->description;
			$return_on_click = "return confirm('Anda yakin?');";
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_pengguna/'.md5($value->user_id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
									<a href="'.base_url('admin_side/hapus_data_pengguna/'.md5($value->user_id)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
								';
			$data_tampil[] = $isi;
		}
		foreach ($get_data3 as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nama'] = $value->nama_pegawai;
			$isi['username'] = $value->username;
			$isi['user_role'] = $value->definition;
			$isi['keterangan'] = '-';
			$return_on_click = "return confirm('Anda yakin?');";
			$isi['action'] =	'
									<a href="'.base_url('admin_side/ubah_data_pengguna/'.md5($value->user_id)).'" class="link m-r-10 " title="Ubah Data"><i class="mdi mdi-checkbox-multiple-marked-outline"></i></a>
									<a href="'.base_url('admin_side/hapus_data_pengguna/'.md5($value->user_id)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
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
	public function add_administrator_data(){
		$this->templates();
        $data['title_page'] = "Tambah Pengguna";
        $data['breadcrumb'] = "Master,Pengguna,Tambah Data";
        $data['load']       =  array("admin/master/add_administrator_data"); 

        $this->load->view('template/footer', $data);
	}
	public function save_administrator_data(){
		$check = $this->Main_model->getSelectedData('user a', 'a.*',array('a.username'=>$this->input->post('username')))->row();
		if($check==NULL){
			$this->db->trans_start();
			$get_user_id = $this->Main_model->getLastID('user','id');
			$data_insert1 = array(
				'id' => $get_user_id['id']+1,
				'username' => $this->input->post('username'),
				'pass' => $this->input->post('pass'),
				'is_active' => '1',
				'created_by' => $this->session->userdata('id'),
				'created_at' => date('Y-m-d H:i:s')
			);
			// print_r($data_insert1);
			$this->Main_model->insertData('user',$data_insert1);
			$data_insert2 = array(
				'user_id' => $get_user_id['id']+1,
				'wilayah' => $this->input->post('wilayah'),
				'nama_pegawai' => $this->input->post('nama_pegawai'),
				'alamat' => $this->input->post('alamat'),
				'email' => $this->input->post('email'),
				'phone' => $this->input->post('phone')
			);
			$this->Main_model->insertData('pegawai',$data_insert2);
			// print_r($data_insert2);
			$data_insert3 = array(
				'user_id' => $get_user_id['id']+1,
				'role_id' => $this->input->post('user_role')
			);
			$this->Main_model->insertData('user_to_role',$data_insert3);
			// print_r($data_insert3);
			$this->Main_model->log_activity($this->session->userdata('id'),'Adding data',"Add admin data",$this->session->userdata('location'));
			$this->db->trans_complete();
			if($this->db->trans_status() === false){
				$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal ditambahkan.<br /></div>' );
				echo "<script>window.location='".base_url()."admin_side/tambah_pengguna/'</script>";
			}
			else{
				$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil ditambahkan.<br /></div>' );
				echo "<script>window.location='".base_url()."admin_side/pengguna/'</script>";
			}
		}else{
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>username telah digunakan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/tambah_pengguna/'</script>";
		}
	}
	public function edit_administrator_data()
	{
		$data['data_utama'] = $this->Main_model->getSelectedData('pegawai a', 'a.*,b.username,c.role_id', array('md5(a.user_id)'=>$this->uri->segment(3),'b.is_active'=>'1','b.deleted'=>'0'),'','','','',array(
			array(
				'table' => 'user b',
				'on' => 'a.user_id=b.id',
				'pos' => 'left'
			),
			array(
				'table' => 'user_to_role c',
				'on' => 'a.user_id=c.user_id',
				'pos' => 'left'
			)
		))->result();
		$this->templates();
        $data['title_page'] = "Ubah Pengguna";
        $data['breadcrumb'] = "Master,Pengguna,Ubah Data";
        $data['load']       =  array("admin/master/edit_administrator_data"); 

        $this->load->view('template/footer', $data);
	}
	public function update_administrator_data(){
		$check = $this->Main_model->getSelectedData('user a', 'a.*','a.username="'.$this->input->post('username').'" AND md5(a.id) NOT IN ("'.$this->input->post('user_id').'")')->result();
		if($check==NULL){
			$this->db->trans_start();
			if($this->input->post('username')==$this->input->post('username_old')){
				echo'';
			}else{
				$data_1 = array(
					'username' => $this->input->post('username'),
					'updated_by' => $this->session->userdata('id'),
					'updated_at' => date('Y-m-d H:i:s')
				);
				// print_r($data_1);
				$this->Main_model->updateData('user',$data_1,array('md5(id)'=>$this->input->post('user_id')));
			}
			if($this->input->post('pass')==NULL){
				echo'';
			}else{
				$data_1 = array(
					'pass' => $this->input->post('pass'),
					'updated_by' => $this->session->userdata('id'),
					'updated_at' => date('Y-m-d H:i:s')
				);
				// print_r($data_1);
				$this->Main_model->updateData('user',$data_1,array('md5(id)'=>$this->input->post('user_id')));
			}
			$data_2 = array(
				'wilayah' => $this->input->post('wilayah'),
				'nama_pegawai' => $this->input->post('nama_pegawai'),
				'alamat' => $this->input->post('alamat'),
				'email' => $this->input->post('email'),
				'phone' => $this->input->post('phone')
			);
			$this->Main_model->updateData('pegawai',$data_2,array('md5(user_id)'=>$this->input->post('user_id')));
			// print_r($data_2);
			$data_3 = array(
				'role_id' => $this->input->post('user_role')
			);
			$this->Main_model->updateData('user_to_role',$data_3,array('md5(user_id)'=>$this->input->post('user_id')));
			// print_r($data_3);
			$this->Main_model->log_activity($this->session->userdata('id'),'Updating data',"Update admin data",$this->session->userdata('location'));
			$this->db->trans_complete();
			if($this->db->trans_status() === false){
				$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diubah.<br /></div>' );
				echo "<script>window.location='".base_url()."admin_side/ubah_data_pengguna/".$this->input->post('user_id')."'</script>";
			}
			else{
				$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diubah.<br /></div>' );
				echo "<script>window.location='".base_url()."admin_side/pengguna/'</script>";
			}
		}else{
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>username telah digunakan.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/ubah_data_pengguna/".$this->input->post('user_id')."'</script>";
		}
	}
	public function delete_administrator_data(){
		$this->db->trans_start();
		$this->Main_model->updateData('user',array('is_active'=>'0','deleted_by'=>$this->session->userdata('id'),'deleted_at'=>date('Y-m-d H:i:s'),'deleted'=>'1'),array('md5(id)'=>$this->uri->segment(3)));

		$this->Main_model->log_activity($this->session->userdata('id'),'Deleting data',"Delete administrator data",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/pengguna/'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/pengguna/'</script>";
		}
	}
	/* Other function */
	public function ajax_function(){
		if($this->input->post('modul')=='get_wilayah_by_user_role'){
			if($this->input->post('id')=='3'){
				$data_provinsi = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
				echo'
				<div class="form-group form-md-line-input has-danger">
					<label class="col-md-2 control-label" for="form_control_1">Unit <font color="red">*</font></label>
					<div class="col-md-10">
						<div class="input-icon">
							<select name="user_role" class="form-control select2-allow-clear" required>
								<option value="">-- Pilih --</option>
								<option value="3">Kepala Bidang</option>
								<option value="5">Kepala Bagian</option>
								<option value="7">Staff</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group form-md-line-input has-danger">
					<label class="col-md-2 control-label" for="form_control_1">Provinsi <font color="red">*</font></label>
					<div class="col-md-10">
						<div class="input-icon">
							<select name="wilayah" class="form-control select2-allow-clear" required>
								<option value="">-- Pilih --</option>';
								foreach ($data_provinsi as $key => $value) {
									echo'<option value="'.$value->id_provinsi.'">'.$value->nm_provinsi.'</option>';
								}
				echo		'</select>
						</div>
					</div>
				</div>
				';
			}elseif($this->input->post('id')=='4'){
				$data_provinsi = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
				echo'
				<div class="form-group form-md-line-input has-danger">
					<label class="col-md-2 control-label" for="form_control_1">Unit <font color="red">*</font></label>
					<div class="col-md-10">
						<div class="input-icon">
							<select name="user_role" class="form-control select2-allow-clear" required>
								<option value="">-- Pilih --</option>
								<option value="4">Kepala Bidang</option>
								<option value="6">Kepala Bagian</option>
								<option value="8">Staff</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group form-md-line-input has-danger">
					<label class="col-md-2 control-label" for="form_control_1">Provinsi <font color="red">*</font></label>
					<div class="col-md-10">
						<div class="input-icon">
							<select id="id_provinsi" class="form-control select2-allow-clear" required>
								<option value="">-- Pilih --</option>';
								foreach ($data_provinsi as $key => $value) {
									echo'<option value="'.$value->id_provinsi.'">'.$value->nm_provinsi.'</option>';
								}
				echo		'</select>
						</div>
					</div>
				</div>
				<div class="form-group form-md-line-input has-danger">
					<label class="col-md-2 control-label" for="form_control_1">Kabupaten <font color="red">*</font></label>
					<div class="col-md-10">
						<div class="input-icon">
							<select name="wilayah" id="id_kabupaten" class="form-control select2-allow-clear" required>
								<option value="">-- Pilih --</option>
							</select>
						</div>
					</div>
				</div>
				';
			}else{
				echo'';
			}
		}
		elseif($this->input->post('modul')=='get_kabupaten_by_id_provinsi'){
			$data_kab = $this->Main_model->getSelectedData('kabupaten a', 'a.*',array('a.id_provinsi'=>$this->input->post('id')))->result();
			echo'
			<option value="">-- Pilih --</option>';
			foreach ($data_kab as $key => $value) {
				echo'<option value="'.$value->id_kabupaten.'">'.$value->nm_kabupaten.'</option>';
			}
		}
	}
}