<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hubungi_kami extends CI_Controller {

	
    function __construct() {
        parent::__construct();/*
		$this->load->view('template/header');
        $this->load->view('template/aside');*/
        if ($this->session->userdata('admin_valid') == false && $this->session->userdata('admin_id') == "") {
			redirect('auth/login');
		} 
	}
    public function index($id = 0)
	{
		$data['title_page'] = "Hubungi Kami";
        $data['breadcrumb'] = "";
        $data['kepada'] = $id;
        $pt['table']			= "hubungi_kami";
        $pt['type']				= "multiple";
        $pt['join']['table']	= "pegawai";
        $pt['join']['ref']		= "id_pgw";
        $pt['join']['key']		= "id_pegawai";
       // $pt['condition']['id_pgw'] = $this->session->userdata('admin_konid');
        $pt['column']			= "hubungi_kami.*,nama_pegawai,id_pegawai";
        //$data['ulasan'] = $this->Crud_model->get_data($pt);

        $pt['groupby']			= "id_pgw";
        $data['datpgw'] = $this->Crud_model->get_data($pt);

        if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { 
            $upd['status'] = '1';
            $this->Crud_model->update("hubungi_kami",$upd,array("status"=>"0"));
        }

        $pt1['table']			= "pegawai";
        $pt1['type']		    = "multiple";
        $pt1['column']			= "id_pegawai,nama_pegawai";
        $data['pegawai'] = $this->Crud_model->get_data($pt1);

        $post = $this->input->post();
        $this->_rules();
        if($this->form_validation->run() === TRUE){
            if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') {
                $datauploads['penjawab'] = $this->session->userdata('id');
                $datauploads['id_pgw'] = $post['kepada'];
            } else {
                $datauploads['id_pgw'] = $this->session->userdata('admin_konid');
            }

            if ($this->input->post('reply')) {
                $psn = explode("*/", $post['pesan']);
                $datauploads['isi'] = $psn[1];
                $datauploads['reply'] = $post['reply'];
            } else {
                $datauploads['isi'] = $post['pesan'];
            }
            $this->Crud_model->input('hubungi_kami',$datauploads);

            //$data['kepada'] = $post['kepada'];
            redirect('admin/hubungi_kami/index/'.$datauploads['id_pgw'], 'refresh');
        } else {
            if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') {
                $data['load']    =  array("admin/hubungi_kami/list"); 
            } else {
                $data['load']    =  array("admin/hubungi_kami/list_user"); 
            }
            $this->load->view('template/layout', $data);
        }
	}

	public function save(){

        $post = $this->input->post();
       
        /*$path = "upload/hubungi_kami/";
        if(!is_dir($path)){
            mkdir($path,0777,TRUE);
            fopen($path."/index.php", "w");
        }
        $file = $_FILES['foto'];
        $xxxx = explode('.',$file['name']);
        $nmxxxx = explode(' ',$xxxx[0]);
        $ext = end($xxxx);
        $rand = rand(11,99);
        $name = "hub_".$nmxxxx[0]."_".$rand.".".$ext;
        $config['file_name']        = $name;
        $config['upload_path']      = $path;
        $config['allowed_types']    = array('jpg','jpeg','gif','png','pdf','txt','doc','docx','pptx','ppt','mp3','xls','xlsx');
        $config['max_size']         = 5000;
        $link = $path."/".$name;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);*/

       // if($this->upload->do_upload('foto')){

            $datauploads ['id_pgw'] = $post['kepada'];
           // $datauploads ['file'] = $path.$name;
            $datauploads ['isi'] = $post['pesan'];
            $this->Crud_model->input('hubungi_kami',$datauploads);
        //}
        $data['kepada'] = $post['kepada'];
        redirect('admin/hubungi_kami', 'refresh');
    
    }

    public function _rules(){

        $config = array(

            array(
                'field'  => 'pesan',
                'label'  => 'pesan',
                'rules'  => 'required',
                'errors' => array('required' => 'Mohon isi %s ')
            )

        );

        $this->form_validation->set_rules($config);

    }
}