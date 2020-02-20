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
    .alignCenter { vertical-align : middle;text-align: center; }
</style>
<ul class="page-breadcrumb breadcrumb">
	<li>
		<h3>Catatan</h3>
	</li>
	<li>
		Data yang disajikan adalah data pada tahun berjalan (<?= $tahun; ?>)
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
							<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
							<script src="https://code.highcharts.com/highcharts.js"></script>
							<script src="https://code.highcharts.com/highcharts-3d.js"></script>
							<script src="https://code.highcharts.com/modules/exporting.js"></script>
							<script src="https://code.highcharts.com/modules/export-data.js"></script>
							<?php
							if($get_where==''){
								echo'';
							}elseif($get_where=='1'){
								echo'
								<div class="row">
									<div class="col-md-12">
										<div class="chartdiv1"></div>
									</div>
								</div>
								';
							}
							elseif($get_where=='2'){
								echo'
								<div class="row">
									<div class="col-md-12">
										<div class="chartdiv2"></div>
									</div>
								</div>
								';
							}
							elseif($get_where=='3'){
								echo'
								<div class="row">
									<div class="col-md-12">
										<div class="chartdiv3"></div>
									</div>
								</div>
								';
							}
							elseif($get_where=='4'){
								echo'
								<div class="row">
									<div class="col-md-12">
										<div class="chartdiv4"></div>
									</div>
								</div>
								';
							}else{echo'';}
							?>

							<script type="text/javascript">
							$('.chartdiv1').highcharts({
								chart: {
									type: 'pie',
									options3d: {
									enabled: true,
									alpha: 45,
									beta: 0
									}
								},
								credits: {
								enabled: false
								}, 
								tooltip: {
								pointFormat: '{series.name}: {point.y} (<b>{point.percentage:.1f}%)</b>'
								},
								title: {
								text: 'Rekap Data Pokja PKP Tahun <?= $tahun; ?>'
								},
								subtitle: {
								text: 'Penggabungan Berbagai Pokja'
								},
								xAxis: {
								categories: ['JUMLAH'],
								labels: {
								style: {
									fontSize: '10px',
									fontFamily: 'Verdana, sans-serif'
								}
								}
								},
								legend: {
								enabled: true
								},
								plotOptions: {
									pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									depth: 35,
									showInLegend: true,
									dataLabels: {
										enabled: true,
										format: '{point.name}'
									}
									}
								},
								series: [{
								'name':'Jumlah Provinsi',
								'data':[
									['Belum',<?php
									$get_belum = $this->db->query("SELECT a.*,b.id_provinsi FROM provinsi b LEFT JOIN rekap_pokja_pkp_provinsi a ON b.id_provinsi=a.id_provinsi WHERE (a.penggabungan='Belum' OR a.penggabungan IS NULL) AND a.tahun='".$tahun."'")->result();
									echo count($get_belum);
									?>],
									['Proses',<?php
									$get_proses = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_provinsi a WHERE a.penggabungan='Proses' AND a.tahun='".$tahun."'")->result();
									echo count($get_proses);
									?>],
									['Sudah',<?php
									$get_sudah = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_provinsi a WHERE a.penggabungan='Sudah' AND a.tahun='".$tahun."'")->result();
									echo count($get_sudah);
									?>]
								]
								}]
							});
							</script>

							<script type="text/javascript">
							$('.chartdiv2').highcharts({
								chart: {
									type: 'pie',
									options3d: {
									enabled: true,
									alpha: 45,
									beta: 0
									}
								},
								credits: {
								enabled: false
								}, 
								tooltip: {
								pointFormat: '{series.name}: {point.y} (<b>{point.percentage:.1f}%)</b>'
								},
								title: {
								text: 'Rekap Data Pokja PKP Tahun <?= $tahun; ?>'
								},
								subtitle: {
								text: 'Punya Program Kerja 5 Tahun'
								},
								xAxis: {
								categories: ['JUMLAH'],
								labels: {
								style: {
									fontSize: '10px',
									fontFamily: 'Verdana, sans-serif'
								}
								}
								},
								legend: {
								enabled: true
								},
								plotOptions: {
									pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									depth: 35,
									showInLegend: true,
									dataLabels: {
										enabled: true,
										format: '{point.name}'
									}
									}
								},
								series: [{
								'name':'Jumlah Provinsi',
								'data':[
									['Tidak',<?php
									$get_belum = $this->db->query("SELECT a.*,b.id_provinsi FROM provinsi b LEFT JOIN rekap_pokja_pkp_provinsi a ON b.id_provinsi=a.id_provinsi WHERE (a.program='Tidak' OR a.program IS NULL) AND a.tahun='".$tahun."'")->result();
									echo count($get_belum);
									?>],
									['Ya',<?php
									$get_proses = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_provinsi a WHERE a.program='Ya' AND a.tahun='".$tahun."'")->result();
									echo count($get_proses);
									?>]
								]
								}]
							});
							</script>

							<script type="text/javascript">
							$('.chartdiv3').highcharts({
								chart: {
									type: 'pie',
									options3d: {
									enabled: true,
									alpha: 45,
									beta: 0
									}
								},
								credits: {
								enabled: false
								}, 
								tooltip: {
								pointFormat: '{series.name}: {point.y} (<b>{point.percentage:.1f}%)</b>'
								},
								title: {
								text: 'Rekap Data Pokja PKP Tahun <?= $tahun; ?>'
								},
								subtitle: {
								text: 'Perayaan Hapernas/ Hari Habitat/ dsb'
								},
								xAxis: {
								categories: ['JUMLAH'],
								labels: {
								style: {
									fontSize: '10px',
									fontFamily: 'Verdana, sans-serif'
								}
								}
								},
								legend: {
								enabled: true
								},
								plotOptions: {
									pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									depth: 35,
									showInLegend: true,
									dataLabels: {
										enabled: true,
										format: '{point.name}'
									}
									}
								},
								series: [{
								'name':'Jumlah Provinsi',
								'data':[
									['Tidak',<?php
									$get_belum = $this->db->query("SELECT a.*,b.id_provinsi FROM provinsi b LEFT JOIN rekap_pokja_pkp_provinsi a ON b.id_provinsi=a.id_provinsi WHERE (a.perayaan='Tidak' OR a.perayaan IS NULL) AND a.tahun='".$tahun."'")->result();
									echo count($get_belum);
									?>],
									['Ada',<?php
									$get_proses = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_provinsi a WHERE a.perayaan='Ada' AND a.tahun='".$tahun."'")->result();
									echo count($get_proses);
									?>]
								]
								}]
							});
							</script>

							<script type="text/javascript">
							$('.chartdiv4').highcharts({
								chart: {
									type: 'pie',
									options3d: {
									enabled: true,
									alpha: 45,
									beta: 0
									}
								},
								credits: {
								enabled: false
								}, 
								tooltip: {
								pointFormat: '{series.name}: {point.y} (<b>{point.percentage:.1f}%)</b>'
								},
								title: {
								text: 'Rekap Data Pokja PKP Tahun <?= $tahun; ?>'
								},
								subtitle: {
								text: 'Dukungan APBD'
								},
								xAxis: {
								categories: ['JUMLAH'],
								labels: {
								style: {
									fontSize: '10px',
									fontFamily: 'Verdana, sans-serif'
								}
								}
								},
								legend: {
								enabled: true
								},
								plotOptions: {
									pie: {
									allowPointSelect: true,
									cursor: 'pointer',
									depth: 35,
									showInLegend: true,
									dataLabels: {
										enabled: true,
										format: '{point.name}'
									}
									}
								},
								series: [{
								'name':'Jumlah Provinsi',
								'data':[
									['Tidak',<?php
									$get_belum = $this->db->query("SELECT a.*,b.id_provinsi FROM provinsi b LEFT JOIN rekap_pokja_pkp_provinsi a ON b.id_provinsi=a.id_provinsi WHERE (a.apbd='Tidak' OR a.apbd IS NULL) AND a.tahun='".$tahun."'")->result();
									echo count($get_belum);
									?>],
									['Ada',<?php
									$get_proses = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_provinsi a WHERE a.apbd='Ada' AND a.tahun='".$tahun."'")->result();
									echo count($get_proses);
									?>]
								]
								}]
							});
							</script>
							<br>
							<div class="sDiv quickSearchBox" id="quickSearchBox">
								<div class="sDiv2">
									<form action="<?=base_url('admin_side/rekap_pokja_pkp_provinsi');?>" method="post">
									Filter Tampilan Grafik&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<select name="jenis" id="search_field" style="background: white;color: black;padding: 5px;" required>
										<option value="">-- Pilih Jenis --</option>
										<option value="1">Penggabungan Berbagai Pokja</option>	
										<option value="2">Punya Program Kerja 5 Tahun</option>
										<option value="3">Perayaan Hapernas/ Hari Habitat/ dsb</option>
										<option value="4">Dukungan APBD</option>
									</select>
									<select name="tahun" id="tahun" style="background: white;color: black;padding: 5px;" required>
										<option value="">-- Pilih Tahun --</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
                                    </select>&nbsp;&nbsp;
									<!-- <input type="button" style="width: 50px;" value="Cari" class="crud_search" id="crud_search"> -->
									<button type='submit' class="crud_search">Proses</button>
									</form>
								</div>
							</div><hr><br>
							<!-- <div class="ex1"> -->
							<div style="overflow-x: auto;">
							<table class="table table-striped table-bordered" id="tbl">
                                <thead>
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='2'> # </th>
										<th style="vertical-align : middle;text-align:center;" width="15%" rowspan='2'> Provinsi </th>
										<th style="vertical-align : middle;text-align:center;" colspan='5'> Pokja PKP Provinsi </th>
										<?php // if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='2'> Aksi </th>
										<?php // }else{echo'';} ?>
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
											type:"POST",
                                            url:"<?= site_url('admin/Map/json_rekap_pokja_pkp_provinsi'); ?>",
											data: {tahun:"<?= $tahun; ?>"}
                                        },
                                        "aoColumns": [
                                                    { mData: 'number', sClass: "alignCenter" },
                                                    { mData: 'nm_provinsi', sClass: "alignCenter" },
                                                    { mData: 'penggabungan', sClass: "alignCenter" },
                                                    { mData: 'program', sClass: "alignCenter" },
                                                    { mData: 'ketua', sClass: "alignCenter" },
                                                    { mData: 'perayaan', sClass: "alignCenter" },
                                                    { mData: 'apbd', sClass: "alignCenter" },
													<?php // if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
													{ mData: 'action', sClass: "alignCenter" }
													<?php // }else{echo'';} ?>
                                                ]
                                    });
                                });
                            </script>
	                        </div><br>
							<table>
								<tr><h3> Penggabungan Berbagai Pokja </h3>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/remove.png" width="5%"/>&nbsp;&nbsp;<b>Belum</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/question.png" width="5%"/>&nbsp;&nbsp;<b>Proses</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/checkmark.png" width="5%"/>&nbsp;&nbsp;<b>Sudah</b></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>