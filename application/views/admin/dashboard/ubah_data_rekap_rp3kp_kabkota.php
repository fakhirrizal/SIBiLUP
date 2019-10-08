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
                            <form role="form" class="form-horizontal" action="<?=base_url('admin_side/perbarui_data_rekap_rp3kp_kabkota');?>" method="post"  enctype='multipart/form-data'>
                                <input type="hidden" name="id_kabupaten" value="<?= $data_utama->id; ?>">
                                <div class="form-body">
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-12 control-label" for="form_control_1">Nama Kabupaten/ Kota</label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <input type="text" class="form-control" value="<?= $data_utama->nm_kabupaten.' - '.$data_utama->nm_provinsi; ?>" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                    <label class="col-md-12 control-label" for="form_control_1">Status Penyusunan <font color='red'>*</font></label>
                                    <div class="col-md-12">
                                        <input name="group1" type="radio" id="radio_1" value="belum" <?php if($data_utama->belum=='V'){echo'checked';}else{echo'';} ?>>
                                        <label for="radio_1">Belum (Belum Menganggarkan / Menganggarkan TA 2019 / Menyusun Profil PKP)</label><br>
                                        <input name="group1" type="radio" id="radio_3" value="sedang" <?php if($data_utama->sedang=='V'){echo'checked';}else{echo'';} ?>>
                                        <label for="radio_3">Sedang (Lelang / Menyusun Buku Data dan Analisis atau Buku Rencana)</label><br>
                                        <input name="group1" type="radio" id="radio_4" value="review" <?php if($data_utama->review=='V'){echo'checked';}else{echo'';} ?>>
                                        <label for="radio_4">Review / Konsultasi Publik / Prolegda</label><br>
                                        <input name="group1" type="radio" id="radio_5" value="sudah" <?php if($data_utama->sudah=='V'){echo'checked';}else{echo'';} ?>>
                                        <label for="radio_5">Sudah Legalisasi menjadi Perda</label>
                                    </div>
                                    </div>
                                    <!-- <div class="demo-radio-button">
                                        
                                    </div> -->
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">Bentuk Kegiatan <font color='red'>*</font></label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <textarea class="form-control" name='bentuk_kegiatan'><?= $data_utama->bentuk_kegiatan; ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">Alokasi Anggaran</label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <input type="text" class="form-control" name='rencana_anggaran' value="Rp. <?php echo number_format($data_utama->anggaran,0,",","."); ?>" id='rupiah'>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group form-md-line-input has-danger">
                                    <!-- <div class="row"> -->
                                        <div class="col-md-offset-2 col-md-12">
                                            <button type="submit" class="btn blue">Perbarui</button>
                                            <button type="reset" class="btn default">Batal</button>
                                        </div>
                                    <!-- </div> -->
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