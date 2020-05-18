<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function login()
	{
		if(($this->session->userdata('id'))==NULL){
			$this->load->view('auth/login');
		}else{
			$cek = $this->Main_model->getSelectedData('user_to_role a', 'b.route', array('a.user_id'=>$this->session->userdata('id'),'b.deleted'=>'0'), "",'','','',array(
				'table' => 'user_role b',
				'on' => 'a.role_id=b.id',
				'pos' => 'left',
			))->result();
			if($cek!=NULL){
				foreach ($cek as $key => $value) {
					redirect($value->route);
				}
			}
			else{
				$this->load->view('auth/login');
			}
		}
	}
	public function login_process(){
		$cek = $this->Main_model->getSelectedData('user a', '*', array("a.username" => $this->input->post('username'), "a.is_active" => '1', 'deleted' => '0'), 'a.username ASC')->result();
		if($cek!=NULL){
			$cek2 = $this->Main_model->getSelectedData('user a', '*', array("a.username" => $this->input->post('username'),'pass' => $this->input->post('password'), "a.is_active" => '1', 'deleted' => '0'), 'a.username ASC','','','','')->result();
			if($cek2!=NULL){
				foreach ($cek as $key => $value) {
					$total_login = ($value->total_login)+1;
					$login_attempts = ($value->login_attempts)+1;
					$data_log = array(
						'total_login' => $total_login,
						'last_login' => date('Y-m-d H-i-s'),
						'last_activity' => date('Y-m-d H-i-s'),
						'login_attempts' => $login_attempts,
						'last_login_attempt' => date('Y-m-d H-i-s'),
						'ip_address' => $this->input->ip_address()
					);
					$this->Main_model->updateData('user',$data_log,array('id'=>$value->id));
					$this->Main_model->log_activity($value->id,'Login to system','Login via web browser',$this->input->post('location'));
					$role = $this->Main_model->getSelectedData('user_to_role a', 'b.*,a.user_id', array('a.user_id'=>$value->id,'b.deleted'=>'0'), "",'','','',array(
						'table' => 'user_role b',
						'on' => 'a.role_id=b.id',
						'pos' => 'left'
					))->row();
					if($role==NULL){
						$this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
															<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
															<strong>Ups! </strong>Akun Anda tidak dikenali sistem.
														</div>' );
						echo "<script>window.location='".base_url()."'</script>";
					}else{
						if($role->role_id=='9'){
							$get_data_akun = $this->Main_model->getSelectedData('user_to_role a', 'b.*,a.user_id,c.fullname AS nama_pegawai,c.photo', array('a.user_id'=>$value->id,'b.deleted'=>'0'), "",'','','',array(
								array(
									'table' => 'user_role b',
									'on' => 'a.role_id=b.id',
									'pos' => 'left'
								),
								array(
									'table' => 'user_profile c',
									'on' => 'a.user_id=c.user_id',
									'pos' => 'left'
								)
							))->result();
							foreach ($get_data_akun as $key => $value2) {
								$sess_data['id'] = $value2->user_id;
								$sess_data['location'] = $this->input->post('location');
								$sess_data['admin_id'] = $value2->id; // ini mau ambil user_id atau id_pegawai?kalo user_id ada di session "id", kalo id_pegawai ada di session "admin_konid"
								$sess_data['admin_user'] = $this->input->post('username');
								$sess_data['admin_level'] = $value2->level;
								$sess_data['admin_nama'] = $value2->nama_pegawai;
								$sess_data['foto'] = $value2->photo;
								$sess_data['admin_valid'] = true;
								$this->session->set_userdata($sess_data);
								redirect($value2->route);
							}
						}else{
							$get_data_akun = $this->Main_model->getSelectedData('user_to_role a', 'b.*,a.user_id,c.id_pegawai,c.nama_pegawai,c.foto', array('a.user_id'=>$value->id,'b.deleted'=>'0'), "",'','','',array(
								array(
									'table' => 'user_role b',
									'on' => 'a.role_id=b.id',
									'pos' => 'left'
								),
								array(
									'table' => 'pegawai c',
									'on' => 'a.user_id=c.user_id',
									'pos' => 'left'
								)
							))->result();
							foreach ($get_data_akun as $key => $value2) {
								$sess_data['id'] = $value2->user_id;
								$sess_data['location'] = $this->input->post('location');
								$sess_data['admin_id'] = $value2->id; // ini mau ambil user_id atau id_pegawai?kalo user_id ada di session "id", kalo id_pegawai ada di session "admin_konid"
								$sess_data['admin_user'] = $this->input->post('username');
								$sess_data['admin_level'] = $value2->level;
								$sess_data['admin_konid'] = $value2->id_pegawai;
								$sess_data['admin_nama'] = $value2->nama_pegawai;
								$sess_data['foto'] = $value2->foto;
								$sess_data['admin_valid'] = true;
								$this->session->set_userdata($sess_data);
								redirect($value2->route);
							}
						}
					}
				}
			}else{
				foreach ($cek as $key => $value) {
					$login_attempts = ($value->login_attempts)+1;
					$data_log = array(
						'login_attempts' => $login_attempts,
						'last_login_attempt' => date('Y-m-d H-i-s')
					);
					$this->Main_model->updateData('user',$data_log,array('id'=>$value->id));
					$this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
													<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													<strong>Ups! </strong>Password yg Anda masukkan tidak valid.
												</div>' );
					echo "<script>window.location='".base_url()."'</script>";
				}
			}
		}
		else{
			$this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<strong>Ups! </strong>Username/ Email yang Anda masukkan tidak terdaftar.
										</div>' );
			echo "<script>window.location='".base_url()."'</script>";
		}
	}
	public function register_process(){
		$cek = $this->Main_model->getSelectedData('user a', 'a.*', array("a.username" => $this->input->post('email')))->row();
		if($cek!=NULL){
			$this->session->set_flashdata('error','
			<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<strong>Ups! </strong>Email ini telah digunakan.
			</div>' );
			echo "<script>window.location='".base_url()."'</script>";
		}
		else{
			$this->db->trans_start();
			$user_id = $this->Main_model->getLastID('user','id');
            $new_id = $user_id['id']+1;
			$data1 = array(
						'id' => $new_id,
						'username' => $this->input->post('email'),
						'pass' => $this->input->post('password'),
						'total_login' => '1',
						'last_login' => date('Y-m-d H-i-s'),
						'last_activity' => date('Y-m-d H-i-s'),
						'login_attempts' => '1',
						'last_login_attempt' => date('Y-m-d H-i-s'),
						'ip_address' => $this->input->ip_address(),
						'is_active' => '1',
						'created_at' => date('Y-m-d H:i:s'),
						'created_by' => $new_id
					);
			// print_r($data1);
			$this->Main_model->insertData('user',$data1);

			$data2 = array(
				'user_id' => $new_id,
				'fullname' => $this->input->post('nama'),
				'nin' => $this->input->post('nik'),
				'address' => $this->input->post('alamat')
			);
			// print_r($data2);
			$this->Main_model->insertData('user_profile',$data2);

			$data3 = array(
				'user_id' => $new_id,
				'role_id' => '9',
			);
			// print_r($data3);
			$this->Main_model->insertData('user_to_role',$data3);

			$data4 = array(
				'user_id' => $new_id,
				'nama' => $this->input->post('nama'),
				'nik' => $this->input->post('nik'),
				'alamat' => $this->input->post('alamat'),
				'email' => $this->input->post('email'),
				'no_hp' => $this->input->post('no_hp'),
				'created_at' => date('Y-m-d H:i:s')
			);
			// print_r($data4);
			$this->Main_model->insertData('tamu',$data4);

			$this->Main_model->log_activity($new_id,'Registration new account',"Tamu registrasi (".$this->input->post('nama').")");
			$this->db->trans_complete();
			if($this->db->trans_status() === false){
				$this->session->set_flashdata('error','
				<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<strong>Ups! </strong>Silahkan ulangi kembali.
				</div>' );
				echo "<script>window.location='".base_url()."'</script>";
			}
			else{
				$sess_data['id'] = $new_id;
				$sess_data['location'] = $this->input->post('location');
				$sess_data['admin_id'] = '9';
				$sess_data['admin_user'] = $this->input->post('email');
				$sess_data['admin_level'] = '';
				$sess_data['admin_nama'] = $this->input->post('nama');
				$sess_data['foto'] = '';
				$sess_data['admin_valid'] = true;
				$this->session->set_userdata($sess_data);
				redirect('tentang_aplikasi');
			}
		}
	}
	public function about()
	{
        $data['title_page'] = "Tentang Aplikasi";
        $data['breadcrumb'] = "Dashboard,Tentang Aplikasi";
        $data['load']    =  array("auth/about");  
        $this->load->view('template/layout', $data);
	}
	public function pengaturan_profil()
	{
        $data['title_page'] = "Pengaturan Profil";
        $data['breadcrumb'] = "Dashboard,Pengaturan Profil";
        $data['load']    =  array("auth/profile_setting");  
        $this->load->view('template/layout', $data);
	}
	public function perbarui_profil(){
		$this->db->trans_start();
		$nmfile = "file_".time(); // nama file saya beri nama langsung dan diikuti fungsi time
		$config['upload_path'] = dirname($_SERVER["SCRIPT_FILENAME"]).'/assets/images/'; // path folder
		$config['allowed_types'] = 'jpg|jpeg|png'; // type yang dapat diakses bisa anda sesuaikan
		$config['max_size'] = '3072'; // maksimum besar file 3M
		$config['file_name'] = $nmfile; // nama yang terupload nantinya

		$this->upload->initialize($config);
		if(isset($_FILES['file']['name']))
		{
			if(!$this->upload->do_upload('file'))
			{
				$pesan_error = $this->upload->display_errors();
			}
			else
			{
				$file_foto = $this->upload->data();
				if($this->session->userdata('admin_id')=='9'){
					$this->Main_model->updateData('user_profile',array('photo'=>$file_foto['file_name']),array('user_id'=>$this->session->userdata('id')));
				}else{
					$this->Main_model->updateData('pegawai',array('foto'=>$file_foto['file_name']),array('user_id'=>$this->session->userdata('id')));
					if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') {
						$this->Main_model->updateData('user_profile',array('photo'=>$file_foto['file_name']),array('user_id'=>$this->session->userdata('id')));
					}else{
						echo'';
					}
				}
				
			}
		}else{echo'';}
		if($this->session->userdata('admin_id')=='9'){
			$data_update1 = array(
				'nama' => $this->input->post('nama'),
				'nik' => $this->input->post('nik'),
				'alamat' => $this->input->post('alamat'),
				'email' => $this->input->post('email'),
				'no_hp' => $this->input->post('no_hp')
			);
			$this->Main_model->updateData('tamu',$data_update1,array('user_id'=>$this->session->userdata('id')));
			$data_update2 = array(
				'fullname' => $this->input->post('nama'),
				'nin' => $this->input->post('nik')
			);
			$this->Main_model->updateData('user_profile',$data_update2,array('user_id'=>$this->session->userdata('id')));
		}else{
			$data_update1 = array(
				'nama_pegawai' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'email' => $this->input->post('email'),
				'phone' => $this->input->post('no_hp')
			);
			$this->Main_model->updateData('pegawai',$data_update1,array('user_id'=>$this->session->userdata('id')));
			if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') {
				$this->Main_model->updateData('user_profile',array('fullname'=>$this->input->post('nama')),array('user_id'=>$this->session->userdata('id')));
			}else{
				echo'';
			}
		}
		$this->db->trans_complete();
		if($this->db->trans_status() === false){
			$this->session->set_flashdata('gagal','<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Oops! </strong>data gagal diperbarui.<br /></div>' );
			echo "<script>window.location='".base_url()."pengaturan_profil/'</script>";
		}
		else{
			$this->session->set_flashdata('sukses','<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert"><i class="ace-icon fa fa-times"></i></button><strong></i>Yeah! </strong>data telah berhasil diperbarui.<br /></div>' );
			echo "<script>window.location='".base_url()."pengaturan_profil/'</script>";
		}
	}
	public function logout(){
		$this->session->sess_destroy();
		echo "<script>window.location='".base_url()."'</script>";
	}
	public function reset_password() {
		$this->db->trans_start();
		$get_data = $this->Main_model->getSelectedData('tamu a', 'a.*', array('a.email'=>$this->input->post('email')))->row();
		if($get_data==NULL){
			$cek_pegawai = $this->Main_model->getSelectedData('pegawai a', 'a.*', array('a.email'=>$this->input->post('email')))->row();
			if($cek_pegawai==NULL){
				$this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<strong>Ups! </strong>Email yang Anda masukkan tidak terdaftar.
				</div>' );
				echo "<script>window.location='".base_url()."'</script>";
			}else{
				require_once(APPPATH.'libraries/class.phpmailer.php');
				$new_pass = rand();
				$mail = new PHPMailer; 
				$mail->IsSMTP();
				$mail->SMTPSecure = 'ssl'; 
				$mail->Host = "mail.aplikasiku.online";
				// 0 = off (for production use, No debug messages)
				// 1 = client messages
				// 2 = client and server messages
				$mail->SMTPDebug = 0;
				$mail->Port = 465;
				$mail->SMTPAuth = true;
				$mail->Username = "service@aplikasiku.online";
				$mail->Password = "Asbak425##";
				$mail->SetFrom("service@aplikasiku.online","Admin SIBiLUP");
				$mail->Subject = "Reset Password";
				$mail->MsgHTML("Kata sandi baru Anda adalah : ".$new_pass);
				$mail->AddAddress($cek_pegawai->email,$cek_pegawai->nama_pegawai);
				$mail->Send();
				$this->Main_model->updateData('user',array('pass'=>$new_pass),array('id'=>$cek_pegawai->user_id));
				$this->db->trans_complete();
				if($this->db->trans_status() === false){
					$this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
												<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
												<strong>Ups! </strong>Silahkan ulangi kembali.
											</div>' );
					echo "<script>window.location='".base_url()."'</script>";
				}
				else{
					$this->session->set_flashdata('error','<div class="alert alert-success alert-dismissible" role="alert" style="text-align: justify;">
												<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
												<strong>Yeah! </strong>Silahkan cek inbox/ spam email Anda.
											</div>' );
					echo "<script>window.location='".base_url()."'</script>";
				}
			}
		}else{
			require_once(APPPATH.'libraries/class.phpmailer.php');
			$new_pass = rand();
			$mail = new PHPMailer; 
			$mail->IsSMTP();
			$mail->SMTPSecure = 'ssl'; 
			$mail->Host = "mail.aplikasiku.online";
			// 0 = off (for production use, No debug messages)
			// 1 = client messages
			// 2 = client and server messages
			$mail->SMTPDebug = 0;
			$mail->Port = 465;
			$mail->SMTPAuth = true;
			$mail->Username = "service@aplikasiku.online";
			$mail->Password = "Asbak425##";
			$mail->SetFrom("service@aplikasiku.online","Admin SIBiLUP");
			$mail->Subject = "Reset Password";
			$mail->MsgHTML("Kata sandi baru Anda adalah : ".$new_pass);
			$mail->AddAddress($get_data->email,$get_data->nama);
			$mail->Send();
			$this->Main_model->updateData('user',array('pass'=>$new_pass),array('id'=>$get_data->user_id));
			$this->db->trans_complete();
			if($this->db->trans_status() === false){
				$this->session->set_flashdata('error','<div class="alert alert-danger alert-dismissible" role="alert" style="text-align: justify;">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<strong>Ups! </strong>Silahkan ulangi kembali.
										</div>' );
				echo "<script>window.location='".base_url()."'</script>";
			}
			else{
				$this->session->set_flashdata('error','<div class="alert alert-success alert-dismissible" role="alert" style="text-align: justify;">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
											<strong>Yeah! </strong>Silahkan cek inbox/ spam email Anda.
										</div>' );
				echo "<script>window.location='".base_url()."'</script>";
			}
		}
    }
}