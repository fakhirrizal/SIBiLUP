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
                            <form role="form" class="form-horizontal" action="<?=base_url('admin_side/perbarui_data_rekap_pokja_pkp_provinsi');?>" method="post"  enctype='multipart/form-data'>
                                <input type="hidden" name="id_provinsi" value="<?= $data_utama->id; ?>">
                                <div class="form-body">
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">Nama Provinsi</label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <input type="text" class="form-control" value="<?= $data_utama->nm_provinsi; ?>" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Penggabungan Berbagai Pokja (AMPL, Sanitasi, PKP, dsb) <font color='red'>*</font></label>
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
                                        <label class="col-md-12 control-label" for="form_control_1">Punya Program Kerja 5 Tahun <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="program" type="radio" id="radio_4" value="Tidak" <?php if($data_utama->program=='Tidak'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_4">Tidak</label><br>
                                            <input name="program" type="radio" id="radio_5" value="Ya" <?php if($data_utama->program=='Ya'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_5">Ya</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">Ketua Pokja <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <input type="text" class="form-control" name='ketua' value="<?php echo $data_utama->ketua; ?>" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Perayaan Hapernas/ Hari Habitat/ dsb <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="perayaan" type="radio" id="radio_6" value="Tidak" <?php if($data_utama->perayaan=='Tidak'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_6">Tidak</label><br>
                                            <input name="perayaan" type="radio" id="radio_7" value="Ada" <?php if($data_utama->perayaan=='Ada'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_7">Ada</label>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Dukungan APBD untuk Pokja PKP <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <input name="apbd" type="radio" id="radio_8" value="Tidak" <?php if($data_utama->apbd=='Tidak'){echo'checked';}else{echo'';} ?>>
                                            <label for="radio_8">Tidak</label><br>
                                            <input name="apbd" type="radio" id="radio_9" value="Ada" <?php if($data_utama->apbd=='Ada'){echo'checked';}else{echo'';} ?>>
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
<script>
	var rupiah = document.getElementById("rupiah");
	rupiah.addEventListener("keyup", function(e) {
		// tambahkan 'Rp.' pada saat form di ketik
		// gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
		rupiah.value = formatRupiah(this.value, "Rp. ");
	});

	/* Fungsi formatRupiah */
	function formatRupiah(angka, prefix) {
		var number_string = angka.replace(/[^,\d]/g, "").toString(),
			split = number_string.split(","),
			sisa = split[0].length % 3,
			rupiah = split[0].substr(0, sisa),
			ribuan = split[0].substr(sisa).match(/\d{3}/gi);

		// tambahkan titik jika yang di input sudah menjadi angka ribuan
		if (ribuan) {
			separator = sisa ? "." : "";
			rupiah += separator + ribuan.join(".");
		}

		rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
		return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
	}
</script>