<div class="row">
            <!-- Column -->
  <div class="col-lg-12 col-md-12">
    <div class="card">
        <div class="card-block">
            <div class="row">
              <table class="table table-bordered" id="datatabelside">
                <thead>
                  <tr>
                    <th width="5%" style="text-align: center;">No</th>
                    <th>Nama Pegawai</th>
                    <th width="15%" >Jumlah Benar</th>
                    <th width="15%" >Nilai</th>
                    <th width="15%" >Tanggal Pengerjaan</th>
                    <th width="15%" >Status</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 0; foreach ($hasil as $key) { ?>
                    <tr>
                      <td><?= ++$no; ?></td>
                      <td><?= $key->nama_pegawai ?></td>
                      <td><?= $key->jml_benar ?></td>
                      <td><?= $key->nilai ?></td>
                      <td><?= fdate($key->tgl_mulai, "HHDDMMYYYY") ?></td>
                      <td><?php if($key->status == 'N') { echo "Selesai Mengerjakan"; } else { echo "Belum Selesai"; } ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
          </div>
        </div>
      </div>
    </div>
  </div>