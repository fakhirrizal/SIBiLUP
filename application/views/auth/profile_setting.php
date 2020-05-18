<?= $this->session->flashdata('sukses') ?>
<?= $this->session->flashdata('gagal') ?>
<?php
if($this->session->userdata('admin_id')=='9'){
    $data_utama = $this->Main_model->getSelectedData('tamu a', 'a.*', array('a.user_id'=>$this->session->userdata('id')))->row();
}else{
    $data_utama = $this->Main_model->getSelectedData('pegawai a', 'a.nama_pegawai AS nama,a.phone AS no_hp,a.alamat,a.email', array("a.user_id" => $this->session->userdata('id')))->row();
}
?>
<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">
    <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
        <div class="kt-grid kt-grid--desktop kt-grid--ver kt-grid--ver-desktop kt-app">
            <div class="kt-grid__item kt-grid__item--fluid kt-app__content">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="kt-portlet">
                            <div class="kt-portlet__head">
                                <div class="m-heading-1 border-yellow m-bordered" >
                                    <h3>Catatan</h3>
                                    <p> 1. Kolom isian dengan tanda bintang (<font color='red'>*</font>) adalah wajib untuk di isi.</p>
                                    <p> 2. Ketentuan file yang diupload:</p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Format berupa file <b>.png</b>, <b>.jpg</b>, dan <b>.jpeg</b></p>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Ukuran maksimum file <b>3 MB</b></p>
                                </div>
                                <div class="kt-portlet__head-toolbar">
                                    <div class="kt-portlet__head-wrapper">
                                    </div>
                                </div>
                            </div>
                            <form class="kt-form kt-form--label-right" action="<?=base_url('perbarui_profil');?>" method="post" enctype='multipart/form-data'>
                                <div class="kt-portlet__body">
                                    <div class="kt-section kt-section--first">
                                        <div class="kt-section__body">
                                            <hr>
                                            <div class="form-group row">
                                                <label class="col-xl-3 col-lg-3 col-form-label">Avatar</label>
                                                <div class="col-lg-9 col-xl-6">
                                                    <div class="kt-avatar kt-avatar--outline" id="kt_user_avatar">
                                                        <div class="kt-avatar__holder" ></div>
                                                        <label class="kt-avatar__upload" data-toggle="kt-tooltip" title="" data-original-title="Change avatar">
                                                            <i class="fa fa-pen"></i>
                                                            <input type="file" name="file" accept=".png, .jpg, .jpeg">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-xl-3 col-lg-3 col-form-label">Nama <font color='red'>*</font></label>
                                                <div class="col-lg-9 col-xl-6">
                                                    <input class="form-control" type="text" name='nama' value="<?= $data_utama->nama; ?>" required>
                                                </div>
                                            </div>
                                            <?php
                                                if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') {
                                                    echo'';
                                                }else{
                                                    if($this->session->userdata('admin_id')=='9'){
                                            ?>
                                            <div class="form-group row">
                                                <label class="col-xl-3 col-lg-3 col-form-label">NIK</label>
                                                <div class="col-lg-9 col-xl-6">
                                                    <input class="form-control" type="text" name='nik' value="<?= $data_utama->nik; ?>" minlength='16' maxlength='16'>
                                                </div>
                                            </div>
                                            <?php   }else{echo'';} ?>
                                            <div class="form-group row">
                                                <label class="col-xl-3 col-lg-3 col-form-label">Alamat</label>
                                                <div class="col-lg-9 col-xl-6">
                                                    <textarea class="form-control" name='alamat'><?= $data_utama->alamat; ?></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-xl-3 col-lg-3 col-form-label">Email <font color='red'>*</font></label>
                                                <div class="col-lg-9 col-xl-6">
                                                    <input class="form-control" type="text" name='email' value="<?= $data_utama->email; ?>" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-xl-3 col-lg-3 col-form-label">Nomor HP <font color='red'>*</font></label>
                                                <div class="col-lg-9 col-xl-6">
                                                    <input class="form-control" type="number" name='no_hp' value="<?= $data_utama->no_hp; ?>" required>
                                                </div>
                                            </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="kt-portlet__foot">
                                    <div class="kt-form__actions">
                                        <div class="row">
                                            <div class="col-lg-3 col-xl-3">
                                            </div>
                                            <div class="col-lg-9 col-xl-9">
                                                <button type="submit" class="btn btn-success">Perbarui</button>&nbsp;
                                                <button type="reset" class="btn btn-secondary">Batal</button>
                                            </div>
                                        </div>
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