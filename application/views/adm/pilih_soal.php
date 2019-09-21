<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Dashboard - <?php echo $this->config->item('nama_aplikasi')." ".$this->config->item('versi'); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
</head>
<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script>
    function check_uncheck_checkbox(isChecked) {
      if(isChecked) {
        $('input[id="language"]').each(function() { 
          this.checked = true; 
        });
      } else {
        $('input[id="language"]').each(function() {
          this.checked = false;
        });
      }
    }
</script>
<body>
<div class="se-pre-con"></div>

<div class="row">
            <!-- Column -->
  <div class="col-lg-12 col-md-12">
    <div class="card">
        <div class="card-block">
          <form method="get" action="">
          <div class="row">
            <div class="col-md-3"><label>Pilih Modul</label>
              <select name="modul" class="form-control">
                <option>-Pilih Modul-</option>
                <?php foreach ($modul as $m) {?>
                  <option value="<?= $m->id_modul ?>" <?php if ($m->id_modul == $this->input->get('modul')) { echo "selected"; } ?>><?= $m->judul ?></option>
                <?php } ?>
              </select></div>
            <div class="col-md-3">
              <label> </label><br>
              <input type="submit" value="FILTER" class="btn btn-primary"></div>
          </div> 
          </form><br>
            <div class="row">
              <form method="post" action="<?= base_url()."adm/simpan_soal" ?>">
              <table class="table table-bordered" id="datatabedl" style="width: 1000px">
                <thead>
                  <tr>
                    <th width="15%"><input type="checkbox" name="checkall" id="checkall" onClick="check_uncheck_checkbox(this.checked);" />Pilih Semua</th>
                    <th width="5%">No</th>
                    <th>Soal</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 0; foreach ($soal as $s) { ?>
                  <input type="hidden" name="id_modul" value="<?= $this->input->get('modul') ?>">
                  <input type="hidden" name="id_tes" value="<?= $this->uri->segment(3) ?>">
                  <tr>
                    <td align="center"><input type="checkbox" name="soal[]" id="language" value="<?= $s->id ?>"></td>
                    <td><?= ++$no ?></td>
                    <td style="text-align: justify;"><?= $s->soal ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="3"><input type="submit" name="simpan" value="SIMPAN" class="btn btn-primary"></td>
                  </tr>
                </tfoot>
              </table>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>