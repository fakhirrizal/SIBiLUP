<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li> <a class="waves-effect waves-dark" href="<?= base_url()."admin_side/beranda" ?>" aria-expanded="false"><i class="mdi mdi-home"></i><span class="hide-menu">Beranda</span></a>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-inbox"></i><span class="hide-menu">Master </span></a>
                    <ul aria-expanded="false" class="collapse">
                        <li><a href="<?= base_url()."admin_side/pengguna" ?>">Pengguna</a></li>
                    </ul>
                </li>
                <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account-check"></i><span class="hide-menu">Profil Direktorat </span></a>
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
                </li>
                <li> <a class="waves-effect waves-dark" href="pages-blank.html" aria-expanded="false"><i class="mdi mdi-comment-processing-outline"></i><span class="hide-menu">Diskusi</span></a>
                </li>
                <li> <a class="waves-effect waves-dark" href="pages-error-404.html" aria-expanded="false"><i class="mdi mdi-help-circle"></i><span class="hide-menu">Hubungi Kami</span></a>
                </li>
                <li> <a class="waves-effect waves-dark" href="pages-blank.html" aria-expanded="false"><i class="mdi mdi-file-document-box"></i><span class="hide-menu">FAQ</span></a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
    <!-- Bottom points-->
    <!-- <div class="sidebar-footer">
        <a href="" class="link" data-toggle="tooltip" title="Pengaturan"><i class="ti-settings"></i></a>
        <a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
        <a href="<?php echo site_url('Auth/logout'); ?>" class="link" data-toggle="tooltip" title="Keluar"><i class="mdi mdi-power"></i></a> </div> -->
    <!-- End Bottom points-->
</aside>