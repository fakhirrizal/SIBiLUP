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
        $this->load->model('Chat_model','chat_model');
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

        if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { 
            $upd['status'] = '1';
            $this->Crud_model->update("diskusi",$upd,array("status"=>"0"));
        }

        $post = $this->input->post();
        $this->_rules();
        if($this->form_validation->run() === TRUE){
            $datauploads['id_pgw'] = $this->session->userdata('admin_konid');
            $datauploads['isi'] = $post['pesan'];
            if ($this->input->post('reply')) {
                $datauploads['reply'] = $post['reply'];
            }
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
    public function hapus_diskusi($id){
        $this->db->trans_start();
		$this->Main_model->deleteData('diskusi', array('id_diskusi'=>$id));
		$this->Main_model->log_activity($this->session->userdata('id'),'Deleting data',"Menghapus data chat di menu diskusi",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin/diskusi/'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin/diskusi/'</script>";
		}
    }
    /* Untuk Tamu */
    public function tamu()
	{
		$data['title_page'] = "Diskusi";
        $data['breadcrumb'] = "";

        $pt['table']      = "diskusi_tamu";
        $pt['type']       = "multiple";
        $pt['orderby']['column'] = "create_at";
        $pt['orderby']['sort']   = "DESC";
        $pt['join']['table']  = "user_profile";
        $pt['join']['ref']    = "id_pgw";
        $pt['join']['key']    = "user_id";
        $pt['column']     = "diskusi_tamu.*,fullname AS nama_pegawai";
        $data['ulasan'] = $this->Crud_model->get_data($pt);

        if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { 
            $upd['status'] = '1';
            $this->Crud_model->update("diskusi_tamu",$upd,array("status"=>"0"));
        }

        $post = $this->input->post();
        $this->_rules();
        if($this->form_validation->run() === TRUE){
            $datauploads['id_pgw'] = $this->session->userdata('id');
            $datauploads['isi'] = $post['pesan'];
            if ($this->input->post('reply')) {
                $datauploads['reply'] = $post['reply'];
            }
            $this->Crud_model->input('diskusi_tamu',$datauploads);
            redirect('diskusi', 'refresh');
        } else {
            $data['load']    =  array("admin/diskusi/list_tamu"); 
            $this->load->view('template/layout', $data);
        }
	}
    public function hapus_diskusi_tamu($id){
        $this->db->trans_start();
		$this->Main_model->deleteData('diskusi_tamu', array('id_diskusi_tamu'=>$id));
		$this->Main_model->log_activity($this->session->userdata('id'),'Deleting data',"Menghapus data chat di menu diskusi tamu",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."diskusi/'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."diskusi/'</script>";
		}
    }
    /*
    function index(){
        $data['title_page'] = "Diskusi";
        $data['breadcrumb'] = "";
        $data['load']    =  array("admin/diskusi/chat"); 
        $this->load->view('template/layout', $data);
        //$this->load->view('admin/diskusi/chat');
    }

    function get_product(){
        $data = $this->chat_model->get_product()->result();
        echo json_encode($data);
    }

    function create(){
        $product_name = $this->input->post('product_name',TRUE);
        $this->chat_model->insert_product($product_name);

        require_once(APPPATH.'views/vendor/autoload.php');
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true
        );
        $pusher = new Pusher\Pusher(
            'ed2ddab9241609822f8f', //ganti dengan App_key pusher Anda
            'd710f280666ad24261e0', //ganti dengan App_secret pusher Anda
            '875598', //ganti dengan App_key pusher Anda
            $options
        );

        $data['message'] = 'success';
        $pusher->trigger('my-channel', 'my-event', $data);
    }
    */
}