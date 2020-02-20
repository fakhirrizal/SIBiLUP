<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<!-- <script src="https://cdn.datatables.net/buttons/1.6.0/css/buttons.dataTables.min.css"></script>
<script src="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"></script> -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/dt/jq-2.1.4,jszip-2.5.0,pdfmake-0.1.18,dt-1.10.9,af-2.0.0,b-1.0.3,b-colvis-1.0.3,b-html5-1.0.3,b-print-1.0.3,se-1.0.1/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/r/dt/jq-2.1.4,jszip-2.5.0,pdfmake-0.1.18,dt-1.10.9,af-2.0.0,b-1.0.3,b-colvis-1.0.3,b-html5-1.0.3,b-print-1.0.3,se-1.0.1/datatables.min.js"></script>
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
		Data yang disajikan adalah data pada tahun berjalan (<?= date('Y'); ?>)
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
                            height: 1550px;
                            }
                            #chartdiv2 {
                            width: 100%;
                            height: 1550px;
                            }
                            #chartdiv3 {
                            width: 100%;
                            height: 1550px;
                            }
                            #chartdiv4 {
                            width: 100%;
                            height: 1550px;
                            }
                            </style>

                            <!-- Resources -->
                            <script src="https://www.amcharts.com/lib/4/core.js"></script>
                            <script src="https://www.amcharts.com/lib/4/charts.js"></script>
                            <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

                            <!-- Chart code -->
                            <script>
                                am4core.ready(function() {
                                

                                // Themes begin
                                am4core.useTheme(am4themes_animated);
                                // Themes end

                                var chart = am4core.create("chartdiv1", am4charts.PieChart3D);
                                chart.hiddenState.properties.opacity = 0; // this creates initial fade-in
                                var title = chart.titles.create();
                                title.text = "Jumlah Pokja PKP Kab/Kota yang sudah terbentuk dan di-SK-kan atau sedang proses SK";
                                title.fontSize = 25;
                                title.marginBottom = 30;

                                chart.data = [
                                <?php
                                foreach ($data_hitung1 as $key => $value) {
                                    echo'{
                                    country: "'.$value->nm_provinsi.'",
                                    litres: '.$value->jml.'},
                                    ';
                                }
                                ?>
                                ];

                                chart.innerRadius = am4core.percent(40);
                                chart.depth = 120;

                                chart.legend = new am4charts.Legend();

                                var series = chart.series.push(new am4charts.PieSeries3D());
                                series.dataFields.value = "litres";
                                series.dataFields.depthValue = "litres";
                                series.dataFields.category = "country";
                                series.slices.template.cornerRadius = 1;
                                series.colors.step = 3;

                                chart.exporting.menu = new am4core.ExportMenu();
                                chart.exporting.menu.align = "left";
                                chart.exporting.menu.verticalAlign = "top";

                                }); // end am4core.ready()
                            </script>

                            <script>
                                am4core.ready(function() {
                                

                                // Themes begin
                                am4core.useTheme(am4themes_animated);
                                // Themes end

                                var chart = am4core.create("chartdiv2", am4charts.PieChart3D);
                                chart.hiddenState.properties.opacity = 0; // this creates initial fade-in
                                var title = chart.titles.create();
                                title.text = "Jumlah Pokja PKP Kab/Kota yang sudah menggabungkan berbagai Pokja di daerah";
                                title.fontSize = 25;
                                title.marginBottom = 30;

                                chart.data = [
                                <?php
                                foreach ($data_hitung2 as $key => $value) {
                                    echo'{
                                    country: "'.$value->nm_provinsi.'",
                                    litres: '.$value->jml.'},
                                    ';
                                }
                                ?>
                                ];

                                chart.innerRadius = am4core.percent(40);
                                chart.depth = 120;

                                chart.legend = new am4charts.Legend();

                                var series = chart.series.push(new am4charts.PieSeries3D());
                                series.dataFields.value = "litres";
                                series.dataFields.depthValue = "litres";
                                series.dataFields.category = "country";
                                series.slices.template.cornerRadius = 1;
                                series.colors.step = 3;

                                chart.exporting.menu = new am4core.ExportMenu();
                                chart.exporting.menu.align = "left";
                                chart.exporting.menu.verticalAlign = "top";

                                }); // end am4core.ready()
                            </script>

                            <script>
                                am4core.ready(function() {
                                

                                // Themes begin
                                am4core.useTheme(am4themes_animated);
                                // Themes end

                                var chart = am4core.create("chartdiv3", am4charts.PieChart3D);
                                chart.hiddenState.properties.opacity = 0; // this creates initial fade-in
                                var title = chart.titles.create();
                                title.text = "Jumlah Pokja PKP Kab/Kota yang sudah membentuk Forum PKP";
                                title.fontSize = 25;
                                title.marginBottom = 30;

                                chart.data = [
                                <?php
                                foreach ($data_hitung3 as $key => $value) {
                                    echo'{
                                    country: "'.$value->nm_provinsi.'",
                                    litres: '.$value->jml.'},
                                    ';
                                }
                                ?>
                                ];

                                chart.innerRadius = am4core.percent(40);
                                chart.depth = 120;

                                chart.legend = new am4charts.Legend();

                                var series = chart.series.push(new am4charts.PieSeries3D());
                                series.dataFields.value = "litres";
                                series.dataFields.depthValue = "litres";
                                series.dataFields.category = "country";
                                series.slices.template.cornerRadius = 1;
                                series.colors.step = 3;

                                chart.exporting.menu = new am4core.ExportMenu();
                                chart.exporting.menu.align = "left";
                                chart.exporting.menu.verticalAlign = "top";

                                }); // end am4core.ready()
                            </script>

                            <script>
                                am4core.ready(function() {
                                

                                // Themes begin
                                am4core.useTheme(am4themes_animated);
                                // Themes end

                                var chart = am4core.create("chartdiv4", am4charts.PieChart3D);
                                chart.hiddenState.properties.opacity = 0; // this creates initial fade-in
                                var title = chart.titles.create();
                                title.text = "Jumlah Pokja PKP Kab/Kota yang mengalokasikan dana APBD";
                                title.fontSize = 25;
                                title.marginBottom = 30;

                                chart.data = [
                                <?php
                                foreach ($data_hitung4 as $key => $value) {
                                    echo'{
                                    country: "'.$value->nm_provinsi.'",
                                    litres: '.$value->jml.'},
                                    ';
                                }
                                ?>
                                ];

                                chart.innerRadius = am4core.percent(40);
                                chart.depth = 120;

                                chart.legend = new am4charts.Legend();

                                var series = chart.series.push(new am4charts.PieSeries3D());
                                series.dataFields.value = "litres";
                                series.dataFields.depthValue = "litres";
                                series.dataFields.category = "country";
                                series.slices.template.cornerRadius = 1;
                                series.colors.step = 3;

                                chart.exporting.menu = new am4core.ExportMenu();
                                chart.exporting.menu.align = "left";
                                chart.exporting.menu.verticalAlign = "top";

                                }); // end am4core.ready()
                            </script>

                            <!-- HTML -->
                            <div class="tabbable-line">
                                <ul class="nav nav-tabs ">
                                    <li>
                                        <a href="#tab_15_1" data-toggle="tab"> Grafik 1 &nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li>
                                        <a href="#tab_15_2" data-toggle="tab"> Grafik 2 &nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li>
                                        <a href="#tab_15_3" data-toggle="tab"> Grafik 3 &nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li>
                                        <a href="#tab_15_4" data-toggle="tab"> Grafik 4 </a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane" id="tab_15_1">
                                        <br>
                                        <div id="chartdiv1"></div><br>
                                    </div>
                                    <div class="tab-pane" id="tab_15_2">
                                        <br>
                                        <div id="chartdiv2"></div><br>
                                    </div>
                                    <div class="tab-pane" id="tab_15_3">
                                        <br>
                                        <div id="chartdiv3"></div><br>
                                    </div>
                                    <div class="tab-pane" id="tab_15_4">
                                        <br>
                                        <div id="chartdiv4"></div><br>
                                    </div>
                                </div>
                            </div>
                            <br>
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
										<?php if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
                                        <th style="vertical-align : middle;text-align:center;" width="7%" > Aksi </th>
										<?php }else{echo'';} ?>
                                    </tr>
                                </thead>
                            </table>
							<script type="text/javascript" language="javascript" >
                                $(document).ready(function(){
                                    $('#tbl').dataTable({
                                        "order": [[ 0, "asc" ]],
                                        "bProcessing": true,
                                        "ajax" : {
                                            url:"<?= site_url('admin/Map/json_rekap_pokja_pkp_kabupaten'); ?>"
                                        },
                                        "dom": 'lBfrtip',
                                        "buttons": [
                                            {
                                                extend: 'collection',
                                                text: 'Export',
                                                buttons: [
                                                    'copy',
                                                    'excel',
                                                    'csv',
                                                    'pdf',
                                                    'print'
                                                ]
                                            }
                                        ],
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
                                                    { mData: 'apbd', sClass: "alignCenter" },
										            <?php if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
													{ mData: 'action', sClass: "alignCenter" }
										            <?php }else{echo'';} ?>
                                                ]
                                    });
                                });
                            </script>
                            <br>
							<table>
								<tr><h3>Status Penyusunan</h3>
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
</div>