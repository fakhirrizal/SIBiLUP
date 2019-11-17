
<!-- Row -->
<!-- Row -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<script src="<?= base_url() ?>assets/plugins/tinymce/tinymce.min.js"></script>
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 100%;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 12px 8px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

.abc {
  background-color: lightgrey;
  width: 450px;
  border: 2px solid black;
  padding: 5px;
  margin: 2px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */

div.ex1 {
  height: 600px;
  overflow: scroll;
}

</style>
<div class="row">
    
    <div class="col-md-12">
        <div class="card">
            <div class="row">
                <div class="col-md-3">
                    <!-- Nav tabs -->
                    <input class="form-control" id="myInput" type="text" placeholder="Cari Pegawai.."> <br><br>
                    <div class="tab" id="myTable">
                        <div class="ex1">
                            <button class="tablinks" onclick="openCity(event, 'pesan_baru')" <?php if ($kepada == "0" AND (!$this->input->get('idhub'))) { ?> id="defaultOpen" <?php } ?> >Tulis Pesan</button>
                            <?php foreach ($datpgw as $dp) { ?>
                              <button class="tablinks" <?php if ($kepada == $dp['id_pgw'] OR $dp['id_pgw'] == $this->input->get('id_peg')) { ?> id="defaultOpen" <?php } ?> onclick="openCity(event, <?= $dp['id_pgw'] ?>)"><?= $dp['nama_pegawai'] ?></button>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
            <!-- Tab panes -->
                    <div class="tab-content">
                        <div id="pesan_baru" class="tabcontent">
                            <div class="card-block">
                                <div class="profiletimeline">
                                    <form method="post" action="" enctype="multipart/form-data">
                                      <div class="form-group">
                                        <label for="exampleInputEmail1">Kepada</label>
                                        <select class="form-control" name="kepada" id="kepada">
                                            <option disabled="">-- Pilih Penerima --</option>
                                            <?php foreach ($pegawai as $pgw) { ?>
                                                <option value="<?= $pgw['id_pegawai'] ?>"><?= $pgw['nama_pegawai'] ?></option>
                                            <?php } ?>
                                        </select>
                                      </div>
                                      <div class="form-group">
                                        <label for="exampleInputPassword1">Pesan</label><br>
                                        <textarea class="form-control editor" name="pesan" style="width: 620px; height: 250px"></textarea>
                                      </div>
                                      <!-- <div class="form-check">
                                        <label for="exampleInputEmail1">File</label>
                                        <input type="file" name="foto" class="form-control">
                                      </div> -->

                                      <input type="submit" class="btn btn-warning" value="KIRIM">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <?php foreach ($datpgw as $dp) { 
                          $pt['table']      = "hubungi_kami";
                          $pt['type']       = "multiple";
                          $pt['orderby']['column'] = "create_at";
                          $pt['orderby']['sort']   = "DESC";
                          $pt['join']['table']  = "pegawai";
                          $pt['join']['ref']    = "id_pgw";
                          $pt['join']['key']    = "id_pegawai";
                          $pt['condition']['id_pgw'] = $dp['id_pgw'];
                          $pt['column']     = "hubungi_kami.*,nama_pegawai,id_pegawai";
                          $ulasan = $this->Crud_model->get_data($pt); 
                          if ($this->input->get('idhub')) {
                            $hubs = $this->input->get('idhub');
                            $rply = $this->db->query("SELECT a.*,b.nama_pegawai,b.id_pegawai FROM hubungi_kami a LEFT JOIN pegawai b ON a.id_pgw=b.id_pegawai WHERE id_hub='$hubs'")->row_array();
                            $replyne = "\* Balasan Untuk Pesan : ".$rply['isi']." */";
                          } else {
                            $replyne = "";
                          }
                          ?>
                        <div id="<?= $dp['id_pgw'] ?>" class="tabcontent">
                            <div class="card-block">
                                <div class="profiletimeline">
                                    
                                    <div class="sl-item">
                                        <div class="ex1">
                                            <form method="post" action="" enctype="multipart/form-data">
                                              <div class="form-group">
                                                <div class="col-md-9">
                                                  <!-- <label for="exampleInputPassword1">Balas</label><br> -->
                                                  <textarea class="form-control editor" name="pesan" style="width: 500px; height: 80px"><?= $replyne ?></textarea>
                                                  <input type="hidden" name="kepada" value="<?= $dp['id_pgw'] ?>">
                                                  <?php if ($this->input->get('idhub')) { ?>
                                                  <input type="hidden" name="reply" value="<?= $this->input->get('idhub') ?>">
                                                  <?php } ?>
                                                </div>
                                                <div class="col-md-3">
                                                  <br>
                                                  <input type="submit" class="btn btn-warning" value="KIRIM">
                                                </div>
                                              </div>
                                            </form>
                                             <br>
                                            <?php foreach ($ulasan as $ul) { ?>
                                              <?php if ($ul['penjawab'] == '0') { ?>
                                                <div class="sl-right" align="left">
                                                    <div class="chat-content pl-3 d-inline-block">
                                                      <hr><h5 class="text-muted"><?= $ul['nama_pegawai'] ?></h5>
                                                      <div class="chat-time d-inline-block text-right text-muted"><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></div>
                                                      <?php if ($ul['reply'] != '0') {
                                                        $reply = $ul['reply']; 
                                                        $rep = $this->db->query("SELECT a.*,b.nama_pegawai FROM hubungi_kami a LEFT JOIN pegawai b ON a.id_pgw=b.id_pegawai WHERE id_hub = '$reply'")->row_array(); ?>
                                                        <div class="abc">
                                                          <div class="chat-content pl-3 d-inline-block">
                                                            <b><h5 class="text-muted"><?= $rep['nama_pegawai'] ?></h5></b>
                                                            <div class="chat-time d-inline-block text-right text-muted"><span class="sl-date"><?= fdate($rep['create_at'], "HHDDMMYYYY"); ?></span></div>
                                                            <p> <?= $rep['isi'] ?> </p>
                                                          </div>
                                                        </div>
                                                      <?php } ?>
                                                      <br><div class="p-2 rounded bg-light-success d-inline-block mb-2 text-dark">
                                                        <p class="m-t-10 col-md-10" style="text-align: justify;"> <?= $ul['isi'] ?> </p>
                                                      </div>
                                                        
                                                        <form action="" method="get">
                                                          <input type="hidden" name="idhub" value="<?= $ul['id_hub'] ?>">
                                                          <input type="hidden" name="id_peg" value="<?= $ul['id_pegawai'] ?>">
                                                        <button type="submit" class="btn btn-info">BALAS</button>
                                                        </form>
                                                    </div>
                                                </div>

                                              <?php } else { ?>
                                                <div class="sl-right" align="right" style="margin-right: 10px;">
                                                    <div class="chat-content pl-3 d-inline-block text-right">
                                                      <hr><h5 class="text-muted">Admin</h5>
                                                      <div class="chat-time d-inline-block text-right text-muted"><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></div>
                                                        <p class="col-md-2"></p>
                                                        <?php if ($ul['reply'] != '0') {
                                                        $reply = $ul['reply']; 
                                                          $rep = $this->db->query("SELECT a.*,b.nama_pegawai FROM hubungi_kami a LEFT JOIN pegawai b ON a.id_pgw=b.id_pegawai WHERE id_hub = '$reply'")->row_array(); ?>
                                                          <div class="abc"><div><b><h5><?= $rep['nama_pegawai'] ?></h5></b> <span class="sl-date"><?= fdate($rep['create_at'], "HHDDMMYYYY"); ?></span><p> <?= $rep['isi'] ?> </p></div></div>
                                                        <?php } ?>
                                                        <div class="p-2 rounded bg-light-info d-inline-block mb-2 text-dark"><p class="m-t-10 col-md-10" > <?= $ul['isi'] ?> </p></div>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                                <div class="modal fade" id="myModal<?= $ul['id_hub'] ?>" role="dialog">
                                                    <div class="modal-dialog">
                                                      <div class="modal-content">
                                                        <div class="modal-header">
                                                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                          <h4 class="modal-title"><?= $ul['nama_pegawai'] ?></h4>
                                                        </div>
                                                        <div class="modal-body">
                                                         <form method="post" action="" enctype="multipart/form-data">
                                                          <div class="form-group">
                                                            <label for="exampleInputPassword1">Pesan</label><br>
                                                            <textarea class="form-control editor" name="pesan" style="width: 220px; height: 250px"></textarea>
                                                            <input type="hidden" name="reply" value="<?= $ul['id_hub'] ?>">
                                                          </div>
                                                          <input type="submit" class="btn btn-warning" value="KIRIM">
                                                        </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

$('#kepada').select2();
</script>

<script>
  tinymce.init({ 
    selector:'.editor',
    theme: 'modern',
    height : 200,
    width: 620,
    resize: false,
    plugins: "link"
  }); 

$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable button").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>