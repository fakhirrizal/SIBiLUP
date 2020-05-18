<aside class="left-sidebar">
    <div class="scroll-sidebar">
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li> <a class="waves-effect waves-dark" href="http://profil.perumahan.pu.go.id/sibilup/" aria-expanded="false"><i class="mdi mdi-home"></i><span class="hide-menu">Home</span></a>
                </li>
                <!---------------------------------------------------------------------------------------------------------->
                <?php
                if($this->session->userdata('admin_id')=='9'){
                    echo'';
                }else{
                ?>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-buffer"></i><span class="hide-menu">Dashboard </span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= base_url()."admin_side/rekap_rp3kp_provinsi" ?>">Penyusunan<br>RP3KP Provinsi</a></li>
                        <li><a href="<?= base_url()."admin_side/rekap_rp3kp_kabkota" ?>">Penyusunan RP3KP<br>Kabupaten/ Kota</a></li>
                        <li><a href="<?= base_url()."admin_side/rekap_pokja_pkp_provinsi" ?>">Pembentukan<br>Pokja PKP Provinsi</a></li>
                        <li><a href="<?= base_url()."admin_side/rekap_pokja_pkp_kabkota" ?>">Pembentukan Pokja PKP<br>Kabupaten/ Kota</a></li>
                        <li><a href="#">Capaian SPM Perumahan</a></li>
                        <li><a href="#">Implementasi PUG</a></li>
                    </ul>
                </li>
                <?php } ?>
                <!---------------------------------------------------------------------------------------------------------->
                <?php if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-inbox"></i><span class="hide-menu">Master </span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= base_url()."admin_side/pengguna" ?>">Pengguna</a></li>
                        <li><a href="#" class="has-arrow">Peta</a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<?php echo site_url('admin_side/data_provinsi'); ?>">Provinsi</a></li>
                                <li><a href="<?php echo site_url('admin_side/data_kabkot'); ?>">Kabupaten/ Kota</a></li>
                            </ul>
                        </li>
                        <hr>
                        <li><a href="<?= base_url()."admin_side/tamu" ?>">Tamu</a></li>
                    </ul>
                </li>
                <?php }else{echo'';} ?>
                <!---------------------------------------------------------------------------------------------------------->
                <!-- <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">Profil Direktorat </span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= base_url()."admin_side/visimisi" ?>">Visi & Misi</a></li>
                        <li><a href="<?= base_url()."admin_side/tupoksi" ?>">Tugas Pokok dan Fungsi</a></li>
                        <li><a href="<?= base_url()."admin_side/struktur" ?>">Struktur Organisasi</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-book-open-variant"></i><span class="hide-menu">Perpustakaan </span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= base_url()."admin/Perpustakaan/regulasi" ?>">Regulasi</a></li>
                        <li><a href="<?= base_url()."admin/Perpustakaan/materi" ?>">Materi</a></li>
                        <li><a href="<?= base_url()."admin/Perpustakaan/modul" ?>">Modul</a></li>
                        <li><a href="<?= base_url()."admin/ujian_ol/soal" ?>">Soal Ujian</a></li>
                        <li><a href="<?= base_url()."admin/Perpustakaan/photo" ?>">Galeri Foto</a></li>
                        <li><a href="<?= base_url()."admin/Perpustakaan/vidio" ?>">Galeri Video</a></li>
                        <?php if ($this->session->userdata('admin_level') >= "3") { ?>
                            <li><a href="<?= base_url()."adm/ikuti_ujian" ?>">Ujian Online</a></li>
                        <?php } else { ?>
                            <li><a href="<?= base_url()."adm/m_ujian" ?>">Ujian Online</a></li>
                        <?php } ?>
                    </ul>
                </li>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin/Perpustakaan/agenda" ?>" aria-expanded="false"><i class="mdi mdi-bulletin-board"></i><span class="hide-menu">Agenda</span></a>
                </li> -->
                <!---------------------------------------------------------------------------------------------------------->
                <?php
                if($this->session->userdata('admin_id')=='9'){
                    echo'';
                }else{
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin/perpustakaan/dokumen" ?>" aria-expanded="false"><i class="mdi mdi-cloud-upload"></i><span class="hide-menu">Unggah Dokumen</span></a>
                </li>
                <?php } ?>
                <!---------------------------------------------------------------------------------------------------------->
                <?php
                if($this->session->userdata('admin_id')=='9'){
                    echo'';
                }else{
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin/diskusi" ?>" aria-expanded="false"><i class="mdi mdi-comment-processing-outline"></i><span class="hide-menu">Diskusi</span></a>
                </li>
                <?php } ?>
                <!---------------------------------------------------------------------------------------------------------->
                <?php
                if($this->session->userdata('admin_id')=='2' OR $this->session->userdata('admin_id')=='1'){
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."diskusi" ?>" aria-expanded="false"><i class="mdi mdi-comment-processing-outline"></i><span class="hide-menu">Diskusi Tamu</span></a>
                </li>
                <?php
                }elseif($this->session->userdata('admin_id')=='9'){
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."diskusi" ?>" aria-expanded="false"><i class="mdi mdi-comment-processing-outline"></i><span class="hide-menu">Diskusi</span></a>
                </li>
                <?php
                }else{
                    echo'';
                }
                ?>
                <!---------------------------------------------------------------------------------------------------------->
                <?php
                if($this->session->userdata('admin_id')=='9'){
                    echo'';
                }else{
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin/hubungi_kami" ?>" aria-expanded="false"><i class="mdi mdi-swap-horizontal"></i><span class="hide-menu">Ruang Konsultasi</span></a>
                </li>
                <?php
                }
                ?>
                <!---------------------------------------------------------------------------------------------------------->
                <?php
                if($this->session->userdata('admin_id')=='2' OR $this->session->userdata('admin_id')=='1'){
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."ruang_konsultasi" ?>" aria-expanded="false"><i class="mdi mdi-swap-horizontal"></i><span class="hide-menu">Ruang Konsultasi Tamu</span></a>
                </li>
                <?php
                }elseif($this->session->userdata('admin_id')=='9'){
                ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."ruang_konsultasi" ?>" aria-expanded="false"><i class="mdi mdi-swap-horizontal"></i><span class="hide-menu">Ruang Konsultasi</span></a>
                </li>
                <?php
                }else{
                    echo'';
                }
                ?>
                <!---------------------------------------------------------------------------------------------------------->
                <?php if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin_side/aspirasi" ?>" aria-expanded="false"><i class="mdi mdi-account-card-details"></i><span class="hide-menu">Hubungi Kami</span></a>
                </li>
                <?php }else{echo'';}?>
                <!---------------------------------------------------------------------------------------------------------->
                <!-- <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin_side/faq" ?>" aria-expanded="false"><i class="mdi mdi-file-document-box"></i><span class="hide-menu">FAQ</span></a>
                </li> -->
                <!---------------------------------------------------------------------------------------------------------->
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."tentang_aplikasi" ?>" aria-expanded="false"><i class="mdi mdi-book-multiple"></i><span class="hide-menu">Tentang Aplikasi</span></a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- <div class="sidebar-footer">
        <a href="" class="link" data-toggle="tooltip" title="Pengaturan"><i class="ti-settings"></i></a>
        <a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
        <a href="<?php echo site_url('Auth/logout'); ?>" class="link" data-toggle="tooltip" title="Keluar"><i class="mdi mdi-power"></i></a> </div> -->
</aside>