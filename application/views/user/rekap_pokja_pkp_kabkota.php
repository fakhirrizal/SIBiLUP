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
<br>
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
							<br>
							<!-- <div class="ex1"> -->
                            <!-- Styles -->
                            <style>
								#chartdiv1 {
									width: 100%;
									height: 750px;
								}
							</style>

							<script src="https://www.amcharts.com/lib/4/core.js"></script>
							<script src="https://www.amcharts.com/lib/4/charts.js"></script>
							<script src="https://www.amcharts.com/lib/4/themes/kelly.js"></script>
							<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

							<script>
								am4core.ready(function() {

									am4core.useTheme(am4themes_kelly);
									am4core.useTheme(am4themes_animated);

									var chart = am4core.create("chartdiv1", am4charts.XYChart3D);
									var title = chart.titles.create();
									title.text = "Rekap Pokja PKP Kab/Kota yang sudah terbentuk dan di-SK-kan atau sedang proses SK";
									title.fontSize = 25;
									title.marginBottom = 30;

									chart.data = [
									<?php
									foreach ($data_provinsi as $key => $value) {
										echo'{"nm_provinsi": "'.$value->nm_provinsi.'",';
										$get_sudah = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_kabkota a LEFT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE (a.status='Selesai' OR a.sk='V') AND b.id_provinsi='".$value->id_provinsi."' AND a.tahun='".$tahun."'")->result();
										echo'"sudah": '.count($get_sudah).',';
										$get_sedang = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_kabkota a LEFT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE a.status='Proses' AND b.id_provinsi='".$value->id_provinsi."' AND a.tahun='".$tahun."'")->result();
										echo'"sedang": '.count($get_sedang).',';
										$get_belum = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_kabkota a LEFT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE a.status='Belum' AND b.id_provinsi='".$value->id_provinsi."' AND a.tahun='".$tahun."'")->result();
										echo'"belum": '.count($get_belum).'},';
									}
									?>];

									var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
									categoryAxis.dataFields.category = "nm_provinsi";
									categoryAxis.renderer.grid.template.location = 0;
									categoryAxis.renderer.minGridDistance = 30;
									categoryAxis.renderer.labels.template.rotation = 270;

									var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
									valueAxis.title.text = "Jumlah Kabupaten/ Kota";
									valueAxis.renderer.labels.template.adapter.add("text", function(text) {
										// return text + "%";
										return text;
									});

									var series = chart.series.push(new am4charts.ColumnSeries3D());
									series.dataFields.valueY = "sudah";
									series.dataFields.categoryX = "nm_provinsi";
									series.name = "Selesai";
									series.clustered = false;
									series.columns.template.tooltipText = "di {categoryX} yang sudah selesai membentuk Pokja PKP: [bold]{valueY}[/] Kabupaten/ Kota";
									series.columns.template.fillOpacity = 0.9;

									var series2 = chart.series.push(new am4charts.ColumnSeries3D());
									series2.dataFields.valueY = "sedang";
									series2.dataFields.categoryX = "nm_provinsi";
									series2.name = "Proses";
									series2.clustered = false;
									series2.columns.template.tooltipText = "di {categoryX} yang sedang proses pembentukan Pokja PKP: [bold]{valueY}[/] Kabupaten/ Kota";

									var series3 = chart.series.push(new am4charts.ColumnSeries3D());
									series3.dataFields.valueY = "belum";
									series3.dataFields.categoryX = "nm_provinsi";
									series3.name = "Belum";
									series3.clustered = false;
									series3.columns.template.tooltipText = "di {categoryX} yang belum membentuk Pokja PKP: [bold]{valueY}[/] Kabupaten/ Kota";
								
									chart.exporting.menu = new am4core.ExportMenu();
									chart.exporting.menu.align = "left";
									chart.exporting.menu.verticalAlign = "top";

									chart.legend = new am4charts.Legend();
									
								});
							</script>
                            
                            <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
							<script type="text/javascript" src="http://code.highcharts.com/highcharts.js"></script>
							<script type="text/javascript" src="http://code.highcharts.com/modules/exporting.js"></script>
							<?php
							if($get_where=='' OR $get_where=='semua'){
								echo'';
							}else{
								echo'
								<div class="row">
									<div class="col-md-12">
										<div class="chartdiv2"></div>
									</div>
								</div>
								';
							}
							?>
							<script type="text/javascript">
							$('.chartdiv2').highcharts({
							chart: {
							type: 'pie',
							marginTop: 80
							},
							credits: {
							enabled: false
							}, 
							tooltip: {
							pointFormat: '{series.name}: {point.y} (<b>{point.percentage:.1f}%)</b>'
							},
							title: {
							text: 'Rekap Status Pembentukan'
							},
							subtitle: {
							text: 'Provinsi <?php
								$get_prov = $this->db->query("SELECT a.* FROM provinsi a WHERE a.id_provinsi='".$get_where."'")->row();
								echo $get_prov->nm_provinsi;
								?>'
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
								dataLabels: {
								enabled: false
								},
								showInLegend: true
							}
							},
							series: [{
							'name':'Jumlah Kabupaten/ Kota',
							'data':[
								['Belum',<?php
								$get_belum = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_kabkota a RIGHT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE a.status='Belum' AND b.id_provinsi='".$get_where."' AND a.tahun='".$tahun."'")->result();
								echo count($get_belum);
								?>],
								['Proses',<?php
								$get_menganggarkan = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_kabkota a RIGHT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE a.status='Proses' AND b.id_provinsi='".$get_where."' AND a.tahun='".$tahun."'")->result();
								echo count($get_menganggarkan);
								?>],
								['Selesai',<?php
								$get_sedang = $this->db->query("SELECT a.* FROM rekap_pokja_pkp_kabkota a RIGHT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE (a.status='Selesai' OR a.sk='V') AND b.id_provinsi='".$get_where."' AND a.tahun='".$tahun."'")->result();
								echo count($get_sedang);
								?>]
							]
							}]
							});
							</script>

							<?php
							if($get_where=='' OR $get_where=='semua'){
								echo'<div id="chartdiv1"></div>';
							}else{
								echo'';
							}
							?>
							
							<br>
							<div class="sDiv quickSearchBox" id="quickSearchBox">
								<div class="sDiv2">
									<form action="<?=base_url('user/App/rekap_pokja_pkp_kabkota');?>" method="post">
									Filter Pencarian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<select name="search_field" id="search_field" style="background: white;color: black;padding: 5px;" required>
										<option value="">-- Pilih Provinsi --</option>
										<option value="semua">Semua Provinsi</option>
											<?php
											foreach ($data_provinsi as $key => $dp) {
												echo'<option value="'.$dp->id_provinsi.'">'.$dp->nm_provinsi.'</option>';
											}
											?>
                                    </select>
                                    <!-- <select name="search_category" id="search_field" style="background: white;color: black;padding: 5px;" required>
										<option value="">-- Pilih Grafik --</option>
										<option value="status">Status pembentukan Pokja PKP</option>
										<option value="penggabungan">Penggabungan berbagai Pokja PKP di daerah</option>
										<option value="forum">Pembentukan forum PKP</option>
										<option value="apbd">Pengalokasian dana APBD</option>
									</select> -->
									<!-- <input type="button" style="width: 50px;" value="Cari" class="crud_search" id="crud_search"> -->
									<button type='submit' class="crud_search">Proses</button>
									</form>
								</div>
							</div><hr><br>
							<div style="overflow-x: auto;">
							<table class="table table-striped table-bordered" id="tbl">
                                <thead>
                                    <!-- <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='2'> # </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Kabupaten/ Kota </th>
										<th style="vertical-align : middle;text-align:center;" colspan='4'> Status Pokja </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Penggabungan Berbagai Pokja </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Punya Program Kerja Pokja PKP </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Membentuk & Mengaktifkan Forum PKP </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Dukungan APBD </th>
                                        <th style="vertical-align : middle;text-align:center;" width="7%" rowspan='2'> Aksi </th>
                                    </tr>
                                    <tr>
										<th style="vertical-align : middle;text-align:center;"> Belum </th>
										<th style="vertical-align : middle;text-align:center;" > Proses </th>
										<th style="vertical-align : middle;text-align:center;" > Selesai </th>
                                        <th style="vertical-align : middle;text-align:center;" > SK </th>
                                    </tr> -->
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" > # </th>
										<th style="vertical-align : middle;text-align:center;" > Provinsi </th>
										<th style="vertical-align : middle;text-align:center;" > Kabupaten/ Kota </th>
										<th style="vertical-align : middle;text-align:center;" width="14%"> Status Pokja </th>
										<th style="vertical-align : middle;text-align:center;" width="14%"> SK </th>
										<th style="vertical-align : middle;text-align:center;" width="14%"> Penggabungan Berbagai Pokja </th>
										<th style="vertical-align : middle;text-align:center;" width="14%"> Punya Program Kerja Pokja PKP </th>
										<th style="vertical-align : middle;text-align:center;" width="14%"> Membentuk & Mengaktifkan Forum PKP </th>
										<th style="vertical-align : middle;text-align:center;" width="14%"> Dukungan APBD </th>
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
                                            url:"<?= site_url('admin/Map/json_rekap_pokja_pkp_kabupaten2'); ?>",
                                            data: {modul:"<?= $get_where; ?>"}
                                        },
                                        "aoColumns": [
                                                    { mData: 'number', sClass: "alignCenter" },
                                                    { mData: 'prov', sClass: "alignCenter" },
                                                    { mData: 'nm_kabupaten', sClass: "alignCenter" },
                                                    // { mData: 'belum', sClass: "alignCenter" },
                                                    // { mData: 'proses', sClass: "alignCenter" },
                                                    // { mData: 'selesai', sClass: "alignCenter" },
                                                    { mData: 'status', sClass: "alignCenter" },
                                                    { mData: 'sk', sClass: "alignCenter" },
                                                    { mData: 'penggabungan', sClass: "alignCenter" },
                                                    { mData: 'program', sClass: "alignCenter" },
                                                    { mData: 'forum', sClass: "alignCenter" },
                                                    { mData: 'apbd', sClass: "alignCenter" }
                                                ]
                                    });
                                });
                            </script>
	                        </div>
                            <br>
							<table>
								<tr><h3>Status Pokja</h3>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/remove.png" width="3%"/>&nbsp;&nbsp;<b>Belum (Belum Menganggarkan)</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/question.png" width="3%"/>&nbsp;&nbsp;<b>Menganggarkan TA <?= $tahun; ?> (Menyusun Profil PKP)</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/checkmark.png" width="3%"/>&nbsp;&nbsp;<b>Sedang (Lelang/ Menyusun Buku Data dan Analisis atau Buku Rencana)</b></td>
								</tr>
							</table>
							<table>
								<tr><h3>Status Legalisasi</h3>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/remove.png" width="4%"/>&nbsp;&nbsp;<b>Belum</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/question.png" width="4%"/>&nbsp;&nbsp;<b>Review/ Konsultasi Publik/ Prolegda</b></td>
								</tr>
								<tr>
									<td><img src="<?= site_url(); ?>assets/images/checkmark.png" width="4%"/>&nbsp;&nbsp;<b>Sudah Legalisasi menjadi Perda</b></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>