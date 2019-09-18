<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajaxSetup({
			type:"POST",
			url: "<?php echo site_url('/admin/Master/ajax_function')?>",
			cache: false,
		});
		
		$("#user_role").change(function(){
			var value=$(this).val();
			$.ajax({
				data:{id:value,modul:'get_wilayah_by_user_role'},
				success: function(respond){
					$("#wilayah").html(respond);
					$("#id_provinsi").change(function(){
						var value=$(this).val();
						$.ajax({
							data:{id:value,modul:'get_kabupaten_by_id_provinsi'},
							success: function(respond){
								$("#id_kabupaten").html(respond);
							}
						})
					});
				}
			})
		});
        $("#prov").change(function(){
            var value=$(this).val();
            $.ajax({
                data:{id:value,modul:'get_kabupaten_by_id_provinsi'},
                success: function(respond){
                    $("#id_kab").html(respond);
                }
            })
        });
	})
</script>
<ul class="page-breadcrumb breadcrumb">
	<li>
		<h3>Catatan</h3>
	</li>
	<li>1. Kolom isian dengan tanda bintang (<font color='red'>*</font>) adalah wajib untuk di isi.
	</li>
	<li>
	</li>
</ul>
<br>
<?= $this->session->flashdata('sukses') ?>
<?= $this->session->flashdata('gagal') ?>
<br>
<div class="page-content-inner">
	<div class="row">
		<div class="col-lg-12 col-md-12">
			<div class="card">
				<div class="card-block">
					<div class="portlet light ">
						<div class="portlet-body">
							<form role="form" class="form-horizontal" action="<?=base_url('admin_side/perbarui_data_pengguna');?>" method="post"  enctype='multipart/form-data'>
                                <?php
                                foreach ($data_utama as $key => $value) {
                                ?>
                                <input type='hidden' name='user_id' value='<?= md5($value->user_id); ?>'>
                                <input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>">
								<div class="form-body">
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Nama Lengkap <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<input type="text" class="form-control" name="nama_pegawai" value='<?= $value->nama_pegawai; ?>' required>
											</div>
										</div>
									</div>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Alamat <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<textarea class="form-control" name="alamat" required><?= $value->alamat; ?></textarea>
											</div>
										</div>
									</div>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Nomor Telpon <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<input type="text" class="form-control" name="phone" value='<?= $value->phone; ?>' required>
											</div>
										</div>
									</div>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Email <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<input type="email" class="form-control" name="email" value='<?= $value->email; ?>' required>
											</div>
										</div>
									</div>
									<hr>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">User Role <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<select name='user_role' id='user_role' class="form-control select2-allow-clear" required>
													<option value=''>-- Pilih --</option>
													<option value='3' <?php if($value->role_id=='3'){echo'selected';}else{echo'';} ?>>Admin Provinsi</option>
													<option value='4' <?php if($value->role_id=='4'){echo'selected';}else{echo'';} ?>>Admin Kabupaten/ Kota</option>
												</select>
											</div>
										</div>
									</div>
									<div id='wilayah'>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Provinsi <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<select name='wilayah' id='prov' class="form-control select2-allow-clear" required>
                                                    <option value=''>-- Pilih --</option>
                                                    <?php
                                                    $penanda = '';
                                                    if($value->role_id=='3'){
                                                        $penanda = $value->wilayah;
                                                    }elseif($value->role_id=='4'){
                                                        $data_kab = $this->Main_model->getSelectedData('kabupaten a', 'a.*', array('a.id_kabupaten'=>$value->wilayah))->row();
                                                        $penanda = $data_kab->id_provinsi;
                                                    }else{
                                                        echo'';
                                                    }
                                                    $data_provinsi = $this->Main_model->getSelectedData('provinsi a', 'a.*')->result();
                                                    foreach ($data_provinsi as $key => $p) {
                                                        if($p->id_provinsi==$penanda){
                                                            echo'<option value="'.$p->id_provinsi.'" selected>'.$p->nm_provinsi.'</option>';
                                                        }else{
                                                            echo'<option value="'.$p->id_provinsi.'">'.$p->nm_provinsi.'</option>';
                                                        }
                                                    }
                                                    ?>
												</select>
											</div>
										</div>
                                    </div>
                                    <?php
                                    if($value->role_id=='4'){
                                    ?>
                                    <div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Kabupaten <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
												<select name='wilayah' id='id_kab' class="form-control select2-allow-clear" required>
                                                    <option value=''>-- Pilih --</option>
                                                    <?php
                                                    $data_kab = $this->Main_model->getSelectedData('kabupaten a', 'a.*',array('a.id_provinsi'=>$penanda))->result();
                                                    foreach ($data_kab as $key => $k) {
                                                        if($k->id_kabupaten==$value->wilayah){
                                                            echo'<option value="'.$k->id_kabupaten.'" selected>'.$k->nm_kabupaten.'</option>';
                                                        }else{
                                                            echo'<option value="'.$k->id_kabupaten.'">'.$k->nm_kabupaten.'</option>';
                                                        }
                                                    }
                                                    ?>
												</select>
											</div>
										</div>
                                    </div>
                                    <?php }else{echo'';} ?>
									</div>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Username <font color='red'>*</font></label>
										<div class="col-md-10">
											<div class="input-icon">
                                                <input type="text" class="form-control" name="username" value='<?= $value->username; ?>' required>
                                                <input type="hidden" name="username_old" value='<?= $value->username; ?>'>
											</div>
										</div>
									</div>
									<div class="form-group form-md-line-input has-danger">
										<label class="col-md-2 control-label" for="form_control_1">Kata Sandi</label>
										<div class="col-md-10">
											<div class="input-icon">
												<input type="password" class="form-control" name="pass">
											</div>
										</div>
									</div>
                                </div>
                                <?php } ?>
								<br>
								<div class="form-group form-md-line-input has-danger">
									<label class="col-md-2 control-label" for="form_control_1">
											<button type="submit" class="btn blue">Perbarui</button>
											<button type="reset" class="btn default">Batal</button>
									</label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>