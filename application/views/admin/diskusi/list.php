
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
                                                <div class="sl-right">
                                                    <div><b><h3><?= $ul['nama_pegawai'] ?></h3></b> <span class="sl-date"><?= fdate($ul['create_at'], "HHDDMMYYYY"); ?></span>
                                                        <p> <?= $ul['isi'] ?> </p>
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