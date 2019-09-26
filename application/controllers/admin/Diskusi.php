<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Diskusi extends CI_Controller {

	
    function __construct() {
        parent::__construct();/*
		$this->load->view('template/header');
        $this->load->view('template/aside');*/
        if ($this->session->userdata('admin_valid') == false && $this->session->userdata('admin_id') == "") {
			redirect('auth/login');
		} 
	}
    public function index()
	{
		$data['title_page'] = "Diskusi";
        $data['breadcrumb'] = "";

        $pt['table']      = "diskusi";
        $pt['type']       = "multiple";
        $pt['orderby']['column'] = "create_at";
        $pt['orderby']['sort']   = "DESC";
        $pt['join']['table']  = "pegawai";
        $pt['join']['ref']    = "id_pgw";
        $pt['join']['key']    = "id_pegawai";
        $pt['column']     = "diskusi.*,nama_pegawai";
        $data['ulasan'] = $this->Crud_model->get_data($pt);

        $post = $this->input->post();
        $this->_rules();
        if($this->form_validation->run() === TRUE){
            $datauploads['id_pgw'] = $this->session->userdata('admin_konid');
            $datauploads['isi'] = $post['pesan'];
            $this->Crud_model->input('diskusi',$datauploads);
            redirect('admin/diskusi', 'refresh');
        } else {
            $data['load']    =  array("admin/diskusi/list"); 
            $this->load->view('template/layout', $data);
        }
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