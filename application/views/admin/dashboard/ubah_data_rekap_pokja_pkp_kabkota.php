<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<ul class="page-breadcrumb breadcrumb">
	<li>
		<h3>Catatan</h3>
	</li>
	<li>
		1. Kolom isian dengan tanda bintang (<font color='red'>*</font>) adalah wajib untuk di isi.
	</li>
	<li>
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
                            <form role="form" class="form-horizontal" action="<?=base_url('admin_side/perbarui_data_rekap_pokja_pkp_kabkota');?>" method="post"  enctype='multipart/form-data'>
                                <input type="hidden" name="id_kabupaten" value="<?= $data_utama->id; ?>">
                                <div class="form-body">
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Nama Kabupaten/ Kota</label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <input type="text" class="form-control" value="<?= $data_utama->nm_kabupaten; ?>" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Pembentukan Pokja PKP <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="status" type="radio" id="radio_01" value="Belum" <?php if($data_utama->status=='Belum'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_01">Belum</label><br>
                                            <input name="status" type="radio" id="radio_02" value="Proses" <?php if($data_utama->status=='Proses'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_02">Proses</label><br>
                                            <input name="status" type="radio" id="radio_03" value="Selesai" <?php if($data_utama->status=='Selesai'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_03">Selesai</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Sudah SK-kan </label>
                                        <div class="col-md-12">
                                            <div class="demo-checkbox">
                                                <input type="checkbox" id="basic_checkbox_2" class="filled-in" name='sk' value='V' <?php if($data_utama->sk=='V'){echo'checked';}else{echo'';} ?>>
                                                <label for="basic_checkbox_2"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Penggabungan Berbagai Pokja <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="penggabungan" type="radio" id="radio_1" value="Belum" <?php if($data_utama->penggabungan=='Belum'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_1">Belum</label><br>
                                            <input name="penggabungan" type="radio" id="radio_2" value="Proses" <?php if($data_utama->penggabungan=='Proses'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_2">Proses</label><br>
                                            <input name="penggabungan" type="radio" id="radio_3" value="Sudah" <?php if($data_utama->penggabungan=='Sudah'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_3">Sudah</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Punya Program Kerja Pokja PKP <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="program" type="radio" id="radio_4" value="Tidak" <?php if($data_utama->program=='Tidak'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_4">Tidak</label><br>
                                            <input name="program" type="radio" id="radio_5" value="Ya" <?php if($data_utama->program=='Ya'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_5">Ya</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Telah membentuk& mengaktifkan Forum PKP <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="forum" type="radio" id="radio_6" value="Tidak" <?php if($data_utama->forum=='Tidak'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_6">Tidak</label><br>
                                            <input name="forum" type="radio" id="radio_7" value="Ya" <?php if($data_utama->forum=='Ya'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_7">Ada</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Dukungan APBD untuk Pokja PKP <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="apbd" type="radio" id="radio_8" value="Tidak" <?php if($data_utama->apbd=='Tidak'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_8">Tidak</label><br>
                                            <input name="apbd" type="radio" id="radio_9" value="Ya" <?php if($data_utama->apbd=='Ya'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_9">Ada</label>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group form-md-line-input has-danger">
                                    <div class="col-md-offset-2 col-md-12">
                                        <button type="submit" class="btn blue">Perbarui</button>
                                        <button type="reset" class="btn default">Batal</button>
                                    </div>
                                </div>
                            </form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>