<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
								<!-- <button id="sample_editable_1_new" onclick="window.location.href='<?=base_url('admin_side/tambah_data_kabkota');?>'" class="btn sbold grey"><i class="fa fa-plus"></i> Tambah Data Baru
                                </button> -->
                                <!-- <a class="btn btn-success btn-sm tombol-kanan" href="<?=base_url('admin_side/tambah_data_kabkot');?>">Tambah Data Baru</a> -->
							</div>
							<br>
							<table class="table table-striped table-bordered table-hover table-checkable order-column" style="overflow-x: auto;width: 120%;" id="tbl">
                                <thead>
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='3'> # </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='3'> Nama Kabupaten/ Kota </th>
										<th style="vertical-align : middle;text-align:center;" colspan='4'> Status Penyusunan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Bentuk Kegiatan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Alokasi Anggaran Kegiatan </th>
                                        <th style="vertical-align : middle;text-align:center;" width="7%" rowspan='3'> Aksi </th>
                                    </tr>
                                    <tr>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Belum (Belum Menganggarkan / Menganggarkan TA 2019 / Menyusun Profil PKP) </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Sedang (Lelang / Menyusun Buku Data dan Analisis atau Buku Rencana) </th>
                                        <th style="vertical-align : middle;text-align:center;" colspan='2'> Sudah </th>
                                    </tr>
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;"> Review/ Konsultasi Publik/ Prolegda </th>
                                        <th style="vertical-align : middle;text-align:center;"> Sudah Legalisasi menjadi Perda </th>
                                    </tr>
                                </thead>
                            </table>
							<script type="text/javascript" language="javascript" >
                                $(document).ready(function(){
                                    $('#tbl').dataTable({
                                        "order": [[ 0, "asc" ]],
                                        "bProcessing": true,
                                        "ajax" : {
                                            url:"<?= site_url('admin/Map/json_rekap_kabupaten'); ?>"
                                        },
                                        "aoColumns": [
                                                    { mData: 'number', sClass: "alignCenter" },
                                                    { mData: 'nm_kabupaten', sClass: "alignCenter" },
                                                    { mData: 'belum', sClass: "alignCenter" },
                                                    { mData: 'sedang', sClass: "alignCenter" },
                                                    { mData: 'review', sClass: "alignCenter" },
                                                    { mData: 'sudah', sClass: "alignCenter" },
                                                    { mData: 'bentuk_kegiatan', sClass: "alignCenter" },
                                                    { mData: 'anggaran', sClass: "alignCenter" },
													{ mData: 'action', sClass: "alignCenter" }
                                                ]
                                    });
                                });
                            </script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>