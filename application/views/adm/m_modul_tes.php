<div class="row">
            <!-- Column -->
  <div class="col-lg-12 col-md-12">
    <div class="card">
        <div class="card-block">
            <div class="row">
              <div class="panel-heading">
                <div class="col-md-12">
                  <a class="btn btn-success btn-sm tombol-kanan" href="<?= base_url().'adm/pilih_soal/'.$this->uri->segment(3) ?>"><i class="glyphicon glyphicon-plus"></i> &nbsp;&nbsp;Tambah Soal</a>
                </div><br>
              </div>
              <table class="table table-bordered" id="datatabel" style="width: 1029px">
                <thead>
                  <tr>
                    <th width="5%">No</th>
                    <th>Nama Modul</th>
                    <th width="20%">Jumlah Soal</th>
                    <th width="20%">Aksi</th>
                  </tr>
                </thead>
                <tbody></tbody>
              </table>
          </div>
        </div>
      </div>
    </div>
  </div>