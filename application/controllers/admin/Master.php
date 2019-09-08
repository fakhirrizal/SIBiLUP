<?php if ( ! defined('BASEPATH')) exit('No echo direct script access allowed');

class Master extends CI_Controller {
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


	public function index($output = null) {
		echo "<script>document.location.href='".base_url('sm-admin')."'</script>";
	}

	public function bahasa()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_setting');
		$crud->set_subject('Bahasa');
		//$crud->unset_operations(); 
		//$crud->unset_list();

		$crud->edit_fields('bahasa');

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

	public function sitemap()
	{
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('smt_setting');
		$crud->set_subject('Sitemap');
		//$crud->unset_operations(); 
		//$crud->unset_list();

		$crud->edit_fields('sitemap');
		$crud->unset_texteditor('sitemap');

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

	public function change_password()
	{
		$crud = new grocery_CRUD();
		
		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_users');
		$crud->set_subject('Password');
		
		$crud->edit_fields('pasid_usr','password_lama','password_baru','konfirmasi_password');

		$crud->change_field_type('pasid_usr' , 'invisible');
		$crud->change_field_type('password_lama' , 'password');
		$crud->change_field_type('password_baru' , 'password');
		$crud->change_field_type('konfirmasi_password' , 'password');

		$crud->callback_before_update(array($this,'password'));

		$config=array(
            array(
                'field'   => 'password_lama',
                'label'   => 'Password Lama',
                'rules'   => 'trim|required|callback_password_lama', // Note: Notice added callback verifier.
                'errors' => array(
                        'required' => '%s harus diisi.',
                )
            ),
            array(
                'field'   => 'konfirmasi_password',
                'label'   => 'konfirmasi password',
                'rules'   => 'trim|required|matches[password_baru]',
                'errors' => array(
                        'required' => '%s harus diisi.',
                        'matches' => 'Password baru dan password lama tidak sesuai'
                )
            ),
            array(
                'field'   => 'password_baru',
                'label'   => 'password baru',
                'rules'   => 'trim|required',
                'errors' => array(
                        'required' => '%s harus diisi.',
                )
            ));
        $crud->set_rules($config);

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

	public function users(){
		$crud = new grocery_CRUD();

		$crud->set_language('indonesian');
		$crud->set_theme('flexigrid');
		$crud->set_table('ms_users');

		$crud->display_as('usrid_usr','Username');
		$crud->display_as('nama_usr','Nama');
		$crud->display_as('level_usr','Hak Akses');
		$crud->display_as('photo_usr','Photo');

		$crud->set_field_upload('photo_usr','images/user');

		$list = array(
				'00' => 'Super Admin',
				'01' => 'Administrator',
				'02' => 'Penulis'
			);

		$crud->display_as('activ_usr','Aktif');

		$crud->field_type('level_usr','dropdown',$list);

		$crud->unset_columns('pasid_usr','create_at','update_at');

		$crud->change_field_type('create_at' , 'invisible');
		$crud->change_field_type('update_at' , 'invisible');
		$crud->change_field_type('pasid_usr' , 'password');

		$crud->add_action('Users', 'https://image.flaticon.com/icons/png/128/149/149071.png', 'adm_user/index');	

		$crud->callback_before_insert(array($this,'get_init_date'));
		$crud->callback_before_insert(array($this,'md5'));
		$crud->callback_before_update(array($this,'get_init_date'));
		$crud->callback_before_update(array($this,'md5'));

		$crud->unset_read();

		$output = $crud->render();
		$this->output($output);
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

// 		$crud->unset_fields('method');

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
		//$crud->unset_operations(); 
		//$crud->unset_list();

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
		//$crud->unset_operations(); 
		//$crud->unset_list();

		$crud->edit_fields('favicon');

		$crud->set_field_upload('favicon','images/logo');

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
		//$crud->unset_operations(); 
		//$crud->unset_list();

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

		//$this->session->set_userdata('field_link','nama');
		//$crud->callback_field('link', array($this, 'link_callback'));

		$unset_column = array('images','type','link','content','isi');
		$unset_field = array('images','type','views');

		$crud->change_field_type('tgl','invisible');
		if ($this->uri->segment(3) == "add") {
			array_push($unset_field,'publish');
		}

		/*if (get_bahasa()) {
			array_push($unset_column, 'content');
			array_push($unset_field, 'content');

			array_push($unset_column, 'title');
			array_push($unset_field, 'title');
		}*/
		$crud->unset_fields($unset_field);
		$crud->unset_columns($unset_column);

		//$crud->set_relation('id_menu','smt_menu','{nama}',['type' => 'article']);

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

	/*CALLBACK FUNCTION*/
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

	/*IMAGE RESIZER*/
	function resize($uploader_response,$field_info, $files_to_upload)
	{	 
		$this->load->library('Image_moo');
 
		//Is only one file uploaded so it ok to use it with $uploader_response[0].
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
 
		//Is only one file uploaded so it ok to use it with $uploader_response[0].
		// $file_uploaded = $field_info->upload_path.'/'.$uploader_response[0]->name; 
		// $this->image_moo->load($file_uploaded)->resize(400,300)->save($file_uploaded,true);


		$file_uploaded = $field_info->upload_path.'/small-'.$uploader_response[0]->name; 

		$this->image_moo->load($file_uploaded)->resize(100,200)->save($file_uploaded,true);

		return true;
	}

	//AUTO FILL LINK
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
}
