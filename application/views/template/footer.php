<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 col-8 align-self-center">
                <h3 class="text-themecolor"><?= $title_page ?></h3>
                <?php $categories = '';
                $data = explode(",", $breadcrumb);
                foreach($data as $dt) {
                    $dt = trim($dt);
                    $categories .= '<li class="breadcrumb-item active">' . $dt . '</li>';
                } ?>
                <ol class="breadcrumb">
                    <?= $categories ?>
                </ol>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <!-- Row -->
        <?php
        if(isset($load)){
            foreach ($load as $module) {
                $this->load->view($module,$data);   
            }   
        } ?>
        
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
    </div>
<footer class="footer"> © 2019 Kementerian Pekerjaan Umum dan Perumahan Rakyat - Material Pro Admin by wrappixel.com </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<?= base_url() ?>assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?= base_url() ?>assets/plugins/bootstrap/js/tether.min.js"></script>
    <script src="<?= base_url() ?>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="<?= base_url() ?>js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="<?= base_url() ?>js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<?= base_url() ?>js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="<?= base_url() ?>assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="<?= base_url() ?>js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!-- chartist chart -->
    <script src="<?= base_url() ?>assets/plugins/chartist-js/dist/chartist.min.js"></script>
    <script src="<?= base_url() ?>assets/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!--c3 JavaScript -->
    <script src="<?= base_url() ?>assets/plugins/d3/d3.min.js"></script>
    <script src="<?= base_url() ?>assets/plugins/c3-master/c3.min.js"></script>
    <!-- Chart JS -->
    <script src="<?= base_url() ?>js/dashboard1.js"></script>
</body>

</html>
