<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<style type="text/css">
	.flexigrid div.sDiv{
		background: #FBFBFB;
	}
	.flexigrid div.tDiv{
		background: #FBFBFB;
	}
	.flexigrid div.bDiv{
		background: #FBFBFB;
	}
	.flexigrid table tr.hDiv{
		background: #FBFBFB;
	}
	.flexigrid div.pDiv{
		background:#FBFBFB; 
	}
	.flexigrid table tr.hDiv{
		background: #f4a42c;
		color: #ffff;
	}
	.flexigrid div.pDiv{
		padding: 10px;
	}
	button, html input[type=button]{
		background: #E9594D;
		color: #ffffff;
		height: 30px;
		border-radius: 5px;
	}
	.flexigrid div.fbutton{
		background: #F4F4F4;
	}
	.flexigrid div.tDiv{
		padding: 5px;
	}

	div.ex1 {
	  overflow: scroll;
	}
</style>
<style media="all" type="text/css">
    .alignCenter { text-align: center; }
</style>
<ul class="page-breadcrumb breadcrumb">
	<li>
		<h3>Catatan</h3>
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
							<div class="table-toolbar">
								<!-- <button id="sample_editable_1_new" onclick="window.location.href='<?=base_url('admin_side/tambah_data_provinsi');?>'" class="btn sbold grey"><i class="fa fa-plus"></i> Tambah Data Baru
                                </button> -->
                                <!-- <a class="btn btn-success btn-sm tombol-kanan" href="<?=base_url('admin_side/tambah_data_kabkot');?>">Tambah Data Baru</a> -->
							</div>
							<br>
							<!-- <div class="ex1"> -->
							<div style="overflow-x: auto;">
							<table class="table table-striped table-bordered" id="tbl">
                                <thead>
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='2'> # </th>
										<th style="vertical-align : middle;text-align:center;" width="15%" rowspan='2'> Provinsi </th>
										<th style="vertical-align : middle;text-align:center;" colspan='5'> Pokja PKP Provinsi </th>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='2'> Aksi </th>
                                    </tr>
                                    <tr>
										<th style="vertical-align : middle;text-align:center;" width="13%"> Penggabungan Berbagai Pokja </th>
										<th style="vertical-align : middle;text-align:center;" width="13%"> Punya Program Kerja 5 Tahun </th>
										<th style="vertical-align : middle;text-align:center;" width="13%"> Ketua Pokja </th>
                                        <th style="vertical-align : middle;text-align:center;" width="13%"> Perayaan Hapernas/ Hari Habitat/ dsb </th>
                                        <th style="vertical-align : middle;text-align:center;" width="12%"> Dukungan APBD </th>
                                    </tr>
                                </thead>
                            </table>
							<script type="text/javascript" language="javascript" >
                                $(document).ready(function(){
                                    $('#tbl').dataTable({
                                        "order": [[ 0, "asc" ]],
                                        "bProcessing": true,
                                        "ajax" : {
                                            url:"<?= site_url('admin/Map/json_rekap_pokja_pkp_provinsi'); ?>"
                                        },
                                        "aoColumns": [
                                                    { mData: 'number', sClass: "alignCenter" },
                                                    { mData: 'nm_provinsi', sClass: "alignCenter" },
                                                    { mData: 'penggabungan', sClass: "alignCenter" },
                                                    { mData: 'program', sClass: "alignCenter" },
                                                    { mData: 'ketua', sClass: "alignCenter" },
                                                    { mData: 'perayaan', sClass: "alignCenter" },
                                                    { mData: 'apbd', sClass: "alignCenter" },
													{ mData: 'action', sClass: "alignCenter" }
                                                ]
                                    });
                                });
                            </script><hr>
                            <table>
								<tr><h3> Penggabungan Berbagai Pokja </h3>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/remove.png" width="3%"/>&nbsp;&nbsp;<b>Belum</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/question.png" width="3%"/>&nbsp;&nbsp;<b>Proses</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/checkmark.png" width="3%"/>&nbsp;&nbsp;<b>Sudah</b></td>
								</tr>
							</table>
	                        </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>