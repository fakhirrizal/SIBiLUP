<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="<?php echo base_url(); ?>___/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>___/plugin/fa/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>___/plugin/datatables/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="https://upload.wikimedia.org/wikipedia/id/a/a7/Logo_PU_%28RGB%29.jpg">
    <title>Kementerian Pekerjaan Umum dan Perumahan Rakyat</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?= base_url() ?>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="<?= base_url() ?>assets/plugins/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/plugins/chartist-js/dist/chartist-init.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!--This page css - Morris CSS -->
    <link href="<?= base_url() ?>assets/plugins/c3-master/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <!-- You can change the theme colors from here -->
    <link href="<?= base_url() ?>css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<link href="<?= base_url() ?>css/style.css" rel="stylesheet">
    
<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        
                            <img style="width: 240px;" src="<?= base_url() ?>assets/images/Kementerian-PUPR.png" />
                        </a> 
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>

                        <!-- <li class="nav-item"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li> -->
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <!-- <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search & enter"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li> -->
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <?php if ($this->session->userdata('admin_level') == '1' OR $this->session->userdata('admin_level') == '2') { ?>
                        <li class="nav-item dropdown">
                            <?php $hub = $this->db->query("SELECT COUNT(*) AS jml FROM hubungi_kami WHERE status='0'")->row(); 
                                  $disk = $this->db->query("SELECT COUNT(*) AS jml FROM diskusi WHERE status='0'")->row();  ?>
                            <a class="nav-link dropdown-toggle text-muted text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-message"></i>
                                <div class="<?php if ($hub->jml != 0 OR $disk->jml != 0) { echo "notify"; } ?>"> <span class="heartbit"></span> <span class="point"></span> </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mailbox scale-up">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifikasi</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <?php if ($hub->jml != 0) { ?>
                                            <a href="<?= base_url().'admin/hubungi_kami' ?>">
                                                <div class="btn btn-primary btn-circle"><i class="ti-email"></i></div>
                                                <div class="mail-contnet">
                                                    <!-- <h5>Hubungi Kami</h5> <span class="mail-desc">Ada <?= $hub->jml ?> pesan baru di menu hubungi kami</span> </div> -->
                                                    <h5>Ruang Konsultasi</h5> <span class="mail-desc">Ada pesan baru di menu ruang konsultasi</span> </div>
                                            </a>
                                            <?php } ?>
                                            <?php $hub = $this->db->query("SELECT COUNT(*) AS jml FROM hubungi_kami WHERE status='0'")->row(); 
                                            if ($disk->jml != 0) { ?>
                                            <a href="<?= base_url().'admin/diskusi' ?>">
                                                <div class="btn btn-primary btn-circle"><i class="ti-email"></i></div>
                                                <div class="mail-contnet">
                                                    <!-- <h5>Diskusi</h5> <span class="mail-desc">Ada <?= $disk->jml ?> pesan baru di menu Diskusi</span> </div> -->
                                                    <h5>Diskusi</h5> <span class="mail-desc">Ada pesan baru di menu Diskusi</span> </div>
                                            </a>
                                            <?php } ?>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <?php }else{echo'';}?>
                        <li class="nav-item dropdown">
                            <?php if ($this->session->userdata('foto') == "") {
                                $fotoku = "user.png";
                            } else {
                                $fotoku = $this->session->userdata('foto');
                            } ?>
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<?= base_url()."assets/images/".$fotoku ?>" alt="user" class="profile-pic m-r-10" /><?= $this->session->userdata('admin_nama') ?></a>
                            <div class="dropdown-menu dropdown-menu-right scale-up">
                                <ul class="dropdown-user">
                                    <li>
                                        <div class="dw-user-box">
                                            <div class="u-img"><img src="<?= base_url()."assets/images/".$fotoku ?>" alt="user"></div>
                                            <div class="u-text">
                                                <h4><?= $this->session->userdata('admin_nama') ?></h4></div>
                                        </div>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="<?= base_url()."admin/master/profiles/edit/".$this->session->userdata('admin_konid'); ?>"><i class="ti-user"></i> Pengaturan Profil</a></li>
                                    <li><a href="<?= base_url()."admin/master/akun/edit/".$this->session->userdata('id'); ?>"><i class="ti-settings"></i> Pengaturan Akun</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="<?php echo site_url('Auth/logout'); ?>"><i class="fa fa-power-off"></i> Keluar</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>