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
								<!-- <button id="sample_editable_1_new" onclick="window.location.href='<?=base_url('admin_side/tambah_data_kabkota');?>'" class="btn sbold grey"><i class="fa fa-plus"></i> Tambah Data Baru
                                </button> -->
                                <!-- <a class="btn btn-success btn-sm tombol-kanan" href="<?=base_url('admin_side/tambah_data_kabkot');?>">Tambah Data Baru</a> -->
							</div>
							<style>
								#chartdiv {
									width: 100%;
									height: 500px;
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

									var chart = am4core.create("chartdiv", am4charts.XYChart3D);

									// chart.data = [{
									// 	"nm_provinsi": "USA",
									// 	"sudah": 3.5,
									// 	"sedang": 4.2,
									// 	"belum": 6
									// }, {
									// 	"nm_provinsi": "UK",
									// 	"sudah": 1.7,
									// 	"sedang": 3.1,
									// 	"belum": 6
									// }, {
									// 	"nm_provinsi": "Canada",
									// 	"sudah": 2.8,
									// 	"sedang": 2.9,
									// 	"belum": 6
									// }, {
									// 	"nm_provinsi": "Japan",
									// 	"sudah": 2.6,
									// 	"sedang": 2.3,
									// 	"belum": 5
									// }];

									chart.data = [
									<?php
									foreach ($data_provinsi as $key => $value) {
										echo'{"nm_provinsi": "'.$value->nm_provinsi.'",';
										$get_sudah = $this->db->query("SELECT a.* FROM rekap_rp3kp_kabkota a LEFT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE (a.review='V' OR a.sudah='V') AND b.id_provinsi='".$value->id_provinsi."'")->result();
										echo'"sudah": '.count($get_sudah).',';
										$get_sedang = $this->db->query("SELECT a.* FROM rekap_rp3kp_kabkota a LEFT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE (a.menganggarkan='V' OR a.sedang='V') AND b.id_provinsi='".$value->id_provinsi."'")->result();
										echo'"sedang": '.count($get_sedang).',';
										$get_belum = $this->db->query("SELECT a.* FROM rekap_rp3kp_kabkota a LEFT JOIN kabupaten b ON a.id_kabupaten=b.id_kabupaten WHERE a.belum='V' AND b.id_provinsi='".$value->id_provinsi."'")->result();
										echo'"belum": '.count($get_belum).'},';
									}
									?>];

									var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
									categoryAxis.dataFields.category = "nm_provinsi";
									categoryAxis.renderer.grid.template.location = 0;
									categoryAxis.renderer.minGridDistance = 300;

									var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
									valueAxis.title.text = "Jumlah Kabupaten/ Kota";
									valueAxis.renderer.labels.template.adapter.add("text", function(text) {
										// return text + "%";
										return text;
									});

									var series = chart.series.push(new am4charts.ColumnSeries3D());
									series.dataFields.valueY = "sudah";
									series.dataFields.categoryX = "nm_provinsi";
									series.name = "Year 2017";
									series.clustered = false;
									series.columns.template.tooltipText = "di {categoryX} yang sudah menyusun RP3KP: [bold]{valueY}[/] Kabupaten/ Kota";
									series.columns.template.fillOpacity = 0.9;

									var series2 = chart.series.push(new am4charts.ColumnSeries3D());
									series2.dataFields.valueY = "sedang";
									series2.dataFields.categoryX = "nm_provinsi";
									series2.name = "Year 2018";
									series2.clustered = false;
									series2.columns.template.tooltipText = "di {categoryX} yang sedang menyusun RP3KP: [bold]{valueY}[/] Kabupaten/ Kota";

									var series3 = chart.series.push(new am4charts.ColumnSeries3D());
									series3.dataFields.valueY = "belum";
									series3.dataFields.categoryX = "nm_provinsi";
									series3.name = "Year 2019";
									series3.clustered = false;
									series3.columns.template.tooltipText = "di {categoryX} yang belum menyusun RP3KP: [bold]{valueY}[/] Kabupaten/ Kota";
								});
							</script>

							<div id="chartdiv"></div>
							<br>
							<div class="ex1">
							<table class="table table-striped table-bordered table-hover table-checkable order-column" style="overflow-x: auto;width: 120%;" id="tbl">
                                <thead>
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='3'> # </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='3'> Nama Kabupaten/ Kota </th>
										<th style="vertical-align : middle;text-align:center;" colspan='5'> Status Penyusunan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Bentuk Kegiatan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Alokasi Anggaran Kegiatan </th>
                                        <th style="vertical-align : middle;text-align:center;" width="7%" rowspan='3'> Aksi </th>
                                    </tr>
                                    <tr>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Belum (Belum Menganggarkan) </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Menganggarkan TA 2019 / Menyusun Profil PKP) </th>
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
                                                    { mData: 'menganggarkan', sClass: "alignCenter" },
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
</div>