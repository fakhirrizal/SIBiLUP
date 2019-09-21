<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");
class Adm extends CI_Controller {
	function __construct() {
        parent::__construct();
        $this->db->query("SET time_zone='+7:00'");
        $waktu_sql = $this->db->query("SELECT NOW() AS waktu")->row_array();
        $this->waktu_sql = $waktu_sql['waktu'];
        $this->opsi = array("a","b","c","d","e");
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
	
	public function index() {
		redirect('admin_side/beranda');
	}
	
	public function m_ujian() {
		$this->cek_aktif();
		cek_hakakses(array("2","1"), $this->session->userdata('admin_level'));

		
		//var def session
		$a['sess_level'] = $this->session->userdata('admin_level');
		$a['sess_user'] = $this->session->userdata('admin_user');
		$a['sess_konid'] = $this->session->userdata('admin_konid');

		//var def uri segment
		$uri2 = $this->uri->segment(2);
		$uri3 = $this->uri->segment(3);
		$uri4 = $this->uri->segment(4);
		//var post from json
		$p = json_decode(file_get_contents('php://input'));
		//return as json
		$jeson = array();
		
		//$a['data'] = $this->db->query("SELECT tr_guru_tes.*, m_mapel.nama AS mapel FROM tr_guru_tes INNER JOIN m_mapel ON tr_guru_tes.id_mapel = m_mapel.id WHERE tr_guru_tes.id_guru = '".$a['sess_konid']."'")->result();

		$a['pola_tes'] = array(""=>"-- Pilih --", "acak"=>"Soal Diacak", "set"=>"Soal Diurutkan");

//		$a['p_mapel'] = obj_to_array($this->db->query("SELECT * FROM m_mapel WHERE id IN (SELECT id_mapel FROM tr_guru_mapel WHERE id_guru = '".$a['sess_konid']."')")->result(), "id,nama");
		$a['p_mapel'] = obj_to_array($this->db->query("SELECT * FROM level_user WHERE publish = '1'")->result(), "id_level,nama_level");
		
		if ($uri3 == "det") {
			$are = array();

			$a = $this->db->query("SELECT * FROM tr_guru_tes WHERE id = '$uri4'")->row();
			
			if (!empty($a)) {
				$pc_waktu = explode(" ", $a->tgl_mulai);
				$pc_tgl = explode("-", $pc_waktu[0]);

				$pc_terlambat = explode(" ", $a->terlambat);

				$are['id'] = $a->id;
				$are['id_guru'] = $a->id_guru;
				$are['id_mapel'] = $a->id_mapel;
				$are['nama_ujian'] = $a->nama_ujian;
				$are['jumlah_soal'] = $a->jumlah_soal;
				$are['waktu'] = $a->waktu;
				$are['terlambat'] = $pc_terlambat[0];
				$are['terlambat2'] = substr($pc_terlambat[1],0,5);
				$are['jenis'] = $a->jenis;
				$are['detil_jenis'] = $a->detil_jenis;
				$are['tgl_mulai'] = $pc_waktu[0];
				$are['wkt_mulai'] = substr($pc_waktu[1],0,5);
				$are['token'] = $a->token;
			} else {
				$are['id'] = "";
				$are['id_guru'] = "";
				$are['id_mapel'] = "";
				$are['nama_ujian'] = "";
				$are['jumlah_soal'] = "";
				$are['waktu'] = "";
				$are['terlambat'] = "";
				$are['terlambat2'] = "";
				$are['jenis'] = "";
				$are['detil_jenis'] = "";
				$are['tgl_mulai'] = "";
				$are['wkt_mulai'] = "";
				$are['token'] = "";
			}

			j($are);
			exit();
		} else if ($uri3 == "simpan") {
			$ket 	= "";

			$ambil_data = $this->db->query("SELECT id FROM m_soal WHERE id_guru = '".bersih($p, "mapel")."'")->num_rows();


			$jml_soal_diminta = intval(bersih($p, "jumlah_soal"));
			
			/*if ($ambil_data < $jml_soal_diminta) {
				$ret_arr['status'] 	= "gagal";
				$ret_arr['caption']	= "Jumlah soal diinput, melebihi jumlah soal yang ada: ".$ambil_data;
			} else {*/
				if ($p->id != 0) {
					$this->db->query("UPDATE tr_guru_tes SET 
						id_mapel = '".bersih($p,"mapel")."', 
						nama_ujian = '".bersih($p,"nama_ujian")."', 
						jumlah_soal = '".bersih($p,"jumlah_soal")."', 
						waktu = '".bersih($p,"waktu")."', 
						terlambat = '".bersih($p,"terlambat")." ".bersih($p,"terlambat2")."', 
						tgl_mulai = '".bersih($p,"tgl_mulai")." ".bersih($p,"wkt_mulai")."', 
						jenis = '".bersih($p,"acak")."'
						WHERE id = '".bersih($p,"id")."'");
					$ket = "edit";
				} else {
					$ket = "tambah";
					$token = strtoupper(random_string('alpha', 5));

					$this->db->query("INSERT INTO tr_guru_tes VALUES (
						null, 
						'".bersih($p,"mapel")."',
						'',
						'".bersih($p,"nama_ujian")."', 
						'".bersih($p,"jumlah_soal")."', 
						'".bersih($p,"waktu")."', 
						'".bersih($p,"acak")."', 
						'', 
						'".bersih($p,"tgl_mulai")." ".bersih($p,"wkt_mulai")."', 
						'".bersih($p,"terlambat")." ".bersih($p,"terlambat2")."', 
						'$token')");
				}


				$ret_arr['status'] 	= "ok";
				$ret_arr['caption']	= $ket." sukses";
			//}
			j($ret_arr);
			exit();
		} else if ($uri3 == "hapus") {
			$this->db->query("DELETE FROM tr_guru_tes WHERE id = '".$uri4."'");
			$ret_arr['status'] 	= "ok";
			$ret_arr['caption']	= "hapus sukses";
			j($ret_arr);
			exit();
		} else if ($uri3 == "data") {
				$start = $this->input->post('start');
		        $length = $this->input->post('length');
		        $draw = $this->input->post('draw');
		        $search = $this->input->post('search');

		        $d_total_row = $this->db->query("SELECT a.id
		        	FROM tr_guru_tes a
		        	INNER JOIN level_user b ON a.id_guru = b.id_level   
		        	WHERE (a.nama_ujian LIKE '%".$search['value']."%')")->num_rows();
		    	
		    	//echo $this->db->last_query();

		        $q_datanya = $this->db->query("SELECT a.*, b.nama_level AS level
												FROM tr_guru_tes a
									        	INNER JOIN level_user b ON a.id_guru = b.id_level
									        	WHERE (a.nama_ujian LIKE '%".$search['value']."%') 
		                                        ORDER BY a.id DESC LIMIT ".$start.", ".$length."")->result_array();
		        $data = array();
		        $no = ($start+1);

		        foreach ($q_datanya as $d) {
		        	$jenis_soal = $d['jenis'] == "acak" ? "Soal diacak" : "Soal urut";
                
		            $data_ok = array();
		            $data_ok[0] = $no++;
		            $data_ok[1] = $d['nama_ujian']/*."<br>Token : <b>".$d['token']."</b> &nbsp;&nbsp; <a href='#' onclick='return refresh_token(".$d['id'].")' title='Perbarui Token'><i class='fa fa-refresh'></i></a>"*/;
		            $data_ok[2] = $d['level'];
		            $data_ok[3] = $d['jumlah_soal'];
		            $data_ok[4] = tjs($d['tgl_mulai'],"s")."<br>(".$d['waktu']." menit)";
		            $data_ok[5] = $jenis_soal;
		            $data_ok[6] = '
		            	<div class="btn-group">
                          <a href="'.base_url().'adm/m_modul/'.$d['id'].'" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-pencil" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Lihat Soal</a>
                          <a href="#" onclick="return m_ujian_e('.$d['id'].');" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-pencil" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Edit</a>
                          <a href="#" onclick="return m_ujian_h('.$d['id'].');" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Hapus</a>
                        </div>
	                         ';

		            $data[] = $data_ok;
		        }

		        $json_data = array(
		                    "draw" => $draw,
		                    "iTotalRecords" => $d_total_row,
		                    "iTotalDisplayRecords" => $d_total_row,
		                    "data" => $data
		                );
		        j($json_data);
		        exit;
		} else if ($uri3 == "refresh_token") {
			$token = strtoupper(random_string('alpha', 5));

			$this->db->query("UPDATE tr_guru_tes SET token = '$token' WHERE id = '$uri4'");

			$ret_arr['status'] = "ok";
			j($ret_arr);
			exit();
		} else {
			$a['load']    =  array("adm/m_guru_tes"); 
		}

		$a['title_page'] = "Ujian Online";
        $a['breadcrumb'] = "Perpustakaan,Ujian Online";
		$this->load->view('template/header');
		$this->load->view('template/aside');
		$this->load->view('template/footer', $a);
	}

	public function m_modul() {
		$this->cek_aktif();
		cek_hakakses(array("2","1"), $this->session->userdata('admin_level'));

		
		//var def session
		$a['sess_level'] = $this->session->userdata('admin_level');
		$a['sess_user'] = $this->session->userdata('admin_user');
		$a['sess_konid'] = $this->session->userdata('admin_konid');
		//var def uri segment
		$uri2 = $this->uri->segment(2);
		$uri3 = $this->uri->segment(3);
		$uri4 = $this->uri->segment(4);
		//var post from json
		$p = json_decode(file_get_contents('php://input'));
		//return as json
		$jeson = array();
		
		//$a['data'] = $this->db->query("SELECT tr_guru_tes.*, m_mapel.nama AS mapel FROM tr_guru_tes INNER JOIN m_mapel ON tr_guru_tes.id_mapel = m_mapel.id WHERE tr_guru_tes.id_guru = '".$a['sess_konid']."'")->result();

		$a['pola_tes'] = array(""=>"-- Pilih --", "acak"=>"Soal Diacak", "set"=>"Soal Diurutkan");

//		$a['p_mapel'] = obj_to_array($this->db->query("SELECT * FROM m_mapel WHERE id IN (SELECT id_mapel FROM tr_guru_mapel WHERE id_guru = '".$a['sess_konid']."')")->result(), "id,nama");
		$a['p_mapel'] = obj_to_array($this->db->query("SELECT * FROM level_user WHERE publish = '1'")->result(), "id_level,nama_level");
		
		if ($uri3 == "det") {
			$are = array();

			$a = $this->db->query("SELECT * FROM tr_guru_tes WHERE id = '$uri4'")->row();
			
			if (!empty($a)) {
				$pc_waktu = explode(" ", $a->tgl_mulai);
				$pc_tgl = explode("-", $pc_waktu[0]);

				$pc_terlambat = explode(" ", $a->terlambat);

				$are['id'] = $a->id;
				$are['id_guru'] = $a->id_guru;
				$are['id_mapel'] = $a->id_mapel;
				$are['nama_ujian'] = $a->nama_ujian;
				$are['jumlah_soal'] = $a->jumlah_soal;
				$are['waktu'] = $a->waktu;
				$are['terlambat'] = $pc_terlambat[0];
				$are['terlambat2'] = substr($pc_terlambat[1],0,5);
				$are['jenis'] = $a->jenis;
				$are['detil_jenis'] = $a->detil_jenis;
				$are['tgl_mulai'] = $pc_waktu[0];
				$are['wkt_mulai'] = substr($pc_waktu[1],0,5);
				$are['token'] = $a->token;
			} else {
				$are['id'] = "";
				$are['id_guru'] = "";
				$are['id_mapel'] = "";
				$are['nama_ujian'] = "";
				$are['jumlah_soal'] = "";
				$are['waktu'] = "";
				$are['terlambat'] = "";
				$are['terlambat2'] = "";
				$are['jenis'] = "";
				$are['detil_jenis'] = "";
				$are['tgl_mulai'] = "";
				$are['wkt_mulai'] = "";
				$are['token'] = "";
			}

			j($are);
			exit();
		} else if ($uri3 == "simpan") {
			$ket 	= "";

			$ambil_data = $this->db->query("SELECT id FROM m_soal WHERE id_guru = '".bersih($p, "mapel")."'")->num_rows();


			$jml_soal_diminta = intval(bersih($p, "jumlah_soal"));
			
			/*if ($ambil_data < $jml_soal_diminta) {
				$ret_arr['status'] 	= "gagal";
				$ret_arr['caption']	= "Jumlah soal diinput, melebihi jumlah soal yang ada: ".$ambil_data;
			} else {*/
				if ($p->id != 0) {
					$this->db->query("UPDATE tr_guru_tes SET 
						id_mapel = '".bersih($p,"mapel")."', 
						nama_ujian = '".bersih($p,"nama_ujian")."', 
						jumlah_soal = '".bersih($p,"jumlah_soal")."', 
						waktu = '".bersih($p,"waktu")."', 
						terlambat = '".bersih($p,"terlambat")." ".bersih($p,"terlambat2")."', 
						tgl_mulai = '".bersih($p,"tgl_mulai")." ".bersih($p,"wkt_mulai")."', 
						jenis = '".bersih($p,"acak")."'
						WHERE id = '".bersih($p,"id")."'");
					$ket = "edit";
				} else {
					$ket = "tambah";
					$token = strtoupper(random_string('alpha', 5));

					$this->db->query("INSERT INTO tr_guru_tes VALUES (
						null, 
						'".bersih($p,"mapel")."',
						'',
						'".bersih($p,"nama_ujian")."', 
						'".bersih($p,"jumlah_soal")."', 
						'".bersih($p,"waktu")."', 
						'".bersih($p,"acak")."', 
						'', 
						'".bersih($p,"tgl_mulai")." ".bersih($p,"wkt_mulai")."', 
						'".bersih($p,"terlambat")." ".bersih($p,"terlambat2")."', 
						'$token')");
				}


				$ret_arr['status'] 	= "ok";
				$ret_arr['caption']	= $ket." sukses";
			//}
			j($ret_arr);
			exit();
		} else if ($uri3 == "hapus") {
			$this->db->query("DELETE FROM tr_guru_tes WHERE id = '".$uri4."'");
			$ret_arr['status'] 	= "ok";
			$ret_arr['caption']	= "hapus sukses";
			j($ret_arr);
			exit();
		} else if ($uri3 == "data") {
				$start = $this->input->post('start');
		        $length = $this->input->post('length');
		        $draw = $this->input->post('draw');
		        $search = $this->input->post('search');

		        $d_total_row = $this->db->query("SELECT a.id_ujianmodul
		        	FROM ujian_modul a
		        	INNER JOIN modul b ON a.id_modul = b.id_modul   
		        	WHERE a.id_ujian='$uri4' AND (b.judul LIKE '%".$search['value']."%')")->num_rows();
		    	
		    	//echo $this->db->last_query();

		        $q_datanya = $this->db->query("SELECT a.*, b.judul AS judul
												FROM ujian_modul a
									        	INNER JOIN modul b ON a.id_modul = b.id_modul
									        	WHERE a.id_ujian='$uri4' AND (b.judul LIKE '%".$search['value']."%') 
		                                        ORDER BY b.judul ASC LIMIT ".$start.", ".$length."")->result_array();
		        $data = array();
		        $no = ($start+1);

		        foreach ($q_datanya as $d) {
		        	//$jenis_soal = $d['jenis'] == "acak" ? "Soal diacak" : "Soal urut";
                
		            $data_ok = array();
		            $data_ok[0] = $no++;
		            $data_ok[1] = $d['judul']/*."<br>Token : <b>".$d['token']."</b> &nbsp;&nbsp; <a href='#' onclick='return refresh_token(".$d['id'].")' title='Perbarui Token'><i class='fa fa-refresh'></i></a>"*/;
		            $data_ok[2] = $d['jml_soal'];
		            $data_ok[3] = '
		            	<div class="btn-group">
                          <a href="'.base_url().'admin/ujian_ol/soal/'.$d['id_ujianmodul'].'" target="_blank" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-pencil" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Detail Soal</a>
                          <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-pencil" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Edit</a>
                          <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-remove" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Hapus</a>
                        </div>
	                         ';

		            $data[] = $data_ok;
		        }

		        $json_data = array(
		                    "draw" => $draw,
		                    "iTotalRecords" => $d_total_row,
		                    "iTotalDisplayRecords" => $d_total_row,
		                    "data" => $data
		                );
		        j($json_data);
		        exit;
		} else if ($uri3 == "refresh_token") {
			$token = strtoupper(random_string('alpha', 5));

			$this->db->query("UPDATE tr_guru_tes SET token = '$token' WHERE id = '$uri4'");

			$ret_arr['status'] = "ok";
			j($ret_arr);
			exit();
		} else {
			$a['load']    =  array("adm/m_modul_tes"); 
		}
		
		$a['title_page'] = "Soal Ujian Online";
        $a['breadcrumb'] = "Perpustakaan,Soal Ujian Online";
		$this->load->view('template/header');
		$this->load->view('template/aside');
		$this->load->view('template/footer', $a);
	}
	public function pilih_soal() {
		$this->cek_aktif();
		cek_hakakses(array("2","1"), $this->session->userdata('admin_level'));

		$a['sess_level'] = $this->session->userdata('admin_level');
		$a['sess_user'] = $this->session->userdata('admin_user');
		$a['sess_konid'] = $this->session->userdata('admin_konid');
		if ($this->input->get('modul')) {
			$moduls = $this->input->get('modul');
			$wheres = "id_mapel='$moduls'";
		} else {
			$wheres = "id_mapel = '00'";
		}
		$a['soal'] = $this->db->query("SELECT * FROM m_soal WHERE $wheres")->result();
		$a['modul'] = $this->db->query("SELECT * FROM modul")->result();
		$a['load']    =  array("adm/pilih_soal"); 
		$a['title_page'] = "Soal Ujian Online";
        $a['breadcrumb'] = "Perpustakaan,Soal Ujian Online";
		$this->load->view('template/header');
		$this->load->view('template/aside');
		$this->load->view('template/footer', $a);
		//$this->load->view('adm/pilih_soal', $a);
	}
	public function simpan_soal() {
		$this->cek_aktif();
		cek_hakakses(array("2","1"), $this->session->userdata('admin_level'));

		$list_id_soal	= "";
		
		$soal = $this->input->post('soal');
		$modul = $this->input->post('id_modul');
		$id_tes = $this->input->post('id_tes');
		$jumsoal = count($soal);

		for ($i=0; $i < $jumsoal; $i++) {
            $list_id_soal .= $soal[$i]."|^|";
		}

		$list_id_soal = substr($list_id_soal, 0, -3);

		$datinput= array(
		     "id_modul" => $modul,
		     "id_soal" => $list_id_soal,
		     "id_ujian" => $id_tes,
		     "jml_soal" => $jumsoal
		    );
		$this->Crud_model->input('ujian_modul',$datinput);
		
		redirect('adm/m_modul/'.$id_tes, 'refresh');
	}

	/* == SISWA == */
	public function ikuti_ujian() {
		$this->cek_aktif();
		cek_hakakses(array("3","4"), $this->session->userdata('admin_level'));
		
		//var def session
		$a['sess_level'] = $this->session->userdata('admin_level');
		$a['sess_user'] = $this->session->userdata('admin_user');
		$a['sess_konid'] = $this->session->userdata('admin_konid');

		//var def uri segment
		$uri2 = $this->uri->segment(2);
		$uri3 = $this->uri->segment(3);
		$uri4 = $this->uri->segment(4);
		//var post from json
		$p = json_decode(file_get_contents('php://input'));
		//return as json
		$jeson = array();
		//$a['sess_konid']
		$a['data'] = $this->db->query("SELECT 
									a.id, a.nama_ujian, a.jumlah_soal, a.waktu,
									c.nama_level nmguru,
									IF((d.status='Y' AND NOW() BETWEEN d.tgl_mulai AND d.tgl_selesai),'Sedang Tes',
									IF(d.status='Y' AND NOW() NOT BETWEEN d.tgl_mulai AND d.tgl_selesai,'Waktu Habis',
									IF(d.status='N','Selesai','Belum Ikut'))) status 
									FROM tr_guru_tes a
									INNER JOIN level_user c ON a.id_guru = c.id_level
									LEFT JOIN tr_ikut_ujian d ON CONCAT('".$a['sess_konid']."',a.id) = CONCAT(d.id_user,d.id_tes)
									ORDER BY a.id ASC")->result();
		//echo $this->db->last_query();
		//$a['p']	= "m_list_ujian_siswa";
		$a['load']    =  array("adm/m_list_ujian_siswa"); 
		$a['title_page'] = "DASHBOARD";
        $a['breadcrumb'] = "Home,Dashboard";
		$this->load->view('template/header');
		$this->load->view('template/aside');
		$this->load->view('template/footer', $a);
	}
	public function ikut_ujian() {
		$this->cek_aktif();
		cek_hakakses(array("3"), $this->session->userdata('admin_level'));
		
		//var def session
		$a['sess_level'] = $this->session->userdata('admin_level');
		$a['sess_user'] = $this->session->userdata('admin_user');
		$a['sess_konid'] = $this->session->userdata('admin_konid');

		//var def uri segment
		$uri2 = $this->uri->segment(2);
		$uri3 = $this->uri->segment(3);
		$uri4 = $this->uri->segment(4);
		//var post from json
		$p = json_decode(file_get_contents('php://input'));
		$a['detil_user'] = $this->db->query("SELECT * FROM pegawai WHERE id_pegawai = '".$a['sess_konid']."'")->row();
		if ($uri3 == "simpan_satu") {
			$p			= json_decode(file_get_contents('php://input'));
			
			$update_ 	= "";
			for ($i = 1; $i < $p->jml_soal; $i++) {
				$_tjawab 	= "opsi_".$i;
				$_tidsoal 	= "id_soal_".$i;
				$_ragu 		= "rg_".$i;
				$jawaban_ 	= empty($p->$_tjawab) ? "" : $p->$_tjawab;
				$update_	.= "".$p->$_tidsoal.":".$jawaban_.":".$p->$_ragu.",";
			}
			$update_		= substr($update_, 0, -1);
			$this->db->query("UPDATE tr_ikut_ujian SET list_jawaban = '".$update_."' WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'");
			//echo $this->db->last_query();

			$q_ret_urn 	= $this->db->query("SELECT list_jawaban FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'");
			
			$d_ret_urn 	= $q_ret_urn->row_array();
			$ret_urn 	= explode(",", $d_ret_urn['list_jawaban']);
			$hasil 		= array();
			foreach ($ret_urn as $key => $value) {
				$pc_ret_urn = explode(":", $value);
				$idx 		= $pc_ret_urn[0];
				$val 		= $pc_ret_urn[1].'_'.$pc_ret_urn[2];
				$hasil[]= $val;
			}

			$d['data'] = $hasil;
			$d['status'] = "ok";

			j($d);
			exit;		

		} else if ($uri3 == "simpan_akhir") {
			$id_tes = abs($uri4);

			$get_jawaban = $this->db->query("SELECT list_jawaban FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'")->row_array();
			$pc_jawaban = explode(",", $get_jawaban['list_jawaban']);

			$jumlah_benar 	= 0;
			$jumlah_salah 	= 0;
			$jumlah_ragu  	= 0;
			$nilai_bobot 	= 0;
			$total_bobot	= 0;
			$jumlah_soal	= sizeof($pc_jawaban);

			for ($x = 0; $x < $jumlah_soal; $x++) {
				$pc_dt = explode(":", $pc_jawaban[$x]);
				$id_soal 	= $pc_dt[0];
				$jawaban 	= $pc_dt[1];
				$ragu 		= $pc_dt[2];

				$cek_jwb 	= $this->db->query("SELECT bobot, jawaban FROM m_soal WHERE id = '".$id_soal."'")->row();
				$total_bobot = $total_bobot + $cek_jwb->bobot;
				
				if (($cek_jwb->jawaban == $jawaban)) {
					//jika jawaban benar 
					$jumlah_benar++;
					$nilai_bobot = $nilai_bobot + $cek_jwb->bobot;
					$q_update_jwb = "UPDATE m_soal SET jml_benar = jml_benar + 1 WHERE id = '".$id_soal."'";
				} else {
					//jika jawaban salah
					$jumlah_salah++;
					$q_update_jwb = "UPDATE m_soal SET jml_salah = jml_salah + 1 WHERE id = '".$id_soal."'";
				}
				$this->db->query($q_update_jwb);
			}

			$nilai = ($jumlah_benar / $jumlah_soal)  * 100;
			$nilai_bobot = ($nilai_bobot / $total_bobot)  * 100;

			$this->db->query("UPDATE tr_ikut_ujian SET jml_benar = ".$jumlah_benar.", nilai = ".$nilai.", nilai_bobot = ".$nilai_bobot.", status = 'N' WHERE id_tes = '$id_tes' AND id_user = '".$a['sess_konid']."'");
			$a['status'] = "ok";
			j($a);
			exit;		
		} else if ($uri3 == "token") {
			header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
			header("Cache-Control: post-check=0, pre-check=0", false);
			header("Pragma: no-cache");
			
			$a['du'] = $this->db->query("SELECT a.id, a.tgl_mulai, a.terlambat, 
										a.token, a.nama_ujian, a.jumlah_soal, a.waktu,
										b.nama_level nmguru,
										(case
											when (now() < a.tgl_mulai) then 0
											when (now() >= a.tgl_mulai and now() <= a.terlambat) then 1
											else 2
										end) statuse
										FROM tr_guru_tes a 
										INNER JOIN level_user b ON a.id_guru = b.id_level
										WHERE a.id = '$uri4'")->row_array();

			$a['dp'] = $this->db->query("SELECT * FROM pegawai WHERE id_pegawai = '".$a['sess_konid']."'")->row_array();
			//$q_status = $this->db->query();

			if (!empty($a['du']) || !empty($a['dp'])) {
				$tgl_selesai = $a['du']['tgl_mulai'];
			    //$tgl_selesai2 = strtotime($tgl_selesai);
			    //$tgl_baru = date('F j, Y H:i:s', $tgl_selesai);

			    //$tgl_terlambat = strtotime("+".$a['du']['terlambat']." minutes", $tgl_selesai2);	
				$tgl_terlambat_baru = $a['du']['terlambat'];

				$a['tgl_mulai'] = $tgl_selesai;
				$a['terlambat'] = $tgl_terlambat_baru;

				$a['load']    =  array("adm/m_token"); 
				$a['title_page'] = "DASHBOARD";
		        $a['breadcrumb'] = "Home,Dashboard";
				$this->load->view('template/header');
				$this->load->view('template/aside');
				$this->load->view('template/footer', $a);
			} else {
				redirect('adm/ikuti_ujian');
			}
		} else {
			
			header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
			header("Cache-Control: post-check=0, pre-check=0", false);
			header("Pragma: no-cache");
			
			
			$cek_sdh_selesai= $this->db->query("SELECT id FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."' AND status = 'N'")->num_rows();
			
			//sekalian validasi waktu sudah berlalu...
			if ($cek_sdh_selesai < 1) {
				//ini jika ujian belum tercatat, belum ikut
				//ambil detil soal
				$cek_detil_tes = $this->db->query("SELECT * FROM tr_guru_tes WHERE id = '$uri4'")->row();
				$q_cek_sdh_ujian= $this->db->query("SELECT id FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'");
				$d_cek_sdh_ujian= $q_cek_sdh_ujian->row();
				$cek_sdh_ujian	= $q_cek_sdh_ujian->num_rows();
				$acakan = $cek_detil_tes->jenis == "acak" ? "ORDER BY RAND()" : "ORDER BY id ASC";

				$data_so =  $this->db->query("SELECT * FROM ujian_modul WHERE id_ujian='$uri4'")->result();
				if (!empty($data_so)) {
					$soal_where = "";
					foreach ($data_so as $ds) {
						$list_data_so	= "";
						$idsoal = explode("|^|", $ds->id_soal);

						foreach ($idsoal as $keys) {
							$list_data_so .= "id='".$keys."' OR ";
						}

						$list_data_so = substr($list_data_so, 0, -3);
						
						$soal_where .= $list_data_so." OR ";
					}
					$soal_where = substr($soal_where, 0, -3);
				}
				if ($cek_sdh_ujian < 1)	{		
					$soal_urut_ok = array();
					$q_soal			= $this->db->query("SELECT b.judul, a.id, a.file, a.tipe_file, a.soal, a.opsi_a, a.opsi_b, a.opsi_c, a.opsi_d, a.opsi_e, '' AS jawaban FROM m_soal a LEFT JOIN modul b ON a.id_mapel=b.id_modul WHERE (".$soal_where.") ".$acakan." LIMIT ".$cek_detil_tes->jumlah_soal)->result();
					$i = 0;
					foreach ($q_soal as $s) {
						$soal_per = new stdClass();
						$soal_per->id = $s->id;
						$soal_per->soal = $s->soal;
						$soal_per->file = $s->file;
						$soal_per->tipe_file = $s->tipe_file;
						$soal_per->opsi_a = $s->opsi_a;
						$soal_per->opsi_b = $s->opsi_b;
						$soal_per->opsi_c = $s->opsi_c;
						$soal_per->opsi_d = $s->opsi_d;
						$soal_per->opsi_e = $s->opsi_e;
						$soal_per->jawaban = $s->jawaban;
						$soal_per->judul = $s->judul;
						$soal_urut_ok[$i] = $soal_per;
						$i++;
					}
					$soal_urut_ok = $soal_urut_ok;
					$list_id_soal	= "";
					$list_jw_soal 	= "";
					if (!empty($q_soal)) {
						foreach ($q_soal as $d) {
							$list_id_soal .= $d->id.",";
							$list_jw_soal .= $d->id."::N,";
						}
					}
					$list_id_soal = substr($list_id_soal, 0, -1);
					$list_jw_soal = substr($list_jw_soal, 0, -1);
					$waktu_selesai = tambah_jam_sql($cek_detil_tes->waktu);
					$time_mulai		= date('Y-m-d H:i:s');
					$this->db->query("INSERT INTO tr_ikut_ujian VALUES (null, '$uri4', '".$a['sess_konid']."', '$list_id_soal', '$list_jw_soal', 0, 0, 0, '$time_mulai', ADDTIME('$time_mulai', '$waktu_selesai'), 'Y')");
					
					$detil_tes = $this->db->query("SELECT * FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'")->row();

					$soal_urut_ok= $soal_urut_ok;
				} else {
					$q_ambil_soal 	= $this->db->query("SELECT * FROM tr_ikut_ujian WHERE id_tes = '$uri4' AND id_user = '".$a['sess_konid']."'")->row();

					$urut_soal 		= explode(",", $q_ambil_soal->list_jawaban);
					$soal_urut_ok	= array();
					for ($i = 0; $i < sizeof($urut_soal); $i++) {
						$pc_urut_soal = explode(":",$urut_soal[$i]);
						$pc_urut_soal1 = empty($pc_urut_soal[1]) ? "''" : "'".$pc_urut_soal[1]."'";
						$ambil_soal = $this->db->query("SELECT a.*,b.judul, $pc_urut_soal1 AS jawaban FROM m_soal a LEFT JOIN modul b ON b.id_modul=a.id_mapel WHERE a.id = '".$pc_urut_soal[0]."'")->row();
						$soal_urut_ok[] = $ambil_soal; 
					}
					
					$detil_tes = $q_ambil_soal;

					$soal_urut_ok = $soal_urut_ok;
				}

				$pc_list_jawaban = explode(",", $detil_tes->list_jawaban);

				$arr_jawab = array();
				foreach ($pc_list_jawaban as $v) {
				  $pc_v = explode(":", $v);
				  $idx = $pc_v[0];
				  $val = $pc_v[1];
				  $rg = $pc_v[2];

				  $arr_jawab[$idx] = array("j"=>$val,"r"=>$rg);
				}

				$html = '';
				$no = 1;
				if (!empty($soal_urut_ok)) {
				    foreach ($soal_urut_ok as $d) { 
				        $tampil_media = tampil_media("./upload/gambar_soal/".$d->file, 'auto','auto');
				        $vrg = $arr_jawab[$d->id]["r"] == "" ? "N" : $arr_jawab[$d->id]["r"];

				        $html .= '<input type="hidden" name="id_soal_'.$no.'" value="'.$d->id.'">';
				        $html .= '<input type="hidden" name="rg_'.$no.'" id="rg_'.$no.'" value="'.$vrg.'">';
				        $html .= '<div class="step" id="widget_'.$no.'">';

				        $html .= '<h3>'.$d->judul.'</h3><br>'.$d->soal.'<br>'.$tampil_media.'<div class="funkyradio">';

				        for ($j = 0; $j < $this->config->item('jml_opsi'); $j++) {
				            $opsi = "opsi_".$this->opsi[$j];

				            $checked = $arr_jawab[$d->id]["j"] == strtoupper($this->opsi[$j]) ? "checked" : "";

				            $pc_pilihan_opsi = explode("#####", $d->$opsi);

				            $tampil_media_opsi = (is_file('./upload/gambar_soal/'.$pc_pilihan_opsi[0]) || $pc_pilihan_opsi[0] != "") ? tampil_media('./upload/gambar_opsi/'.$pc_pilihan_opsi[0],'auto','auto') : '';
					    
					    $pilihan_opsi = empty($pc_pilihan_opsi[1]) ? "-" : $pc_pilihan_opsi[1];
					    
				            $html .= '<div class="funkyradio-success" onclick="return simpan_sementara();">
				                <input type="radio" id="opsi_'.strtoupper($this->opsi[$j]).'_'.$d->id.'" name="opsi_'.$no.'" value="'.strtoupper($this->opsi[$j]).'" '.$checked.'> <label for="opsi_'.strtoupper($this->opsi[$j]).'_'.$d->id.'"><div class="huruf_opsi">'.$this->opsi[$j].'</div> <p>'.$pilihan_opsi.'</p><p>'.$tampil_media_opsi.'</p></label></div>';
				        }
				        $html .= '</div></div>';
				        $no++;
				    }
				}

				$a['jam_mulai'] = $detil_tes->tgl_mulai;
				$a['jam_selesai'] = $detil_tes->tgl_selesai;
				$a['id_tes'] = $cek_detil_tes->id;
				$a['no'] = $no;
				$a['html'] = $html;

				$this->load->view('adm/v_ujian', $a);
			} else {
				redirect('adm/sudah_selesai_ujian/'.$uri4);
			}
		}

	}
	public function jvs() {
		$this->cek_aktif();
		
		$data_soal 		= $this->db->query("SELECT id, gambar, soal, opsi_a, opsi_b, opsi_c, opsi_d, opsi_e FROM m_soal ORDER BY RAND()")->result();
		
		j($data_soal);
		exit;
	}
	public function sudah_selesai_ujian() {
		$this->cek_aktif();
		
		//var def session
		$a['sess_level'] = $this->session->userdata('admin_level');
		$a['sess_user'] = $this->session->userdata('admin_user');
		$a['sess_konid'] = $this->session->userdata('admin_konid');

		//var def uri segment
		$uri2 = $this->uri->segment(2);
		$uri3 = $this->uri->segment(3);
		$uri4 = $this->uri->segment(4);
		
		$q_nilai = $this->db->query("SELECT nilai, tgl_selesai FROM tr_ikut_ujian WHERE id_tes = $uri3 AND id_user = '".$a['sess_konid']."' AND status = 'N'")->row();
		if (empty($q_nilai)) {
			redirect('adm/ikut_ujian/_/'.$uri3);
		} else {
			
		//	$a['p'] = "v_selesai_ujian";
			$a['load']    =  array("adm/v_selesai_ujian"); 
			
			if ($this->config->item('tampil_nilai')) {
				$a['data'] = "<div class='alert alert-danger'>Anda telah selesai mengikuti ujian ini pada : <strong style='font-size: 16px'>".tjs($q_nilai->tgl_selesai, "l")."</strong>, dan mendapatkan nilai : <strong style='font-size: 16px'>".$q_nilai->nilai."</strong></div>";
			} else {
				$a['data'] = "<div class='alert alert-danger'>Anda telah selesai mengikuti ujian ini pada : <strong style='font-size: 16px'>".tjs($q_nilai->tgl_selesai, "l")."</strong>. Nilai akan diumumkan oleh Guru yang bersangkutan.</div>";
			}
		}

		
		$a['title_page'] = "DASHBOARD";
        $a['breadcrumb'] = "Home,Dashboard";
		$this->load->view('template/header');
		$this->load->view('template/aside');
		$this->load->view('template/footer', $a);

	//	$this->load->view('aaa', $a);
	}
	//fungsi tambahan
	public function get_akhir($tabel, $field, $kode_awal, $pad) {
		$get_akhir	= $this->db->query("SELECT MAX($field) AS max FROM $tabel LIMIT 1")->row();
		$data		= (intval($get_akhir->max)) + 1;
		$last		= $kode_awal.str_pad($data, $pad, '0', STR_PAD_LEFT);
	
		return $last;
	}
	
	
}
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
