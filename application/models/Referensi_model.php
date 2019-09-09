<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Referensi_model extends CI_Model {
	
	public function __construct (){
		$this->load->database();
	}


	public function get_linkmenu_by_type($type){
		$data = $this->db->query("SELECT link from smt_menu WHERE type='$type'")->row_array();

		return $data['link'];
	}

	// TAMBAHAN
	public function get_team(){
		$team['table'] = "tb_team";
		$team['type'] = "multiple";
		$teamm = $this->crud_model->get_data($team);

		return $teamm;
	}

	public function get_testimoni(){
		$data['table'] = "tb_testimoni";
		$data['type']  = "multiple";
		//$data['condition']['publish'] = 1;

		return $this->crud_model->get_data($data);
	}

	public function get_layout_module($id,$posisi){
		$lym['table']               = "ms_layout_module";
		$lym['type']                = "multiple";
		$lym['condition']['id_ly']  = $id;																																																
		$lym['condition']['posisi'] = $posisi;
		$lym['join']['table']       = "ms_module";
		$lym['join']['ref']         = "id";
		$lym['join']['key']         = "id_module";
		$lym['orderby']['column']   = "urutan";
		$lym['orderby']['sort']     = "ASC";
		return $this->crud_model->get_data($lym);
	}

	public function save_logs($iduser = NULL,$db,$refer,$aktivitas){
		$ipclient = getUserIP();
		$os = getOS();
		$browser = getBrowser();
		$this->db->query("INSERT INTO tb_logs VALUES('','$iduser','$ipclient','$browser','$os',NOW(),'$db','$refer','$aktivitas')");
	}

	public function get_service($ref = null)
	{
		$data['table'] = "ms_service";
		$data['type']  = "multiple";
		$data['condition']['publish'] = 1;
		$data['orderby']['column']  = "urutan";
		$data['orderby']['sort']  = "asc";

		if ($ref != NULL) {
			$data['limit'] = $ref;
		}

		return $this->crud_model->get_data($data);
	}

	public function get_slideshow(){
		$slideshow['table'] = "smt_slideshow";
		$slideshow['type']  = "multiple";
		$slideshow['condition']['publish'] = 1;

		return $this->crud_model->get_data($slideshow);
	}

	public function get_contact()
	{
		$contact['table']                = "smt_contact";
		$contact['type']                 = "single";
		$contact['condition']['id'] = 1;

		return $this->crud_model->get_data($contact);
	}
	public function get_setting(){
		$setting['table']                = "smt_setting";
		$setting['type']                 = "single";
		$setting['condition']['id'] = 1;

		return $this->crud_model->get_data($setting);
	}
	public function get_sidebar(){
		$setting['table']                = "smt_setting";
		$setting['type']                 = "multiple";
		$setting['condition']['id'] = 1;

		return $this->crud_model->get_data($setting);
	}
	public function get_sosmed(){
		$setting['table']                = "smt_socmed";
		$setting['type']                 = "multiple";
		$setting['condition']['publish']    = 1;

		return $this->crud_model->get_data($setting);
	}
	public function get_banner(){
		$banner['table']                = "smt_banner";
		$banner['type']                 = "multiple";
		$banner['condition']['publish']    = 1;

		return $this->crud_model->get_data($banner);
	}
	public function get_trans($id){
		$data['table']                   = "smt_transaction";
		$data['type']                    = "multiple";
		$data['condition']['month(tgl)'] = date('m');
		$data['condition']['year(tgl)']  = date('Y');
		$data['condition']['id_member']   = $id;
		$data['condition']['publish']    = 1;

		return $this->crud_model->get_data($data);
	}
	public function get_kategori($ref = NULL){
		if ($ref == "home") {
			$kat['limit']=2;
		}
		$kat['table'] = "ms_category";
		$kat['type'] = "multiple";
		$kat['orderby']['sort'] = "ASC";
		if (bahasa() == "eng") {
			$kat['orderby']['column'] = "name";
		}else{
			$kat['orderby']['column'] = "nama";
		}
		$kategori = $this->crud_model->get_data($kat);

		return $this->crud_model->get_data($kat);
	}
	public function get_kategori_bc($id){
		$kat['table'] = "smt_productcategory";
		$kat['type']  = "multiple";
		$kat['orderby']['column']  = "nama_cat";
		$kat['orderby']['sort']  = "nama_cat";
		$kat['condition']['id_cat'] = $id;

		return $this->crud_model->get_data($kat);
	}
	public function get_produk(){
		$produk['table']                = "smt_product";
		$produk['type']                 = "multiple";
		// $produk['limit']                = 16;
		$produk['join']['table']        = "smt_preorder";
		$produk['join']['key']          = "smt_preorder.id_prd";
		$produk['join']['ref']          = "smt_product.id_prd";
		$produk['orderby']['column']    = "tgl_mulai";
		$produk['orderby']['sort']      = "DESC";
		$tglnow = date("Y-m-d");
		$produk['cuzcondition'] =  "smt_preorder.tgl_mulai <= '$tglnow' AND smt_preorder.tgl_selesai >= '$tglnow' ";

		return $this->crud_model->get_data($produk);
	}
	public function get_transadm(){
		$produk['table']                = "smt_transaction";
		$produk['type']                 = "multiple";
		$produk['join']['table']        = "smt_member";
		$produk['join']['key']          = "id_mem";
		$produk['join']['ref']          = "smt_transaction.id_member";
		$produk['orderby']['column']    = "smt_transaction.tgl";
		$produk['orderby']['sort']      = "asc";

		return $this->crud_model->get_data($produk);
	}
	public function get_detiltransadm($id){
		$produk['table']                                   = "smt_transaction";
		$produk['type']                                    = "single";
		$produk['join']['table']                           = "smt_member,smt_trasactionaddress";
		$produk['join']['key']                             = "id_mem,smt_trasactionaddress.kode_trans";
		$produk['join']['ref']                             = "id_member,smt_transaction.kode_trans";
		$produk['condition']['smt_transaction.kode_trans'] = $id;
		$produk['condition']['smt_transaction.publish']    = 1;

		return $this->crud_model->get_data($produk);
	}
	public function get_detilhistori($id){
        $tran['table'] = "smt_transaction";
        $tran['type'] = "single";
        $tran['join']['table']     = "smt_member";
        $tran['join']['key']       = "id_mem";
        $tran['join']['ref']       = "id_member";
		$tran['condition']['kode_trans'] 			= $id;
		$tran['condition']['smt_transaction.publish'] = 1;

		return $this->crud_model->get_data($tran);
	}
	public function get_produk_all(){
		$produk['table'] = "smt_product";
		$produk['type']  = "multiple";
		$produk['join']['table']                    = "smt_preorder";
		$produk['join']['key']                      = "smt_preorder.id_prd";
		$produk['join']['ref']                      = "smt_product.id_prd";
		$produk['limit'] = 5;
		$tglnow = date("Y-m-d");
		$produk['cuzcondition'] =  "smt_preorder.tgl_mulai <= '$tglnow' AND smt_preorder.tgl_selesai >= '$tglnow' ";

		return $this->crud_model->get_data($produk);
	}
	public function get_produk_cart(){
		$cart = $this->cart->contents();
		$produk['table'] = "smt_product";
		$produk['type']  = "multiple";
		$produk['column'] = "nama_prd,id_prd,images_1_prd";
		$produk['condition']['publish'] = 1;
		$produk['condition']['id_prd'] = $cart['id'];

		return $this->crud_model->get_data($produk);
	}

	public function get_produk_related($link){
		$produk['table']                            = "smt_product";
		$produk['type']                             = "multiple";
		$produk['limit']                            = 4;
		$produk['join']['table']                    = "smt_preorder";
		$produk['join']['key']                      = "smt_preorder.id_prd";
		$produk['join']['ref']                      = "smt_product.id_prd";
		$tglnow = date("Y-m-d");
		$produk['cuzcondition'] =  "smt_preorder.tgl_mulai <= '$tglnow' AND smt_preorder.tgl_selesai >= '$tglnow'";
		return $this->crud_model->get_data($produk);
	}
	public function get_produk_single($id,$idpre){
		$produk['table'] = "smt_product";
		$produk['type']  = "single";
		$produk['join']['table']                    = "smt_preorder";
		$produk['join']['key']                      = "smt_preorder.id_prd";
		$produk['join']['ref']                      = "smt_product.id_prd";
		$produk['condition']['link_prd'] = $id;
		$produk['condition']['id_preorder'] = $idpre;
		$produk['condition']['smt_product.publish'] = 1;
		return $this->crud_model->get_data($produk);
	}
	public function get_transaksi_single($id){
		$trans['table'] = "smt_transaction";
		$trans['type']  = "single";
		$trans['condition']['kode_trans'] = $id;

		return $this->crud_model->get_data($trans);
	}
	function update_trans($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}	
	public function get_member($username){
		$produk['table'] = "smt_member";
		$produk['type']  = "single";
		$produk['condition']['username'] = $username;

		return $this->crud_model->get_data($produk);
	}
	public function get_popular(){
		$produk['table']             = "smt_transactiondetail";
		$produk['type']              = "multiple";
		$produk['limit']             = 8;
		$produk['groupby']           ="id_product";
		$produk['orderby']['column'] = "COUNT(id_product)";
		$produk['orderby']['sort']   = "DESC";
		$produk['join']['table'] = "smt_product";
		$produk['join']['key'] = "id_prd";
		$produk['join']['ref'] = "id_product";

		return $this->crud_model->get_data($produk);
	}

	public function get_preorder(){
		$produk['table']                = "smt_product";
		$produk['type']                 = "multiple";
		$produk['limit']                = 4;
		$produk['join']['table']        = "smt_preorder";
		$produk['join']['key']          = "smt_preorder.id_prd";
		$produk['join']['ref']          = "smt_product.id_prd";
		$produk['orderby']['column']    = "smt_preorder.id_prd";
		$produk['orderby']['sort']      = "DESC";
		$tglnow = date("Y-m-d");
		$produk['cuzcondition'] =  "smt_preorder.tgl_mulai <= '$tglnow' AND smt_preorder.tgl_selesai >= '$tglnow' ";

		$aa = $this->crud_model->get_data($produk);
		return $aa;
		print_r($aa);
	}

	public function get_banners(){
		$produk['table']                = "smt_product";
		$produk['type']                 = "multiple";
		$produk['limit']                = 6;
		$produk['join']['table']        = "smt_preorder";
		$produk['join']['key']          = "smt_preorder.id_prd";
		$produk['join']['ref']          = "smt_product.id_prd";
		$produk['orderby']['column']    = "smt_preorder.tgl";
		$produk['orderby']['sort']      = "DESC";
		$tglnow = date("Y-m-d");
		$produk['cuzcondition'] =  "smt_preorder.tgl_mulai <= '$tglnow' AND smt_preorder.tgl_selesai >= '$tglnow' ";

		$aa = $this->crud_model->get_data($produk);
		return $aa;
		print_r($aa);
	}

	public function get_preorder_new(){
		$produk['table']                = "smt_product";
		$produk['type']                 = "multiple";
		$produk['limit']                = 4;
		$produk['join']['table']        = "smt_preorder";
		$produk['join']['key']          = "smt_preorder.id_prd";
		$produk['join']['ref']          = "smt_product.id_prd";
		$produk['orderby']['column']    = "smt_preorder.tgl_mulai";
		$produk['orderby']['sort']      = "ASC";
		$tglnow = date("Y-m-d");
		$produk['cuzcondition'] =  "smt_preorder.tgl_mulai <= '$tglnow' AND smt_preorder.tgl_selesai >= '$tglnow' ";

		return $this->crud_model->get_data($produk);
	}

	public function get_blog($limit = NULL,$idmenu = NULL){
		$blog['table']                = "smt_article";
		$blog['type']                 = "multiple";
		$blog['orderby']['column']    = "tgl";
		$blog['orderby']['sort']      = "asc";
		$blog['condition']['publish'] = 1;

		if ($idmenu != NULL) {
			$blog['condition']['id_menu'] = $idmenu;
		}

		if ($limit != NULL) {
			if (isset($limit['lim'])) {
				$blog['limit']['lim']   = $limit['lim'];
        		$blog['limit']['first'] = $limit['first'];
			}else{
				$blog['limit']		   = $limit;
			}
		}

		return $this->crud_model->get_data($blog);
	}

	public function refer_artikel($jenis = NULL,$limit = NULL){
		$blog['table']                = "smt_article";
		$blog['type']                 = "multiple";
		$blog['orderby']['column']    = "tgl";
		$blog['orderby']['sort']      = "asc";
		if ($limit != NULL) {
			$blog['limit'] = $limit;
		}
		if ($jenis == 'popular') {
			$blog['orderby']['column']    = "views";
			$blog['orderby']['sort']      = "asc";
		}
		$blog['condition']['publish'] = 1;

		return $this->crud_model->get_data($blog);
	}

	public function get_blogview($id){
		$blog['table']                = "smt_article";
		$blog['type']                 = "single";
		$blog['condition']['link'] = $id;
		$blog['condition']['publish'] = 1;

		return $this->crud_model->get_data($blog);
	}

	public function get_title_page ($page=NULL){
		switch ($page) {
			case 'home':
				return 'Beranda';
				break;

			case 'laporan':
				return 'Laporan';
				break;

			case 'ppd':
				return 'Penerimaan Peserta Didik';
				break;

			case 'siswa':
				return 'Daftar Calon Siswa Baru';
				break;

			case 'attribute':
				return 'Data Attribute';
				break;

			case 'jahit':
				return 'Jahit Seragam';
				break;

			case 'kain':
				return 'Data Kain';
				break;

			case 'seragam':
				return 'Data Seragam';
				break;

			case 'stkattribute':
				return 'Data Stok Attribute';
				break;

			case 'stkkain':
				return 'Data Stok Kain';
				break;

			case 'stknonjahit':
				return 'Data Stok Seragam Non Jahit';
				break;

			case 'stksepatu':
				return 'Data Stok Sepatu';
				break;

			case 'stkseragam':
				return 'Data Stok Seragam';
				break;

			case 'stkkoperasi':
				return 'Data Stok Koperasi';
				break;

			case 'ambilseragam':
				return 'Ambil Seragam';
				break;
			case 'pengukuransragam':
				return "Pengukuran Seragam";
				break;

			default:
				return NULL;
				break;
		
		}
	}

	public function Terbilang ($x){
	  $abil = array(" ", "satu ", "dua ", "tiga ", "empat ", "lima ", "enam ", "tujuh ", "delapan ", "sembilan ", "sepuluh ", "sebelas ");
	  if ($x < 12)
	    return $abil[$x];
	  elseif ($x < 20)
	    return $this->referensi_model->Terbilang($x - 10) . "belas ";
	  elseif ($x < 100)
	    return $this->referensi_model->Terbilang($x / 10) . "puluh" . $this->referensi_model->Terbilang($x % 10);
	  elseif ($x < 200)
	    return "seratus" . $this->referensi_model->Terbilang($x - 100);
	  elseif ($x < 1000)
	    return $this->referensi_model->Terbilang($x / 100) . "ratus " . $this->referensi_model->Terbilang($x % 100);
	  elseif ($x < 2000)
	    return "seribu" . $this->referensi_model->Terbilang($x - 1000);
	  elseif ($x < 1000000)
	    return $this->referensi_model->Terbilang($x / 1000) . "ribu " . $this->referensi_model->Terbilang($x % 1000);
	  elseif ($x < 1000000000)
	    return $this->referensi_model->Terbilang($x / 1000000) . "juta " . $this->referensi_model->Terbilang($x % 1000000);
			
	}

} 

?>