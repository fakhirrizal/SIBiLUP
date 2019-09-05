<style>
	/* Always set the map height explicitly to define the size of the div
	* element that contains the map. */
	#map {
	height: 615px;
	}
	#capture {
	height: 360px;
	width: 480px;
	overflow: hidden;
	float: left;
	background-color: #ECECFB;
	border: thin solid #333;
	border-left: none;
	}
	/* Optional: Makes the sample page fill the window. */
	html, body {
	height: 100%;
	margin: 0;
	padding: 0;
	}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- <ul class="page-breadcrumb breadcrumb">
	<li>
		<span>Laporan</span>
	</li>
</ul> -->
<?= $this->session->flashdata('sukses') ?>
<?= $this->session->flashdata('gagal') ?>
<div class="page-content-inner">
	<div class="m-heading-1 border-green m-bordered">
		<h3>Catatan</h3>
		<!-- <p> Ketika mengklik <b>Atur Ulang Sandi</b>, maka kata sandi otomatis menjadi "<b>1234</b>"</p> -->
	</div>
	<div class="row">
		<div class="col-md-12">
			<!-- BEGIN EXAMPLE TABLE PORTLET-->
			<div class="portlet light ">
				<div class="portlet-body">
					<div id="map" class="c-content-contact-1-gmap">
					<br>
					<hr>
					<div class="table-toolbar">
						<div class="row">
							<div class="col-md-12">

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END EXAMPLE TABLE PORTLET-->
		</div>
	</div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnjlDXASsyIUKAd1QANakIHIM8jjWWyNU" type="text/javascript"></script>
<script>
	var map;
	var marker;

	function initMap() {
		// Variabel untuk menyimpan informasi (desc)
		var infoWindow = new google.maps.InfoWindow;

		//  Variabel untuk menyimpan peta Roadmap
		var mapOptions = {
		mapTypeId: google.maps.MapTypeId.ROADMAP
		}

		map = new google.maps.Map(document.getElementById('map'), {
		center: {lat: -6.994163, lng: 110.416438},
		zoom: 8
		});

		// Variabel untuk menyimpan batas kordinat
		var bounds = new google.maps.LatLngBounds();

		// Pengambilan data dari database
		<?php
			foreach ($data_marker as $key => $value) {
				$nama = $value->nm_provinsi;
				$lat = $value->lintang;
				$lon = $value->bujur;
				$id = $value->id_provinsi;
				$nama_file = '';
				$style = 'style="text-align: center"';
				$style_td = 'style="text-align: left"';
				$class_table = 'class="table"';
				$id_enkrip = md5($id);
				echo ("addMarker($lat, $lon, '<div $style><h3><b>$nama</b></h3><br><table $class_table><tbody><tr><td $style_td> Presentase Realisasi KUBE </td><td> 30% </td></tr><tr><td $style_td> Presentase Realisasi RUTILAHU </td><td> 30% </td></tr><tr><td $style_td> Presentase Realisasi SARLING </td><td> 30% </td></tr><tr><td></td><td></td></tr><tr></tbody></table><a href=peta_provinsi/$id_enkrip>Klik disini untuk data detail</a></div>');\n");
			}
		?>

		// Proses membuat marker
		function addMarker(lat, lng, info) {
			var lokasi = new google.maps.LatLng(lat, lng);
			bounds.extend(lokasi);
			var marker = new google.maps.Marker({
				map: map,
				position: lokasi
			});
			map.fitBounds(bounds);
			bindInfoWindow(marker, map, infoWindow, info);
		}

		// Menampilkan informasi pada masing-masing marker yang diklik
		function bindInfoWindow(marker, map, infoWindow, html) {
		google.maps.event.addListener(marker, 'click', function() {
			infoWindow.setContent(html);
			infoWindow.open(map, marker);
		});
		}
		var situs = 'http://pfm.gbnku.co.id/assets/peta/';
		var nama_file = '<?php echo $nama_file ?>';
		var situs_full = situs.concat(nama_file);
		var kmldashboard = new google.maps.KmlLayer({

		url: situs_full,
		map: map
		});
	}
	google.maps.event.addDomListener(window, 'load', initMap);
</script>

<div class="c-content-contact-1 c-opt-1">
	</div>
</div>
<div class="row">
	<br>
	<div class="tabbable-custom nav-justified">
		<ul class="nav nav-tabs nav-justified">
			<li class="active">
				<a href="#tab_1_1_1" data-toggle="tab" aria-expanded="true"> Laporan Program Kube (Kelompok Usaha Bersama) </a>
			</li>
			<li class="">
				<a href="#tab_1_1_2" data-toggle="tab" aria-expanded="false"> Laporan Program Rutilahu (Rumah Tidak Layak Huni) </a>
			</li>
			<li class="">
				<a href="#tab_1_1_3" data-toggle="tab" aria-expanded="false"> Laporan Program Sarling (Sarana Lingkungan) </a>
			</li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="tab_1_1_1">
				<!-- <div class="cbp-l-project-details-title">
					<span>Keterangan Data</span>
				</div> -->
				<div class="cbp-l-project-details-list" style="text-align: center;">
					<table class="table">
						<thead>
							<tr>
								<th style='text-align: center'>#</th>
								<th style='text-align: center'>Nama Provinsi</th>
								<th style='text-align: center'>Rencana Kube</th>
								<th style='text-align: center'>Realisasi Kube</th>
								<th style='text-align: center'>Rencana Keuangan</th>
								<th style='text-align: center'>Realisasi Keuangan</th>
								<th style='text-align: center'>Realisasi Fisik</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1.</td>
								<td>Jawa Tengah</td>
								<td>2.980</td>
								<td>12.009</td>
								<td>2.980</td>
								<td>29.81 %</td>
								<td>11.11 %</td>
								<!-- <td>
									<div class="btn-group" style="text-align: center;">
										<button class="btn btn-xs green" type="button"> Detail Data
											<i class="fa fa-eye"></i>
										</button>
									</div>
								</td> -->
							</tr>
							<tr>
								<td>2.</td>
								<td>Jawa Barat</td>
								<td>4.107</td>
								<td>90.009</td>
								<td>4.107</td>
								<td>41.07 %</td>
								<td>90.01 %</td>
								<!-- <td>
									<div class="btn-group" style="text-align: center;">
										<button class="btn btn-xs green" type="button"> Detail Data
											<i class="fa fa-eye"></i>
										</button>
									</div>
								</td> -->
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="tab-pane" id="tab_1_1_2">
				<!-- <div class="cbp-l-project-details-title">
					<span>Keterangan Data</span>
				</div> -->
				<div class="cbp-l-project-details-list" style="text-align: justify;">
					<table class="table">
						<tbody>
							<tr class="header">
								<td class="idx"></td>
								<td class="idx">#</td>
								<td class="name">Nama Provinsi</td>
								<td class="sum pas1">Rencana RTLH</td>
								<td class="sum pas2">Realisasi RLTH</td>
								<td class="sum sah">Rencana Keuangan</td>
								<td class="sum tsah">Realisasi Keuangan</td>
								<td class="sum tsah">Realisasi Fisik</td>
							</tr>
							<tr class="row">
								<td class="idx">1.</td>
								<td class="name darken">
									<a href="#pilpres:1">ACEH</a>
								</td>
								<td class="sum pas pas1 per ">
									<span class="abs">397.188</span>
								</td>
								<td class="sum pas pas2 per win">
									<span class="abs">2.349.288</span>
								</td>
								<td class="sum sah error">
									<span class="sah">2.740.814</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">89.73 %</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">89.73 %</span>
								</td>
								<!-- <td>
									<div class="btn-group" style="text-align: center;">
										<button class="btn btn-xs green" type="button"> Detail Data
											<i class="fa fa-eye"></i>
										</button>
									</div>
								</td> -->
							</tr>
							<tr class="row">
								<td class="idx">2.</td>
								<td class="name darken">
									<a href="#pilpres:6728">SUMATERA UTARA</a>
								</td>
								<td class="sum pas pas1 per win">
									<span class="abs">3.878.670</span>
								</td>
								<td class="sum pas pas2 per ">
									<span class="abs">3.553.749</span>
								</td>
								<td class="sum sah error">
									<span class="sah">7.405.496</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">14.71 %</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">43.31 %</span>
								</td>
								<!-- <td>
									<div class="btn-group" style="text-align: center;">
										<button class="btn btn-xs green" type="button"> Detail Data
											<i class="fa fa-eye"></i>
										</button>
									</div>
								</td> -->
							</tr>
							<tr class="row">
								<td class="idx">3</td>
								<td class="name darken">
									<a href="#pilpres:12920">SUMATERA BARAT</a>
								</td>
								<td class="sum pas pas1 per ">
									<span class="abs">404.728</span>
								</td>
								<td class="sum pas pas2 per win">
									<span class="abs">2.476.300</span>
								</td>
								<td class="sum sah error">
									<span class="sah">2.879.305</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">43.32 %</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">43.32 %</span>
								</td>
								<!-- <td>
									<div class="btn-group" style="text-align: center;">
										<button class="btn btn-xs green" type="button"> Detail Data
											<i class="fa fa-eye"></i>
										</button>
									</div>
								</td> -->
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="tab-pane" id="tab_1_1_3">
				<!-- <div class="cbp-l-project-details-title">
					<span>Keterangan Data</span>
				</div> -->
				<div class="cbp-l-project-details-list" style="text-align: justify;">
					<table class="table">
						<tbody>
							<tr class="header">
								<td class="idx"></td>
								<td class="idx">#</td>
								<td class="name">Nama Provinsi</td>
								<td class="sum pas1">Rencana Sarling</td>
								<td class="sum pas2">Realisasi Sarling</td>
								<td class="sum sah">Rencana Keuangan</td>
								<td class="sum tsah">Realisasi Keuangan</td>
								<td>Realisasi Fisik</td>
							</tr>
							<tr class="row">
								<td class="idx">1.</td>
								<td class="name darken">
									<a href="#pilpres:1">ACEH</a>
								</td>
								<td class="sum pas pas1 per ">
									<span class="abs">397.188</span>
								</td>
								<td class="sum pas pas2 per win">
									<span class="abs">2.349.288</span>
								</td>
								<td class="sum sah error">
									<span class="sah">2.740.814</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">89.73 %</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">89.73 %</span>
								</td>
							</tr>
							<tr class="row">
								<td class="idx">2.</td>
								<td class="name darken">
									<a href="#pilpres:6728">SUMATERA UTARA</a>
								</td>
								<td class="sum pas pas1 per win">
									<span class="abs">3.878.670</span>
								</td>
								<td class="sum pas pas2 per ">
									<span class="abs">3.553.749</span>
								</td>
								<td class="sum sah error">
									<span class="sah">7.405.496</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">14.70 %</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">13.70 %</span>
								</td>
							</tr>
							<tr class="row">
								<td class="idx">3</td>
								<td class="name darken">
									<a href="#pilpres:12920">SUMATERA BARAT</a>
								</td>
								<td class="sum pas pas1 per ">
									<span class="abs">404.728</span>
								</td>
								<td class="sum pas pas2 per win">
									<span class="abs">2.476.300</span>
								</td>
								<td class="sum sah error">
									<span class="sah">2.879.305</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">43.32 %</span>
								</td>
								<td class="sum tsah">
									<span class="tsah">43.32 %</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
