
<!-- Row -->
<!-- Row -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<script src="<?= base_url() ?>assets/plugins/tinymce/tinymce.min.js"></script>
<style>
.abc {
  background-color: lightgrey;
  width: 450px;
  /* border: 2px solid black; */
  padding: 5px;
  margin: 2px;
  border-radius: 0px 10px 0px 10px;
}

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
  overflow: auto;
}

.card-block ::-webkit-scrollbar {
  width: 10px;
}

.profiletimeline {
  margin-left: 0px;
}
#mceu_12 {
  width: 100% !important;
}
.sl-right {
  margin-right: 5px;
}
.manas {
  -webkit-border-radius: 10px;
  -webkit-border-top-left-radius: 0;
  -moz-border-radius: 10px;
  -moz-border-radius-top-left: 0;
  border-radius: 10px;
  border-top-left-radius: 0;
}
.manas p {
  margin-bottom: 0px;
}

#pesan .profiletimeline
{
  background: linear-gradient(135deg, #70809000 21px, #fbfbfb 22px, #fbfbfb 24px, transparent 24px, transparent 67px, #fbfbfb 67px, #fbfbfb 69px, transparent 69px), linear-gradient(225deg, #70809000 21px, #fbfbfb 22px, #fbfbfb 24px, transparent 24px, transparent 67px, #fbfbfb 67px, #fbfbfb 69px, transparent 69px)0 64px;
    background-color: #70809000;
    background-size: 64px 128px;
    padding: 0px 0px 0px 10px;
}

#pesan .p-2 {
  padding: 0.2rem .5rem!important;
}
#pesan .card-block {
  height: 602px;
  padding-left: 0px;
}
#pesan div.ex1
{
  height: 544px;
}

#pesan h3{
  text-decoration: underline;
}
</style>
<div class="row">
    
    <div class="col-md-12">
        <div class="card">
            <div class="row">
                <div class="col-md-3">
                    <!-- Nav tabs -->
                    <div class="tab" id="myTable">
                        <div class="ex1">
                            <button class="tablinks" onclick="openCity(event, 'pesan_baru')" id="defaultOpen">Tulis Pesan</button>
                            <button class="tablinks" onclick="openCity(event, 'pesan')">Data Pesan</button>
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
                                        <label for="exampleInputPassword1">Pesan</label><br>
                                        <textarea class="form-control editor" name="pesan" style="width: 620px; height: 250px"></textarea>
                                      </div>
                                      <input type="submit" class="btn btn-warning" value="KIRIM">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="pesan" class="tabcontent">
                            <div class="card-block">
                                <div class="profiletimeline">
                                    
                                    <div class="sl-item">
                                        <div class="ex1">
                                            
                                            <?php foreach ($ulasan as $ul) { ?>
                                                <!-- <div class="sl-right"> -->
                                                    <!-- <div> -->
                                                      <!-- <b><h3><?= $ul['nama_pegawai'] ?></h3></b> <span class="sl-date"><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></span> -->
                                                      <?php
                                                      $cek_pesan = ''; $nama_pengguna = ''; $tanggal_pesan = '';
                                                      if ($ul['reply'] != '0') {
                                                        $reply = $ul['reply']; 
                                                        $rep = $this->db->query("SELECT a.*,b.nama_pegawai FROM diskusi a LEFT JOIN pegawai b ON a.id_pgw=b.id_pegawai WHERE id_diskusi = '$reply'")->row_array();
                                                        $cek_pesan = $rep['isi'];
                                                        $nama_pengguna = $rep['nama_pegawai'];
                                                        $tanggal_pesan = fdate($rep['create_at'], "HHDDMMYYYY"); ?>
                                                        <!-- <div class="abc">
                                                          <div><b><h5><?= $rep['nama_pegawai'] ?></h5></b>
                                                            <div class="chat-time d-inline-block text-right text-muted"><span class="sl-date"><?= fdate($rep['create_at'], "HHDDMMYYYY"); ?></span></div><p> <?= $rep['isi'] ?> </p>
                                                          </div>
                                                        </div> -->
                                                      <?php } ?>
                                                    <!-- </div> -->
                                                <!-- </div> -->
                                                <div class="card-body">
                                                  <!-- <div class="d-flex mb-5"> -->
                                                    <!-- <div>
                                                      <a href="javascript:void(0)"><img src="../assets/images/users/1.jpg" width="40" class="rounded-circle"></a>
                                                    </div> -->
                                                    <div >
                                                      <h4 class="mb-0"><?php
                                                            if($ul['id_pgw']=='1' OR $ul['id_pgw']=='2'){
                                                              echo 'Admin';
                                                            }else{
                                                              echo $ul['nama_pegawai'];
                                                            }
                                                            ?></h4>
                                                      <small class="text-muted"><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></small>
                                                    </div>
                                                    <br>
                                                  <!-- </div> -->
                                                  <div class="p-2 manas rounded bg-light-info d-inline-block mb-2 text-dark">
                                                    <?php
                                                      if($cek_pesan==NULL OR $cek_pesan==''){
                                                        echo'';
                                                      }
                                                      else{ ?>
                                                        <div class='abc'><b><h5><font color='#6aa84f'><?php
                                                            if($rep['id_pgw']=='1' OR $rep['id_pgw']=='2'){
                                                              echo 'Admin';
                                                            }else{
                                                              echo $rep['nama_pegawai'];
                                                            }
                                                            ?></font></h5></b>
                                                        <!-- <div class="chat-time d-inline-block text-right text-muted"><span class="sl-date"><?= $tanggal_pesan; ?></span></div> -->
                                                        <?= $cek_pesan; ?></div>
                                                    <?php } ?>
                                                    <?= $ul['isi'] ?>
                                                  </div>
                                                  <br><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<?= $ul['id_diskusi'] ?>">Balas</button>&ensp;<a onclick="return confirm('Anda yakin?')" class="btn btn-danger" href="<?= base_url().'admin/Diskusi/hapus_diskusi/'.$ul['id_diskusi'] ?>">Hapus</a><hr>
                                                </div>
                                                <div class="modal fade" id="myModal<?= $ul['id_diskusi'] ?>" role="dialog">
                                                  <div class="modal-dialog">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title"><?php
                                                            if($ul['id_pgw']=='1' OR $ul['id_pgw']=='2'){
                                                              echo 'Admin';
                                                            }else{
                                                              echo $ul['nama_pegawai'];
                                                            }
                                                            ?></h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <form method="post" action="" enctype="multipart/form-data">
                                                        <div class="form-group">
                                                          <label for="exampleInputPassword1">Pesan</label><br>
                                                          <textarea class="form-control editor" name="pesan" style="width: 220px; height: 250px"></textarea>
                                                          <input type="hidden" name="reply" value="<?= $ul['id_diskusi'] ?>">
                                                        </div>
                                                        <input type="submit" class="btn btn-warning" value="KIRIM">
                                                      </form>
                                                      </div>
                                                      <!-- <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                      </div> -->
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
    width: 450,
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