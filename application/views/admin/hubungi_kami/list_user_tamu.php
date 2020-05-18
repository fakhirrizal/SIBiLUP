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

    /*
    .abc {
    background-color: lightgrey;
    width: 450px;
    border: 2px solid black;
    padding: 5px;
    margin: 2px;
    }
    */

    .abc {
        background-color: #f1f1f1;
        width: 450px;
        border: 2px solid #e2e2e2;
        padding: 5px;
        margin: 2px;
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
    overflow: scroll;
    }

    .tabcontent .profiletimeline {
    margin-left: 0px;
    }

    .card-block ::-webkit-scrollbar {
    width: 10px;
    }

    .manas {
    -webkit-border-radius: 10px;
    -webkit-border-top-right-radius: 0;
    -moz-border-radius: 10px;
    -moz-border-radius-top-right: 0;
    border-radius: 10px;
    border-top-right-radius: 0;
    }
    .manas2 {
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
    .manas2 p {
    margin-bottom: 0px;
    }

    .tabcontent .profiletimeline
    {
    background: linear-gradient(135deg, #70809000 21px, #fbfbfb 22px, #fbfbfb 24px, transparent 24px, transparent 67px, #fbfbfb 67px, #fbfbfb 69px, transparent 69px), linear-gradient(225deg, #70809000 21px, #fbfbfb 22px, #fbfbfb 24px, transparent 24px, transparent 67px, #fbfbfb 67px, #fbfbfb 69px, transparent 69px)0 64px;
        background-color: #70809000;
        background-size: 64px 128px;
        padding: 0px 0px 0px 10px;
    }

    .tabcontent .p-2 {
    padding: 0.2rem .5rem!important;
    }

    .m-t-10.col-md-10 {
    margin-top: unset;
    }

    .mce-tinymce.mce-container.mce-panel{
    width: 100% !important;
    }
</style>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="row">
                <div class="col-md-3">
                    <div class="tab" id="myTable">
                        <div class="ex1">
                            <button class="tablinks" onclick="openCity(event, 'pesan_baru')" id="defaultOpen">Tulis Pesan</button>
                            <button class="tablinks" onclick="openCity(event, 'pesan')">Data Pesan</button>
                        </div>
                    </div>
                </div>
                <?php
                if ($this->input->get('idhub')) {
                  $hubs = $this->input->get('idhub');
                  $rply = $this->db->query("SELECT a.*,b.fullname AS nama_pegawai,b.user_id AS id_pegawai FROM ruang_konsultasi a LEFT JOIN user_profile b ON a.id_pgw=b.user_id WHERE id_hub='$hubs'")->row_array();
                  $replyne = "\* Balasan Untuk Pesan : ".$rply['isi']." */";
                } else {
                  $replyne = "";
                }
                 ?>
                <div class="col-md-9">
                    <div class="tab-content">
                        <div id="pesan_baru" class="tabcontent">
                            <div class="card-block">
                                <div class="profiletimeline">
                                    <form method="post" action="" enctype="multipart/form-data">
                                      <div class="form-group">
                                        <label for="exampleInputPassword1">Pesan</label><br>
                                        <textarea class="form-control editor" name="pesan" style="width: 620px; height: 250px"><?= $replyne ?></textarea>
                                        <?php if ($this->input->get('idhub')) { ?>
                                        <input type="hidden" name="reply" value="<?= $this->input->get('idhub') ?>">
                                        <?php } ?>
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
                        <?php
                          $pt['table']      = "ruang_konsultasi";
                          $pt['type']       = "multiple";
                          $pt['orderby']['column'] = "create_at";
                          $pt['orderby']['sort']   = "DESC";
                          $pt['join']['table']  = "user_profile";
                          $pt['join']['ref']    = "id_pgw";
                          $pt['join']['key']    = "user_id";
                          $pt['condition']['id_pgw'] = $this->session->userdata('id');
                          $pt['column']     = "ruang_konsultasi.*,fullname AS nama_pegawai,user_id AS id_pegawai";
                          $ulasan = $this->Crud_model->get_data($pt); ?>
                        <div id="pesan" class="tabcontent">
                            <div class="card-block">
                                <div class="profiletimeline">
                                    <div class="sl-item">
                                        <div class="ex1">
                                            <?php foreach ($ulasan as $ul) { ?>
                                              <?php if ($ul['penjawab'] != '0') { ?>
                                                <div class="sl-right" align="left">
                                                  <div class="chat-content pl-3 d-inline-block">
                                                    <div><a href="#" class="link ">Admin</a><br> <span class="sl-date "><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></span>
                                                        <?php if ($ul['reply'] != '0') {
                                                        $reply = $ul['reply']; 
                                                          $rep = $this->db->query("SELECT a.*,b.fullname AS nama_pegawai FROM ruang_konsultasi a LEFT JOIN user_profile b ON a.id_pgw=b.user_id WHERE id_hub = '$reply'")->row_array(); ?>
                                                          <div class="abc"><div><b><h5><?= $rep['nama_pegawai'] ?></h5></b> <span class="sl-date"><?= fdate($rep['create_at'], "HHDDMMYYYY"); ?></span><p> <?= $rep['isi'] ?> </p></div></div>
                                                        <?php } ?>
                                                        <p class="m-t-10 " style="text-align: justify;"> <?= $ul['isi'] ?> </p>
                                                        <form action="" method="get">
                                                          <input type="hidden" name="idhub" value="<?= $ul['id_hub'] ?>">
                                                          <input type="hidden" name="id_peg" value="<?= $ul['id_pegawai'] ?>">
                                                          <button type="submit" class="btn btn-info">BALAS</button>
                                                        </form>
                                                    </div>
                                                  </div>
                                                </div><hr>
                                              <?php } else { ?>
                                                <div class="sl-right " align="right" style="margin-right: 10px;">
                                                    <div><a href="#" class="link "><?= $ul['nama_pegawai'] ?></a><br> <span class="sl-date "><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></span>
                                                      <?php if ($ul['reply'] != '0') {
                                                        $reply = $ul['reply']; 
                                                          $rep = $this->db->query("SELECT a.*,b.fullname AS nama_pegawai FROM ruang_konsultasi a LEFT JOIN user_profile b ON a.id_pgw=b.user_id WHERE id_hub = '$reply'")->row_array(); ?>
                                                          <div class="abc"><div><b><h5><?php
                                                            if($rep['penjawab']=='1' OR $rep['penjawab']=='2'){
                                                              echo 'Admin';
                                                            }else{
                                                              echo $rep['nama_pegawai'];
                                                            }
                                                            ?></h5></b> <span class="sl-date"><?= fdate($rep['create_at'], "HHDDMMYYYY"); ?></span><p> <?= $rep['isi'] ?> </p></div></div>
                                                        <?php } ?>
                                                        <p class="m-t-10 " > <?= $ul['isi'] ?> </p>
                                                    </div>
                                                </div><hr>
                                            <?php } } ?>
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