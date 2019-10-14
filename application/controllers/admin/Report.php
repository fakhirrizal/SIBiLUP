<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Report extends CI_Controller {
    public function __construct (){
        parent::__construct();
    }

    /* Aspirasi Publik */
    public function aspirasi()
	{
        $data['title_page'] = "Aspirasi Publik";
        $data['breadcrumb'] = "Laporan,Aspirasi Publik";

     
        $data['load']    =  array("admin/report/aspirasi"); 
        $this->load->view('template/layout', $data);
    }
    public function json_aspirasi(){
		$get_data = $this->Main_model->getSelectedData('aspirasi a', 'a.*')->result();
		$data_tampil = array();
		$no = 1;
		foreach ($get_data as $key => $value) {
			$isi['number'] = $no++.'.';
			$isi['nama'] = $value->nama;
			$isi['email'] = $value->email;
			$isi['nohp'] = $value->nohp;
			$isi['pesan'] = $value->pesan;
			$return_on_click = "return confirm('Anda yakin?')";
			$pisah_waktu = explode(' ',$value->waktu);
			$isi['waktu'] = $this->Main_model->convert_tanggal($pisah_waktu[0]).' - '.substr($pisah_waktu[1],0,5);
			$isi['action'] =	'
									<a href="'.base_url('admin_side/hapus_aspirasi/'.md5($value->id_aspirasi)).'" onclick="'.$return_on_click.'" class="link" title="Hapus Data"><i class="mdi mdi-delete-empty"></i></a>
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
    public function hapus_aspirasi(){
		$this->db->trans_start();
		$this->Main_model->deleteData('aspirasi',array('md5(id_aspirasi)'=>$this->uri->segment(3)));

		$this->Main_model->log_activity($this->session->userdata('id'),'Deleting data',"Menghapus data aspirasi",$this->session->userdata('location'));
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/aspirasi/'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil dihapus.<br /></div>' );
			echo "<script>window.location='".base_url()."admin_side/aspirasi/'</script>";
		}
	}
}