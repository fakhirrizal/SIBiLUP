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
    .alignCenter { vertical-align : middle;text-align: center; }
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
							</div>
							<table class="table table-striped " id="tbl" style="width: 100%;">
								<thead>
									<tr class='hDiv'>
										<th style="text-align: center;" width="4%"> No </th>
										<th style="text-align: center;"> Nama </th>
										<th style="text-align: center;"> NIK </th>
										<th style="text-align: center;"> Alamat </th>
										<th style="text-align: center;"> Email </th>
										<th style="text-align: center;"> Nomor HP </th>
										<th style="text-align: center;" width="9%"> Aksi </th>
									</tr>
								</thead>
							</table>
							<script type="text/javascript" language="javascript" >
								$(document).ready(function(){
									$('#tbl').dataTable({
										"order": [[ 0, "asc" ]],
										"bProcessing": true,
										"ajax" : {
											url:"<?= site_url('admin/Master/json_tamu_data'); ?>"
										},
										"aoColumns": [
													{ mData: 'number', sClass: "alignCenter" },
													{ mData: 'nama' },
													{ mData: 'nik', sClass: "alignCenter" } ,
													{ mData: 'alamat', sClass: "alignCenter" },
													{ mData: 'email', sClass: "alignCenter" },
													{ mData: 'no_hp', sClass: "alignCenter" },
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