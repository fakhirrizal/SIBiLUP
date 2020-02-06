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
							<br>
							<style>
							#chartdiv {
							width: 100%;
							height: 500px;
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

							var chart = am4core.create("chartdiv", am4charts.PieChart3D);
							chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

							chart.data = [
							{
								prov: "Belum",
								jml: <?php
								$getdata = $this->Main_model->getSelectedData('rekap_rp3kp_provinsi a', 'a.*', array('a.belum'=>'V','a.tahun'=>$tahun))->result();
								// if(count($getdata)==NULL){
								// 	echo'0';
								// }else{
									echo count($getdata);
								// }
								?>
							},
							{
								prov: "Menganggarkan TA <?= $tahun; ?>",
								jml: <?php
								$getdata = $this->Main_model->getSelectedData('rekap_rp3kp_provinsi a', 'a.*', array('a.menganggarkan'=>'V','a.tahun'=>$tahun))->result();
								echo count($getdata);
								?>
							},
							{
								prov: "Sedang",
								jml: <?php
								$getdata = $this->Main_model->getSelectedData('rekap_rp3kp_provinsi a', 'a.*', array('a.sedang'=>'V','a.tahun'=>$tahun))->result();
								echo count($getdata);
								?>
							},
							{
								prov: "Sudah",
								jml: <?php
								$getdata = $this->Main_model->getSelectedData('rekap_rp3kp_provinsi a', 'a.*', array('a.sudah'=>'V','a.tahun'=>$tahun))->result();
								echo count($getdata);
								?>
							}
							];

							chart.innerRadius = am4core.percent(40);
							chart.depth = 120;

							chart.legend = new am4charts.Legend();

							var series = chart.series.push(new am4charts.PieSeries3D());
							series.dataFields.value = "jml";
							series.dataFields.depthValue = "jml";
							series.dataFields.category = "prov";
							series.slices.template.cornerRadius = 5;
							series.colors.step = 3;

							chart.exporting.menu = new am4core.ExportMenu();
							chart.exporting.menu.align = "left";
							chart.exporting.menu.verticalAlign = "top";

							}); // end am4core.ready()
							</script>

							<!-- HTML -->
							<div id="chartdiv"></div><br>
							<br>
							<div class="sDiv quickSearchBox" id="quickSearchBox">
								<div class="sDiv2">
									<form action="<?=base_url('admin_side/rekap_rp3kp_provinsi');?>" method="post">
									Filter Pencarian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<select name="tahun" id="tahun" style="background: white;color: black;padding: 5px;" required>
										<option value="">-- Pilih Tahun --</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
                                    </select>
									<!-- <input type="button" style="width: 50px;" value="Cari" class="crud_search" id="crud_search"> -->
									<button type='submit' class="crud_search">Proses</button>
									</form>
								</div>
							</div><hr><br>
							<!-- <div class="ex1"> -->
							<!-- <div style="overflow-x: auto;"> -->
							<table class="table table-striped table-bordered" id="tbl">
                                <thead>
                                    <!-- <tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" rowspan='3'> # </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='3'> Nama Provinsi </th>
										<th style="vertical-align : middle;text-align:center;" colspan='5'> Status Penyusunan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Bentuk Kegiatan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Alokasi Anggaran Kegiatan </th>
                                        <th style="vertical-align : middle;text-align:center;" rowspan='3'> Regional </th>
                                        <th style="vertical-align : middle;text-align:center;" width="7%" rowspan='3'> Aksi </th>
                                    </tr>
                                    <tr>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Belum (Belum Menganggarkan) </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Menganggarkan TA 2019 (Menyusun Profil PKP) </th>
										<th style="vertical-align : middle;text-align:center;" rowspan='2'> Sedang (Lelang/ Menyusun Buku Data dan Analisis atau Buku Rencana) </th>
                                        <th style="vertical-align : middle;text-align:center;" colspan='2'> Sudah </th>
                                    </tr>
                                    <tr>
                                        <th style="vertical-align : middle;text-align:center;"> Review/ Konsultasi Publik/ Prolegda </th>
                                        <th style="vertical-align : middle;text-align:center;"> Sudah Legalisasi menjadi Perda </th>
                                    </tr> -->
									<tr>
                                        <th style="vertical-align : middle;text-align:center;" width="4%" > # </th>
										<th style="vertical-align : middle;text-align:center;" > Nama Provinsi </th>
										<th style="vertical-align : middle;text-align:center;" > Status Penyusunan </th>
										<th style="vertical-align : middle;text-align:center;" > Status Legalisasi </th>
										<?php // if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
										<th style="vertical-align : middle;text-align:center;" > Aksi </th>
										<?php // }else{echo'';} ?>
                                    </tr>
                                </thead>
                            </table>
							<script type="text/javascript" language="javascript" >
                                $(document).ready(function(){
                                    $('#tbl').dataTable({
                                        "order": [[ 0, "asc" ]],
                                        "bProcessing": true,
                                        "ajax" : {
                                            url:"<?= site_url('admin/Map/json_rekap_rp3kp_provinsi'); ?>"
                                        },
                                        "aoColumns": [
                                                    { mData: 'number', sClass: "alignCenter" },
                                                    { mData: 'nm_provinsi', sClass: "alignCenter" },
                                                    { mData: 'status', sClass: "alignCenter" },
                                                    { mData: 'legalisasi', sClass: "alignCenter" },
													<?php // if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
													{ mData: 'action', sClass: "alignCenter" }
													<?php // }else{echo'';} ?>
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
	                        <!-- </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>