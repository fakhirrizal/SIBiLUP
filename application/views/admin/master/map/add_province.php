<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<ul class="page-breadcrumb breadcrumb">
	<li>
		<h3>Catatan</h3>
	</li>
	<li>
		1. Kolom isian dengan tanda bintang (<font color='red'>*</font>) adalah wajib untuk di isi.
	</li>
	<li>
		2. Ekstensi file berupa <b>.kml</b>
	</li>
    <li>
		3. Untuk marker disini merupakan titik ibu kota dari suatu Provinsi
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
                            <form role="form" class="form-horizontal" action="<?=base_url('admin_side/simpan_data_provinsi');?>" method="post"  enctype='multipart/form-data'>
                                <div class="form-body">
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">Nama Provinsi <span class="required"> * </span></label>
                                        <div class="col-md-12">
                                            <div class="input-icon">
                                                <input type="text" class="form-control" name="nm_provinsi" placeholder="Type something" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">Marker <span class="required"> * </span></label>
                                        <div class="col-md-12">
                                            <div id="map"></div>
                                        </div>
                                    </div>
									<div class="form-group form-md-line-input row">
										<label for="example-text-input" class="col-2 col-form-label">Garis Lintang</label>
										<div class="col-4">
											<input type="text" class="form-control" name='latitude' id='latitude' required>
										</div>
										<label for="example-text-input" class="col-2 col-form-label">Garis Bujur</label>
										<div class="col-4">
											<input type="text" class="form-control" name='longitude' id='longitude' required>
										</div>
									</div>
									<div class="form-group form-md-line-input has-danger">
                                        <label class="col-md-2 control-label" for="form_control_1">File KML</label>
                                        <div class="col-md-6">
                                            <div class="input-icon">
                                                <input type="file" class="form-control" name="kml">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-actions margin-top-10">
                                    <div class="row">
                                        <div class="col-md-offset-2 col-md-12">
                                            <button type="reset" class="btn default">Batal</button>
                                            <button type="submit" class="btn blue">Simpan</button>
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
<style type="text/css">
	#map {
		height: 300px;
	}
</style>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=initialize&key=AIzaSyCnjlDXASsyIUKAd1QANakIHIM8jjWWyNU"></script>

<script type="text/javascript">
	function updateMarkerPosition(latLng) {
		document.getElementById('latitude').value = [latLng.lat()]
		document.getElementById('longitude').value = [latLng.lng()]
	}

	var map = new google.maps.Map(document.getElementById('map'), {
	zoom: 7,
	center: new google.maps.LatLng(-6.200309654,106.8344433),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	});
	var latLng = new google.maps.LatLng(-6.200309654,106.8344433);

	var marker = new google.maps.Marker({
		position : latLng,
		title : 'lokasi',
		map : map,
		draggable : true
	});

	updateMarkerPosition(latLng);
	google.maps.event.addListener(marker, 'drag', function() {
		updateMarkerPosition(marker.getPosition());
	});
</script>