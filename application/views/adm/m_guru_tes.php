<div class="row">
            <!-- Column -->
  <div class="col-lg-12 col-md-12">
    <div class="card">
        <div class="card-block">
            <div class="row">
              <div class="panel-heading">
                <div class="col-md-12">
                  <a class="btn btn-success btn-sm tombol-kanan" href="#" onclick="return m_ujian_e(0);">Tambah Ujian</a>
                </div><br>
              </div>
              <table class="table table-bordered" id="datatabel">
                <thead>
                  <tr>
                    <th width="5%" style="text-align: center;">No</th>
                    <th width="15%" style="text-align: center;">Nama Tes</th>
                    <th width="25%" style="text-align: center;">Role User</th>
                    <th width="10%" style="text-align: center;">Jumlah Soal</th>
                    <th width="15%" style="text-align: center;">Waktu</th>
                    <th width="15%" style="text-align: center;">Pengacakan Soal</th>
                    <th width="15%" style="text-align: center;">Aksi</th>
                  </tr>
                </thead>
                <tbody></tbody>
              </table>

              <div class="modal fade" id="m_ujian" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 id="myModalLabel">Form Tambah Data Ujian</h4>
                    </div>
                    <div class="modal-body">
                      <div class="alert alert-info">
                      <a href="#" onclick="return view_petunjuk('petunjuk');">Petunjuk Pengisian</a>
                      <!-- <div id="petunjuk">
                        <ul>
                          <li><b>Jml Soal</b>, harap dimasukkan sesuai jumlah soal yang sudah ada di bank soal</li>
                          <li><b>Tgl Mulai</b>, adalah waktu awal boleh mulai meng-klik tombol "mulai ujian"</li>
                          <li><b>Tgl Selesai</b>, adalah waktu akhir boleh mulai meng-klik tombol "mulai ujian"</li>
                          <li><b>Acak Soal</b>, jika dipilih acak, maka soal akan diacak, jika diurutkan, maka akan diurutkan berdasarkan urutan soal masuk</li>
                        </ul>
                      </div> -->
                    </div>

                    <form name="f_ujian" id="f_ujian" onsubmit="return m_ujian_s();">
                      <input type="hidden" name="id" id="id" value="0">
                      <input type="hidden" name="jumlah_soal1" id="jumlah_soal1" value="0">
                      <table class="table table-form">
                        <tr><td style="width: 25%">Nama Ujian</td><td style="width: 75%"><input type="text" class="form-control" name="nama_ujian" id="nama_ujian" required></td></tr>
                        <tr><td>Role User</td><td><?php echo form_dropdown('guru', $p_mapel, '', 'class="form-control"  id="guru" required'); ?></td></tr>
                        <tr><td>Jumlah soal</td><td><?php echo form_input('jumlah_soal', '', 'class="form-control" id="jumlah_soal" required'); ?></td></tr>
                        <tr><td>Tanggal Mulai</td><td>
                          <input type="date" name='tgl_mulai' class="form-control" style="width: 200px; display: inline; float: left" id="tgl_mulai" placeholder="Tgl" data-tooltip="waktu awal boleh menge-klik tombol \"mulai\" ujian" required>
                          <input type="time" name='wkt_mulai' class="form-control" style="width: 100px; display: inline; float: left" id="wkt_mulai" placeholder="Waktu" required>
                        </td></tr>
                        <tr><td>Tanggal Selesai</td><td>
                          <input type="date" name='terlambat' class="form-control" style="width: 200px; display: inline; float: left" id="terlambat" placeholder="Tgl" required>
                          <input type="time" name='terlambat2' class="form-control" style="width: 100px; display: inline; float: left" id="terlambat2" placeholder="Waktu" required>
                        </td></tr>
                        <tr><td>Waktu Ujian</td><td><?php echo form_input('waktu', '', 'class="form-control" id="waktu" placeholder="Menit" required style="width: 100px; display: inline; float: left"'); ?> <div style="float: left; margin: 4px 0 0 10px"> Menit</div></td></tr>
                        <tr><td>Acak Soal</td><td><?php echo form_dropdown('acak', $pola_tes, '', 'class="form-control"  id="acak" required'); ?></td></tr>
                      </table>
                      <div class="modal-footer">
                        <button class="btn btn-primary"><i class="fa fa-check"></i> Simpan</button>
                        <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="fa fa-minus-circle"></i> Tutup</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>