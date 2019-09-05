<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<ul class="page-breadcrumb breadcrumb">
	<li>
		<span>Rekap Laporan</span>
		<!-- <i class="fa fa-circle"></i> -->
	</li>
	<!-- <li>
		<span>Data Paket</span>
	</li> -->
</ul>
<?= $this->session->flashdata('sukses') ?>
<?= $this->session->flashdata('gagal') ?>
<div class="page-content-inner">
	<div class="m-heading-1 border-green m-bordered">
		<h3>Catatan</h3>
		<!-- <p> Hanya status <b>aktif</b> yang akan tampil di shop display pengguna</p> -->
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="portlet light ">
				<div class="portlet-title">
					<div class="caption ">
						<span class="caption-subject font-dark bold uppercase">Rekap Laporan</span>
						<span class="caption-helper">Pie Chart</span>
					</div>
					<div class="actions">
						<div class="btn-group">
							<a class="btn green-haze btn-outline btn-circle btn-sm" href="javascript:;" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Aksi
								<i class="fa fa-angle-down"></i>
							</a>
							<ul class="dropdown-menu pull-right">
								<!-- <li>
									<a href="javascript:;"> Option 1</a>
								</li>
								<li class="divider"> </li> -->
								<li>
									<a href="javascript:;">Cetak PDF</a>
								</li>
								<li>
									<a href="javascript:;">Cetak Excel</a>
								</li>
								<li>
									<a href="javascript:;">Cetak Word</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="portlet-body">
					<div id="dashboard_amchart_4" class="CSSAnimationChart" style="overflow: hidden; text-align: left;"><div class="amcharts-main-div" style="position: relative;"><div class="amcharts-chart-div" style="overflow: hidden; position: relative; text-align: left; width: 1100px; height: 500px; padding: 0px;"><svg version="1.1" style="position: absolute; width: 1100px; height: 500px; top: 0px; left: -0.5px;"><desc>JavaScript chart by amCharts 3.17.1</desc><g><path cs="100,100" d="M0.5,0.5 L1099.5,0.5 L1099.5,499.5 L0.5,499.5 Z" fill="#FFFFFF" stroke="#000000" fill-opacity="0" stroke-width="1" stroke-opacity="0"></path></g><g></g><g></g><g></g><g></g><g></g><g><g><path cs="1000,1000" d=" M550,265 L527.6169583176555,123.79367046371246 A212,142,0,0,1,549.9999999999998,123 L550,265 Z" fill="#26335d" stroke-opacity="0" fill-opacity="1" transform="translate(0,0)"></path><path cs="1000,1000" d=" M550,265 L527.6169583176555,123.79367046371246 A212,142,0,0,1,549.9999999999998,123 L550,265 Z" fill="#26335d" stroke-opacity="0" fill-opacity="1" transform="translate(0,-10)"></path><path cs="1000,1000" d=" M550,250 L550,265 L527.6169583176555,123.79367046371246 L527.6169583176555,108.79367046371246 L550,250 Z" fill="#26335d" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M549.9999999999998,108 L549.9999999999998,123 L550,265 L550,250 L549.9999999999998,108 Z" fill="#26335d" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M550,250 L527.6169583176555,108.79367046371246 A212,142,0,0,1,549.9999999999998,108 L550,250 Z" fill="#2f4074" stroke="#FFFFFF" stroke-width="2" stroke-opacity="0.4" fill-opacity="1"></path><path cs="100,100" d="M539.5,109.5 L538.5,77.5 L530.5,77.5" fill="none" stroke-opacity="0.3" stroke="#000000" visibility="visible"></path></g><g><path cs="1000,1000" d=" M550,265 L485.98308947555466,129.62877041144367 A212,142,0,0,1,527.6169583176555,123.79367046371246 L550,265 Z" fill="#a4688a" stroke-opacity="0" fill-opacity="1" transform="translate(0,0)"></path><path cs="1000,1000" d=" M550,265 L485.98308947555466,129.62877041144367 A212,142,0,0,1,527.6169583176555,123.79367046371246 L550,265 Z" fill="#a4688a" stroke-opacity="0" fill-opacity="1" transform="translate(0,-10)"></path><path cs="1000,1000" d=" M550,250 L550,265 L485.98308947555466,129.62877041144367 L485.98308947555466,114.62877041144367 L550,250 Z" fill="#a4688a" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M527.6169583176555,108.79367046371246 L527.6169583176555,123.79367046371246 L550,265 L550,250 L527.6169583176555,108.79367046371246 Z" fill="#a4688a" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M550,250 L485.98308947555466,114.62877041144367 A212,142,0,0,1,527.6169583176555,108.79367046371246 L550,250 Z" fill="#cd82ad" stroke="#FFFFFF" stroke-width="2" stroke-opacity="0.4" fill-opacity="1"></path><path cs="100,100" d="M506.5,111.5 L502.5,96.5 L494.5,96.5" fill="none" stroke-opacity="0.3" stroke="#000000" visibility="visible"></path></g><g><path cs="1000,1000" d=" M550,265 L410.3240920174229,158.1768728981778 A212,142,0,0,1,485.98308947555466,129.62877041144367 L550,265 Z" fill="#a3393a" stroke-opacity="0" fill-opacity="1" transform="translate(0,0)"></path><path cs="1000,1000" d=" M550,265 L410.3240920174229,158.1768728981778 A212,142,0,0,1,485.98308947555466,129.62877041144367 L550,265 Z" fill="#a3393a" stroke-opacity="0" fill-opacity="1" transform="translate(0,-10)"></path><path cs="1000,1000" d=" M550,250 L550,265 L410.3240920174229,158.1768728981778 L410.3240920174229,143.1768728981778 L550,250 Z" fill="#a3393a" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M485.98308947555466,114.62877041144367 L485.98308947555466,129.62877041144367 L550,265 L550,250 L485.98308947555466,114.62877041144367 Z" fill="#a3393a" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M550,250 L410.3240920174229,143.1768728981778 A212,142,0,0,1,485.98308947555466,114.62877041144367 L550,250 Z" fill="#cc4748" stroke="#FFFFFF" stroke-width="2" stroke-opacity="0.4" fill-opacity="1"></path><path cs="100,100" d="M446.5,127.5 L436.5,115.5 L428.5,115.5" fill="none" stroke-opacity="0.3" stroke="#000000" visibility="visible"></path></g><g><path cs="1000,1000" d=" M550,265 L340.8430403514342,241.8225322091012 A212,142,0,0,1,410.3240920174229,158.1768728981778 L550,265 Z" fill="#6a924e" stroke-opacity="0" fill-opacity="1" transform="translate(0,0)"></path><path cs="1000,1000" d=" M550,265 L340.8430403514342,241.8225322091012 A212,142,0,0,1,410.3240920174229,158.1768728981778 L550,265 Z" fill="#6a924e" stroke-opacity="0" fill-opacity="1" transform="translate(0,-10)"></path><path cs="1000,1000" d=" M550,250 L550,265 L340.8430403514342,241.8225322091012 L340.8430403514342,226.8225322091012 L550,250 Z" fill="#6a924e" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M410.3240920174229,143.1768728981778 L410.3240920174229,158.1768728981778 L550,265 L550,250 L410.3240920174229,143.1768728981778 Z" fill="#6a924e" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M550,250 L340.8430403514342,226.8225322091012 A212,142,0,0,1,410.3240920174229,143.1768728981778 L550,250 Z" fill="#84b761" stroke="#FFFFFF" stroke-width="2" stroke-opacity="0.4" fill-opacity="1"></path><path cs="100,100" d="M364.5,181.5 L347.5,175.5 L339.5,175.5" fill="none" stroke-opacity="0.3" stroke="#000000" visibility="visible"></path></g><g><path cs="1000,1000" d=" M550,265 L550,123 A212,142,0,0,1,630.8698437268351,396.26262968999026 L550,265 Z" fill="#5292b0" stroke-opacity="0" fill-opacity="1" transform="translate(0,0)"></path><path cs="1000,1000" d=" M550,265 L550,123 A212,142,0,0,1,630.8698437268351,396.26262968999026 L550,265 Z" fill="#5292b0" stroke-opacity="0" fill-opacity="1" transform="translate(0,-10)"></path><path cs="1000,1000" d=" M550,250 L550,265 L550,123 L550,108 L550,250 Z" fill="#5292b0" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M630.8698437268351,381.26262968999026 L630.8698437268351,396.26262968999026 L550,265 L550,250 L630.8698437268351,381.26262968999026 Z" fill="#5292b0" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M550,250 L550,108 A212,142,0,0,1,630.8698437268351,381.26262968999026 L550,250 Z" fill="#67b7dc" stroke="#FFFFFF" stroke-width="2" stroke-opacity="0.4" fill-opacity="1"></path><path cs="100,100" d="M758.5,222.5 L778.5,220.5 L786.5,220.5" fill="none" stroke-opacity="0.3" stroke="#000000" visibility="visible"></path></g><g><path cs="1000,1000" d=" M550,265 L630.8698437268351,396.26262968999026 A212,142,0,0,1,340.8430403514342,241.8225322091012 L550,265 Z" fill="#caaa00" stroke-opacity="0" fill-opacity="1" transform="translate(0,0)"></path><path cs="1000,1000" d=" M550,265 L630.8698437268351,396.26262968999026 A212,142,0,0,1,340.8430403514342,241.8225322091012 L550,265 Z" fill="#caaa00" stroke-opacity="0" fill-opacity="1" transform="translate(0,-10)"></path><path cs="1000,1000" d=" M550,250 L550,265 L630.8698437268351,396.26262968999026 L630.8698437268351,381.26262968999026 L550,250 Z" fill="#caaa00" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M340.8430403514342,226.8225322091012 L340.8430403514342,241.8225322091012 L550,265 L550,250 L340.8430403514342,226.8225322091012 Z" fill="#caaa00" stroke-opacity="0" fill-opacity="1"></path><path cs="1000,1000" d=" M550,250 L630.8698437268351,381.26262968999026 A212,142,0,0,1,340.8430403514342,226.8225322091012 L550,250 Z" fill="#fdd400" stroke="#FFFFFF" stroke-width="2" stroke-opacity="0.4" fill-opacity="1"></path><path cs="100,100" d="M418.5,361.5 L405.5,371.5 L397.5,371.5" fill="none" stroke-opacity="0.3" stroke="#000000" visibility="visible"></path></g></g><g></g><g><g><text y="6" fill="#000000" font-family="Verdana" font-size="11px" opacity="1" text-anchor="start" transform="translate(790,220)" style="pointer-events: none;" visibility="visible"><tspan y="6" x="0">Nusa Tenggara Barat: 43.77%</tspan></text><rect x="0.5" y="0.5" width="108" height="18" rx="0" ry="0" stroke-width="0" fill="#FFFFFF" stroke="#FFFFFF" fill-opacity="0.005" stroke-opacity="0.005" transform="translate(790,215)"></rect></g><g><text y="6" fill="#000000" font-family="Verdana" font-size="11px" opacity="1" text-anchor="end" transform="translate(393,371)" style="pointer-events: none;" visibility="visible"><tspan y="6" x="0">Jawa Tengah: 33.84%</tspan></text><rect x="0.5" y="0.5" width="97" height="18" rx="0" ry="0" stroke-width="0" fill="#FFFFFF" stroke="#FFFFFF" fill-opacity="0.005" stroke-opacity="0.005" transform="translate(301,366)"></rect></g><g><text y="6" fill="#000000" font-family="Verdana" font-size="11px" opacity="1" text-anchor="end" transform="translate(335,175)" style="pointer-events: none;" visibility="visible"><tspan y="6" x="0">Nusa Tenggara Timur: 10.94%</tspan></text><rect x="0.5" y="0.5" width="108" height="18" rx="0" ry="0" stroke-width="0" fill="#FFFFFF" stroke="#FFFFFF" fill-opacity="0.005" stroke-opacity="0.005" transform="translate(232,170)"></rect></g><g><text y="6" fill="#000000" font-family="Verdana" font-size="11px" opacity="1" text-anchor="end" transform="translate(424,115)" style="pointer-events: none;" visibility="visible"><tspan y="6" x="0">Jawa Barat: 6.57%</tspan></text><rect x="0.5" y="0.5" width="100" height="18" rx="0" ry="0" stroke-width="0" fill="#FFFFFF" stroke="#FFFFFF" fill-opacity="0.005" stroke-opacity="0.005" transform="translate(329,110)"></rect></g><g><text y="6" fill="#000000" font-family="Verdana" font-size="11px" opacity="1" text-anchor="end" transform="translate(490,96)" style="pointer-events: none;" visibility="visible"><tspan y="6" x="0">Sulawesi Tengah: 3.20%</tspan></text><rect x="0.5" y="0.5" width="67" height="18" rx="0" ry="0" stroke-width="0" fill="#FFFFFF" stroke="#FFFFFF" fill-opacity="0.005" stroke-opacity="0.005" transform="translate(494,91)"></rect></g><g><text y="6" fill="#000000" font-family="Verdana" font-size="11px" opacity="1" text-anchor="end" transform="translate(526,77)" style="pointer-events: none;" visibility="visible"><tspan y="6" x="0">Jawa Timur: 1.68%</tspan></text><rect x="0.5" y="0.5" width="84" height="18" rx="0" ry="0" stroke-width="0" fill="#FFFFFF" stroke="#FFFFFF" fill-opacity="0.005" stroke-opacity="0.005" transform="translate(530,72)"></rect></g></g><g></g><g></g><g></g><g></g><g><g></g></g><g></g><g></g><g></g></svg><a href="http://www.amcharts.com/javascript-charts/" title="JavaScript charts" style="position: absolute; text-decoration: none; color: rgb(0, 0, 0); font-family: Verdana; font-size: 11px; opacity: 0.7; display: block; left: 5px; top: 5px;"></a></div></div></div>
				</div>
			</div>
		</div>
	</div>
</div>