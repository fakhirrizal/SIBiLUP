<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function cek_action($crud){
    $crud->unset_delete();
}

function get_sort_article($sort,$blog){
    
    if ($sort == "new") {
        $blog['orderby']['column'] = 'tgl';
        $blog['orderby']['sort'] = "ASC";
    }elseif ($sort == "last") {
        $blog['orderby']['column'] = 'tgl';
        $blog['orderby']['sort'] = "DESC";
    }elseif($sort == "hot"){
        $blog['orderby']['column'] = 'views';
        $blog['orderby']['sort'] = "DESC";
    }

    return $blog;
}

function get_module_config($id){
    $ci = &get_instance();

    $lm['table'] = "ms_layout_module";
    $lm['type'] = "single";
    $lm['condition']['id_lym'] = $id;
    $lm['column'] = "config";
    $config = $ci->crud_model->get_data($lm);

    return unserialize($config['config']);
}

//ROLE ACCESS
function cek_role(){
    $ci = &get_instance();
    $url = $ci->uri->segment(1)."/".$ci->uri->segment(2);

    $mn['table'] = "ms_menuadm";
    $mn['type'] = "single";
    $mn['like']['link'] = $url;
    $menu = $ci->crud_model->get_data($mn);

    $user = $ci->auth_model->get_userdata();    
    $level = $user['level_usr'];

    if (count($menu) != 0) {
        if ($user['level_usr'] != "00") {
            if (stristr($menu['role'],$level) == FALSE) {
              redirect(base_url('admin'),"refresh");
            }
        }
    }
}

function role_access($crud){
    $ci = &get_instance();
    $url = $ci->uri->segment(1)."/".$ci->uri->segment(2);

    $mn['table'] = "ms_menuadm";
    $mn['type'] = "single";
    $mn['like']['link'] = $url;
    $mn['join']['table'] = "tb_role";
    $mn['join']['ref']= "idmenu_role";
    $mn['join']['key']= "id";
    $menu = $ci->crud_model->get_data($mn);

    $user = $ci->auth_model->get_userdata();   
    $level = $user['level_usr'];

    if ($menu['c']=="0") {
        $crud->unset_add();
    }
    if ($menu['u'] == "0") {
        $crud->unset_edit();
    }
    if ($menu['d'] == "0") {
        $crud->unset_delete();
    }

}

// MENU
function get_linkmenu($type){

    $okee = &get_instance();
    $cek['table']                          = "smt_menu";
    $cek['type']                           = "single";
    $cek['join']['table']                  = "ms_type";
    $cek['join']['ref']                    = "ms_type.id_type";
    $cek['join']['key']                    = "smt_menu.type";
    $cek['condition']['ms_type.method']            = $type;
    $dcek = $okee->crud_model->get_data($cek);
    return $dcek['link'];

}

function get_typemenu($link){

    $okee = &get_instance();
    $cek['table']                          = "smt_menu";
    $cek['type']                           = "single";
    $cek['join']['table']                  = "ms_type";
    $cek['join']['ref']                    = "ms_type.id_type";
    $cek['join']['key']                    = "smt_menu.type";
    $cek['condition']['smt_menu.link']     = $link;
    $dcek = $okee->crud_model->get_data($cek);
    return $dcek['method'];

}

//redirect halaman
function direct($link)
{
    return "<script>document.location.href='".base_url().$link."'</script>";
}

function bahasa()
{
    $ci = get_instance();
    $lang = $ci->session->userdata('language');

    return $lang;
}

function get_bahasa()
{
    $ci = get_instance();
    $lang = $ci->db->query("SELECT bahasa from smt_setting")->row_array();

    if ($lang['bahasa'] == "single") {
        $bahasa = TRUE;
    }else{
        $bahasa = FALSE;
    }

    return $bahasa;
}

//CREATE EASY CONTROLLER
function create_new_page($page_name, $class_name, $controller_name){

      // Create Controller
      $controller = fopen(APPPATH.'controllers/'.$controller_name.'.php', "a")
      or die("Unable to open file!");

      $controller_content ="<?php
      defined('BASEPATH') OR exit('No direct script access allowed');

      class $class_name extends CI_Controller  {

        public function __construct()
        {
            parent::__construct();
        }
        
        public function index()
        {
            \$data['site_title'] = '$page_name';
            \$this->load->view('content',\$data);
        }

       }";
      fwrite($controller, "\n". $controller_content);
      fclose($controller);
}

function getLayout($tipe){
    switch ($tipe) {
            case 'blog':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/page-title/page-title-default")
                        ),
                        array(
                            "type"=>"1","module"=>array("module/blog/blog-list-default")
                        )
                    );
            break;
    }
}

//ICON FA
function icon()
{
    $icon = 
        array(
            'fa fa-facebook'=>'Facebook default', 
            'fa fa-facebook-f'=>'Facebook Alias', 
            'fa fa-facebook-official'=>'Facebook Official', 
            'fa fa-facebook-square'=>'Facebook Square', 

            'fa fa-twitter'=>'Twitter default', 
            'fa fa-twitter-square'=>'Twitter Square', 

            'fa fa-google-plus' => 'Google Plus',

            'fa fa-instagram' => 'Instagram',

            'fa fa-linkedin' => 'Linkedin',
            'fa fa-linkedin-square' => 'Linkedin Square'
        );
    return $icon;
}

function get_img($news_content = NULL){
 $dom=new DOMDocument();

 if ($news_content == "") {
     return NULL;
 }

 libxml_use_internal_errors(true);
 $dom->loadHTML($news_content);
 libxml_use_internal_errors(false);
 $img_nodes=$dom->getElementsByTagName('img');

 $img_link = NULL;
 foreach($img_nodes as $link) {
        $img_link=$link->getAttribute('src');
 }

  return $img_link;
}

function kirim_email($ke,$subject,$content){
    $okee = &get_instance();
    
    $config['protocol']     = 'smtp';
    $config['smtp_host']    = 'engineersasgard.com';
    $config['smtp_port']    = '25';
    $config['smtp_user']    = 'system@engineersasgard.com';
    $config['smtp_pass']    = 'Wfjhm05E';
    $config['charset']      = 'iso-8859-1';
    // $config['startssl']     = true;
    $config['newline']      = "\r\n";
    $config['mailtype']     = 'html'; // or html

    $okee->email->initialize($config);
    $okee->email->from('system@engineersasgard.com', "System Engineers Asgard");
    $okee->email->to($ke);

    $okee->email->subject($subject);
    $okee->email->message($content);
    if($okee->email->send()){
        return "Success";
    } else {
        return "Fail";
    }
}

function kirim_email_invoice($kodetrans,$status,$subject,$ke){
    $okee = &get_instance();
    $transaksi = $okee->Referensi_model->get_detiltransadm($kodetrans);
    $dettrans['table']      = "smt_transactiondetail";
    $dettrans['type']       = "multiple";
    $dettrans['condition']['kode_trans_detail'] = $transaksi['kode_trans'];
    $dettrans['column'] = "*,SUM(charge) as totalcharge, COUNT(id_product) as jumlah";
    $dettrans['groupby'] = "id_product";
    $dattd = $okee->crud_model->get_data($dettrans);
    $total =0;
    $detailtable = "";
    $nomerr = 1;
    foreach ($dattd as $datdetail) {
        $p = "";
        $p['table'] = "smt_product";
        $p['condition']['smt_product.id_prd'] = $datdetail['id_product'];
        $p['type'] = "single";
        $p['join']['table'] = "smt_preorder";
        $p['join']['key']   = "smt_preorder.id_prd";
        $p['join']['ref']   = "smt_product.id_prd";
        $dpro = $okee->crud_model->get_data($p);

        $detailtable .= '<tr>
                            <td align="center">'.$nomerr.'</td>
                            <td>'.$dpro['nama_prd'].'</td>
                            <td>Rp.'.number_format($datdetail['harga'],0,",",".").'</td>
                            <td>'.$datdetail['jumlah'].'</td>
                            <td>Rp. '.number_format($datdetail['totalcharge'],0,",",".").'</td>
                            <td>Rp. '.number_format($datdetail['potonganitem'],0,",",".").'</td>
                            <td>Rp. '.number_format((($datdetail['jumlah']*$datdetail['harga'])+$datdetail['totalcharge'])-($datdetail['potonganitem']*$datdetail['jumlah']),0,",",".").'</td>
                        </tr>';
        $nomerr++;
    }
    chmod(FCPATH."/templateemail/INVOICE.tpl",0777);
    $emailtemplate = file_get_contents(FCPATH."/templateemail/INVOICE.tpl");
    $emailtemplate = str_replace('@@KODETRANS@@', $kodetrans, $emailtemplate);
    $emailtemplate = str_replace('@@DETAIL@@', $detailtable, $emailtemplate);
    $emailtemplate = str_replace('@@SERVICE@@',  " ".$transaksi['kurir']." ".$transaksi['servis']." ", $emailtemplate);
    $emailtemplate = str_replace('@@BIAYASERVICE@@', "Rp.".number_format($transaksi['biaya_pengiriman'],0,",","."), $emailtemplate);
    if($transaksi['potongan'] != 0){
        $tablevoucher = "<tr><td colspan='6'>Voucher (".trim($transaksi['kdvoucher']).")</td><td>Rp.".number_format($transaksi['potongan'],0,",",".")."<td></tr>";
        $emailtemplate = str_replace('@@VOUCHER@@', $tablevoucher, $emailtemplate);   
    } else {
        $emailtemplate = str_replace('@@VOUCHER@@', "", $emailtemplate);   
    }
    if($transaksi['pembayaran'] == 1){
        $totale = $transaksi['total_bayar'];
    } else {
        $cumatotal = $transaksi['total_bayar']-$transaksi['kode_unik'];
        $totale = ($cumatotal/$transaksi['pembayaran'])+$transaksi['kode_unik'];
    }
    $emailtemplate = str_replace('@@TOTALTRANSAKSI@@', "Rp.".number_format($totale,0,",","."), $emailtemplate);   
    $emailtemplate = str_replace('@@STATUS@@', $status, $emailtemplate);
    $emailtemplate = str_replace('@@NAMA@@', $transaksi['nama_mem'], $emailtemplate);
    $kontak = $okee->Referensi_model->get_contact();

    kirim_email($ke,$subject,$emailtemplate);
}
function url_rajaongkir(){
    $url = "http://api.rajaongkir.com/starter/";
    return $url;
}
function displayArray($input)
{
    return implode(
        ', <br/>',
        array_map(
            function ($v, $k) {
                return sprintf("%s => <strong>\'%s\'</strong>", $k, $v);
            },
            $input,
            array_keys($input)
        )
    );
}

function getaLayout($tipe){
    /*
    TYPE :
    1. 1c = 1 row container
    2. 1 = 1 row full width
    3. 2/2c = 1 row 2 column / container
    4. 2/2c = 1 row 2 column / container

    SLIDER : 
    slider Revolution : 
    1. full screen : module/sliders/slider_revolution/full_screen
    2. full width : module/sliders/slider_revolution/full_width
    3. Kenburn : module/sliders/slider_revolution/kenburn

    Slider Flex :
    1. full width : module/sliders/slider_flex/full_width
    2. boxed : module/sliders/slider_flex/boxed
    */
    switch ($tipe) {
        case 'home':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/sliders/slider_revolution/kenburn")
                        )
                    );
            break;
            case 'blog':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/blog")
                        )
                    );
            break;
            case 'forgotpassword':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/forgotpassword")
                        )
                    );
            break;
            case 'blogview':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        // array(
                        //     "type"=>"1","module"=>array("module/slideshow")
                        // ),
                        array(
                            "type"=>"1c","module"=>array("module/blogview")
                        )
                    );
            break;
            case 'preorder':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/preorder")
                        )
                    );
            break;
            case 'productview':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1","module"=>array("module/product-view")
                        ),
                         array(
                            "type"=>"1c","module"=>array("module/related-product")
                        )
                    );
            break;
            case 'cart2':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                            
                        ),
                        // array(
                        //      "type"=>"1c","module"=>array("module/product-view1")
                            
                        // ),
                        array(
                            "type"=>"1","module"=>array("module/cart")
                        )
                    );
            break;
            case'search':
            	return  array(
            		
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        // array(
                        //     "type"=>"1","module"=>array("module/slideshow")
                        // ),
                        // array(
                        //     "type"=>"1c","module"=>array("module/banner")
                        // ),
                        // array(
                        //     "type"=>"1c","module"=>array("module/instagram")
                        // ),
                        array(
                            "type"=>"1c","module"=>array("module/preorder")
                        )
                    );
            break;
            case 'cart':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1","module"=>array("module/carti")
                        )
                    );
            break;
             case 'verivy':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1","module"=>array("module/verivy")
                        )
                    );
            break;
            case 'shipping':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/shipping")
                        )
                    );
            break;
            case 'shipping2':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1","module"=>array("module/shipping2")
                        )
                    );
            break;
            case 'finishcart':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/finishcart")
                        )
                    );
            break;
            case 'wishlist':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/wishlist")
                        )
                    );
            break;
            case 'confirm_payment':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"1c","module"=>array("module/confirm_payment")
                        )
                    );
            break;

            case 'profile':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"3c","module"=>array("module/membermenu","module/membercontent")
                        )
                    );
            break;
            case 'history_member':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"3c","module"=>array("module/membermenu","module/memberorder")
                        )
                    );
            break;
            case 'history_detail':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"3c","module"=>array("module/membermenu","module/orderdetail")
                        )
                    );
            break;
            case 'konfirmasi':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"3c","module"=>array("module/membermenu","module/konfirmasi")
                        )
                    );
            break;
            case 'pass':
            return  array(
                        array(
                            "type"=>"1","module"=>array("module/bread")
                        ),
                        array(
                            "type"=>"3c","module"=>array("module/membermenu","module/memberpass")
                        )
                    );
            break;
            case 'product':
            return  array(
                        array(
                            "type"=>"1c","module"=>array("module/product")
                        )
                    );
            break;
            case 'edittrans':
            return  array(
                        array(
                            "type"=>"3c","module"=>array("crud/edittrans")
                        )
                    );
            break;
        
        default:
            # code...
            break;
    }
}

function get_status_transaksi($status,$pembayaran = null,$kodetrans = null){
    if($status=='S'){
        return "<span style='color:#31b0d5;font-weight:bold'><i class='fa fa-check-square-o'></i> Complete </span>";
    }else if($status=='K'){
        return "<span style='color:#7dc67b;font-weight:bold'><i class='fa fa-truck'></i> Pengiriman </span>";
    }else if($status=='B'){
        if($pembayaran == 1){
            return "<span style='color:#31b0d5;font-weight:bold'><i class='fa fa-money'></i> Pay Success </span>";
        } else {
            $okee = &get_instance();
            $cek['table']                          = "smt_konfirmasi";
            $cek['type']                           = "multiple";
            $cek['condition']['kode_trans_konfir'] = $kodetrans;
            $cek['condition']['status']            = "terkonfirm";
            $dcek = $okee->crud_model->get_data($cek);

            return "<span style='color:#31b0d5;font-weight:bold'><i class='fa fa-money'></i> Pay ".count($dcek)." Success</span>";
        }
    }else if($status=='C'){
        return "<span style='color:#d9534f;font-weight:bold'><i class='fa fa-ban'></i> Batal </span>";
    }else if($status=='P'){
        $okee = &get_instance();
            $ceks['table']                          = "smt_transaction";
            $ceks['type']                           = "multiple";
            $ceks['condition']['kode_trans']        = $kodetrans;
            $dceks = $okee->crud_model->get_data($ceks);
            $tgl = $dceks['tgl'];
            $telat = date('Y-m-d H:i:s', strtotime($tgl . " +1 days"));
            $ini = date('Y-m-d H:i:s');

            if ($telat < $ini) {
            return "<span style='color:#d9534f;font-weight:bold'><i class='fa fa-ban'></i> Batal </span>";
            } else {    
            return "<span style='color:#000000'><i class='fa fa-ban'></i> Pending </span>";
            }
    }

}

function getUserIP()
{
    // $client  = @$_SERVER['HTTP_CLIENT_IP'];
    // $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
    // $remote  = $_SERVER['REMOTE_ADDR'];

    // if(filter_var($client, FILTER_VALIDATE_IP))
    // {
    //     $ip = $client;
    // }
    // elseif(filter_var($forward, FILTER_VALIDATE_IP))
    // {
    //     $ip = $forward;
    // }
    // else
    // {
    //     $ip = $remote;
    // }

    // return $ip;
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

function getOS() { 
    $user_agent = $_SERVER['HTTP_USER_AGENT'];
    $os_platform    =   "Unknown OS Platform";
    $os_array       =   array(
                            '/windows nt 10/i'     =>  'Windows 10',
                            '/windows nt 6.3/i'     =>  'Windows 8.1',
                            '/windows nt 6.2/i'     =>  'Windows 8',
                            '/windows nt 6.1/i'     =>  'Windows 7',
                            '/windows nt 6.0/i'     =>  'Windows Vista',
                            '/windows nt 5.2/i'     =>  'Windows Server 2003/XP x64',
                            '/windows nt 5.1/i'     =>  'Windows XP',
                            '/windows xp/i'         =>  'Windows XP',
                            '/windows nt 5.0/i'     =>  'Windows 2000',
                            '/windows me/i'         =>  'Windows ME',
                            '/win98/i'              =>  'Windows 98',
                            '/win95/i'              =>  'Windows 95',
                            '/win16/i'              =>  'Windows 3.11',
                            '/macintosh|mac os x/i' =>  'Mac OS X',
                            '/mac_powerpc/i'        =>  'Mac OS 9',
                            '/linux/i'              =>  'Linux',
                            '/ubuntu/i'             =>  'Ubuntu',
                            '/iphone/i'             =>  'iPhone',
                            '/ipod/i'               =>  'iPod',
                            '/ipad/i'               =>  'iPad',
                            '/android/i'            =>  'Android',
                            '/blackberry/i'         =>  'BlackBerry',
                            '/webos/i'              =>  'Mobile'
                        );

    foreach ($os_array as $regex => $value) { 
        if (preg_match($regex, $user_agent)) {
            $os_platform    =   $value;
        }
    }   
    return $os_platform;
}

function getBrowser() {
    $user_agent = $_SERVER['HTTP_USER_AGENT'];
    $browser        =   "Unknown Browser";
    $browser_array  =   array(
                            '/msie/i'       =>  'Internet Explorer',
                            '/firefox/i'    =>  'Firefox',
                            '/safari/i'     =>  'Safari',
                            '/chrome/i'     =>  'Chrome',
                            '/edge/i'       =>  'Edge',
                            '/opera/i'      =>  'Opera',
                            '/netscape/i'   =>  'Netscape',
                            '/maxthon/i'    =>  'Maxthon',
                            '/konqueror/i'  =>  'Konqueror',
                            '/mobile/i'     =>  'Handheld Browser'
                        );

    foreach ($browser_array as $regex => $value) { 
        if (preg_match($regex, $user_agent)) {
            $browser    =   $value;
        }
    }
    return $browser;
}

function PasswordEncryption ($key){
	return md5(sha1(md5(md5(sha1($key)))));
}

function romawi($integer, $upcase = true) 
{ 
    $table = array('M'=>1000, 'CM'=>900, 'D'=>500, 'CD'=>400, 'C'=>100, 'XC'=>90, 'L'=>50, 'XL'=>40, 'X'=>10, 'IX'=>9, 'V'=>5, 'IV'=>4, 'I'=>1); 
    $return = ''; 
    while($integer > 0) 
    { 
        foreach($table as $rom=>$arb) 
        { 
            if($integer >= $arb) 
            { 
                $integer -= $arb; 
                $return .= $rom; 
                break; 
            } 
        } 
    } 

    return $return; 
} 
function terbilang($x){
  $abil = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
  if ($x < 12)
    return " " . $abil[$x];
  elseif ($x < 20)
    return terbilang($x - 10) . " belas";
  elseif ($x < 100)
    return terbilang($x / 10) . " Puluh" . terbilang($x % 10);
  elseif ($x < 200)
    return " Seratus" . terbilang($x - 100);
  elseif ($x < 1000)
    return terbilang($x / 100) . " Ratus" . terbilang($x % 100);
  elseif ($x < 2000)
    return " Seribu" . terbilang($x - 1000);
  elseif ($x < 1000000)
    return terbilang($x / 1000) . " Ribu" . terbilang($x % 1000);
  elseif ($x < 1000000000)
    return terbilang($x / 1000000) . " Juta" . terbilang($x % 1000000);
}

function fdate ($value,$format) {
	if($value != ""){
		list($thn,$bln,$tgl) = explode("-",$value);

		switch ($format) {
			case "DDMMYYYY" : 
				$return = $tgl." ".fbulan($bln)." ".$thn;
			break;
			case "DD" : 
				$return = $tgl;
			break;
			case "MM" : 
				$return = $bln;
			break;
			case "YYYYY" : 
				$return = $thn;
			break;
			case "mm" : 
				$return = fbulan($bln);
			break;
			case "HHDDMMYYYY" :
				$jam = explode(" ",$value)[1];
				$tgl = explode(" ",$tgl)[0];
				list($H,$M,$S) = explode(":",$jam); 
				$return = $tgl." ".fbulan($bln)." ".$thn." | ".$H.":".$M;
			break;
		
		}
	} else {
		$return = "";
	}
	return $return;
}
function random_string($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
function clear_html ($url) {
		$url = strip_tags($url);
		$url = addslashes($url);
		return $url;
	}
function create_link ($url) {
	$url = strip_tags($url);
	$url = str_replace(" ","-",$url);
	$url = str_replace("!","",$url);
	$url = str_replace("@","",$url);
	$url = str_replace("#","",$url);
	$url = str_replace("$","",$url);
	$url = str_replace("%","",$url);
	$url = str_replace("^","",$url);
	$url = str_replace("&","",$url);
	$url = str_replace("*","",$url);
	$url = str_replace("(","",$url);
	$url = str_replace(")","",$url);
	$url = str_replace("_","",$url);
	$url = str_replace("+","",$url);
	$url = str_replace("=","",$url);
	$url = str_replace("{","",$url);
	$url = str_replace("}","",$url);
	$url = str_replace("[","",$url);
	$url = str_replace("]","",$url);
	$url = str_replace("|","",$url);
	$url = str_replace('"',"",$url);
	$url = str_replace(";","",$url);
	$url = str_replace(">","",$url);
	$url = str_replace('<',"",$url);
	$url = str_replace("?","",$url);
	$url = str_replace("/","",$url);
	$url = str_replace('~',"",$url);
	$url = str_replace("`","",$url);
	$url = str_replace(".","",$url);
	$url = str_replace(",","",$url);
	$url = str_replace(":","",$url);
    $url = str_replace("'","",$url);
	$url = addslashes($url);
    $url = strtolower($url);
	return $url;
}
function delete_pictt($source){
    if(file_exists("./images/".$source)){
        unlink("./images/".$source);
        unlink("./images/medium-".$source);
        unlink("./images/small-".$source);
    }

}
function fbulan ($bulan) {
		if ($bulan=="01") { $bln="Januari"; } else if ($bulan=="02") { $bln="Februari"; } 
		else if ($bulan=="03") { $bln="Maret"; } else if ($bulan=="04") { $bln="April"; } 
		else if ($bulan=="05") { $bln="Mei"; } else if ($bulan=="06") { $bln="Juni"; } 
		else if ($bulan=="07") { $bln="Juli"; } else if ($bulan=="08") { $bln="Agustus"; } 
		else if ($bulan=="09") { $bln="September"; } else if ($bulan=="10") { $bln="Oktober"; } 
		else if ($bulan=="11") { $bln="November"; } else if ($bulan=="12") { $bln="Desember"; }
		else { $bln = ""; }
		return $bln;
	}

function paging ($domain,$jumhal,$linkhal,$page) { ?>
	<ul class="pagination col s12 center"><?php
	$urlasal = $domain.$linkhal;
	if ($page>1) { 
		$prev=$page-1; ?><li class="waves-effect"><a href="<?php echo $urlasal;?>/p/<?php echo $prev;?>"><i class="material-icons">chevron_left</i></a></li>  <?php
	} 

	$sebakhir=$jumhal-1;
	if ($jumhal<=3) { 
		$awal=1; $akhir=$jumhal;
	}
	else {
		if ($page==1) { $awal=1; $akhir=$page+2; }
		elseif ($page==2) { $awal=1; $akhir=$page+2; }
		elseif ($page==$jumhal) { $awal=$page-2; $akhir=$jumhal; }
		elseif ($page==$sebakhir) { $awal=$page-2; $akhir=$jumhal; }
		else { $awal=$page-2; $akhir=$page+2; }
	}
	for ($i=$awal; $i<=$akhir; $i++) {
		if ($i!=$page) { ?><li class="waves-effect"><a href="<?php echo $urlasal;?>/p/<?php echo $i;?>"><?php echo $i;?></a></li> <?php }  
		else { ?><li class="active"><a href="#"><?php echo $i;?></a></li> <?php } 
	}
	if ($page<$jumhal){ 
		$next=$page+1; 
		?> <li class="waves-effect"><a href="<?php echo $urlasal;?>/p/<?php echo $next;?>"><i class="material-icons">chevron_right</i></a></li><?php
	} ?>
    </ul>
    <?php
}

function hari($tgl) {  
	$day=strtotime($tgl);
	$n=date("N",$day);
	if($n==1){
		$hari='Senin';
	}else if($n==2){
		$hari='Selasa';
	}else if($n==3){
		$hari='Rabu';
	}else if($n==4){
		$hari='Kamis';
	}else if($n==5){
		$hari='Jumat';
	}else if($n==6){
		$hari='Sabtu';
	}else{
		$hari='Minggu';
	}
	return $hari;
}
 function config_uploadimg(){
        $config['upload_path'] = './images/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = '1024';
        $config['encrypt_name'] = TRUE;
        return $config;
    }
function compres_img_medium($imagedata){
    $okee = &get_instance();
    $resize_conf = array(
        // it's something like "/full/path/to/the/image.jpg" maybe
        'source_image'  => $imagedata['full_path'],
        // and it's "/full/path/to/the/" + "thumb_" + "image.jpg
        // or you can use 'create_thumbs' => true option instead
        'new_image'     => $imagedata['file_path'].'medium-'.$imagedata['file_name'],
        'width'         => 300,
        'height'        => (300/$imagedata['image_width'])*$imagedata['image_height']
        );

    // initializing
    $okee->image_lib->initialize($resize_conf);
    $okee->image_lib->resize();
}

function resize_img_medium($imagedata){
    $okee = &get_instance();
    $resize_conf = array(
        // it's something like "/full/path/to/the/image.jpg" maybe
        'source_image'  => $imagedata['full_path'],
        // and it's "/full/path/to/the/" + "thumb_" + "image.jpg
        // or you can use 'create_thumbs' => true option instead
        'new_image'     => $imagedata['file_path'].'medium-'.$imagedata['file_name'],
        'width'         => 300,
        'height'        => (300/$imagedata['image_width'])*$imagedata['image_height']
        );

    // initializing
    $okee->image_lib->initialize($resize_conf);
    $okee->image_lib->resize();
}

function compres_img_small($imagedata){
    $okee = &get_instance();
    $resize_conf = array(
        // it's something like "/full/path/to/the/image.jpg" maybe
        'source_image'  => $imagedata['full_path'],
        // and it's "/full/path/to/the/" + "thumb_" + "image.jpg
        // or you can use 'create_thumbs' => true option instead
        'new_image'     => $imagedata['file_path'].'small-'.$imagedata['file_name'],
        'width'         => 150,
        'height'        => (150/$imagedata['image_width'])*$imagedata['image_height']
        );

    // initializing
    $okee->image_lib->initialize($resize_conf);
    $okee->image_lib->resize();
}

function j($data) {
    header('Content-Type: application/json');
    echo json_encode($data);
}

function cek_hakakses($arr_yg_boleh_akses, $userid) {
    if (!in_array($userid, $arr_yg_boleh_akses)) {
        redirect('adm');
    }
}

function obj_to_array($obj, $pilih) {
    $pilihpc    = explode(",", $pilih);
    $array      = array(""=>"-");

    foreach ($obj as $o) {
        $xx = $pilihpc[0];
        $x = $o->$xx;
        $y = $pilihpc[1];

        $array[$x] = $o->$y; 
    }

    return $array;
}

function obj_to_array_soal($obj, $pilih) {
    $pilihpc    = explode(",", $pilih);
    $array      = array(""=>"-");

    foreach ($obj as $o) {
        $xx = $pilihpc[0];
        $x = $o->$xx;
        $y = $pilihpc[1];
        $z = $pilihpc[2];

        $array[$x] = $o->$z." (".$o->$y.")"; 
    }

    return $array;
}

function gen_menu() {
    $CI     =& get_instance();
    $sess_level = $CI->session->userdata('admin_level');
    $url = $CI->uri->segment(2);

    $menu = array();

    if ($sess_level == "guru") {
      $menu = array(
                array("icon"=>"dashboard", "url"=>"", "text"=>"Dashboard"),
                array("icon"=>"list-alt", "url"=>"m_soal", "text"=>"Soal"),
                array("icon"=>"file", "url"=>"m_ujian", "text"=>"Ujian"),
                array("icon"=>"file", "url"=>"h_ujian", "text"=>"Hasil Ujian"),
              );
    } else if ($sess_level == "siswa") {
      $menu = array(
                array("icon"=>"dashboard", "url"=>"", "text"=>"Dashboard"),
                array("icon"=>"file", "url"=>"ikuti_ujian", "text"=>"Ujian"),
              );
    } else if ($sess_level == "admin") {
      $menu = array(
                array("icon"=>"dashboard", "url"=>"", "text"=>"Dashboard"),
                array("icon"=>"list-alt", "url"=>"m_siswa", "text"=>"Data Siswa"),
                array("icon"=>"list-alt", "url"=>"m_guru", "text"=>"Data Guru/Dosen"),
                array("icon"=>"list-alt", "url"=>"m_mapel", "text"=>"Data Mapel"),
                array("icon"=>"list-alt", "url"=>"m_soal", "text"=>"Soal"),
                array("icon"=>"file", "url"=>"h_ujian", "text"=>"Hasil Ujian"),
              );
    } else {
      $menu = array(
                array("icon"=>"dashboard", "url"=>"", "text"=>"Dashboard")
              );
      if ($url == "ikut_ujian") {
        $menu = null;
      }
    }


    
    if ($menu != null) {
        echo '
        <div class="container" style="margin-top: 70px">

        <div class="col-lg-12 row">
          <div class="panel panel-default">
            <div class="panel-body">';
 
            foreach ($menu as $m) {
                if ($url == $m['url']) {
                  echo '<a href="'.base_url().'adm/'.$m['url'].'" class="btn btn-sq btn-warning"><i class="glyphicon glyphicon-'.$m['icon'].' g3x"></i><br><br/>'.$m['text'].' </a>';
                } else {
                  echo '<a href="'.base_url().'adm/'.$m['url'].'" class="btn btn-sq btn-primary"><i class="glyphicon glyphicon-'.$m['icon'].' g3x"></i><br><br/>'.$m['text'].' </a>';
                }
            }

        echo '</div>
          </div>
        </div>';

    }
}

function bersih($data, $pil) {
    //return mysql_real_escape_string 
    return $data->$pil;
}

function tambah_jam_sql($menit) {
    $str = "";
    if ($menit < 60) {
        $str = "00:".str_pad($menit, 2, "0", STR_PAD_LEFT).":00";
    } else if ($menit >= 60) {
        $mod = $menit % 60;
        $bg = floor($menit / 60);
        $str = str_pad($bg, 2, "0", STR_PAD_LEFT).":".str_pad($mod, 2, "0", STR_PAD_LEFT).":00";
    } 
    return $str;
}

function tampil_media($file,$width="320px",$height="240px") {
    $ret = '';

    $pc_file = explode(".", $file);
    $eks = end($pc_file);

    $eks_video = array("mp4","flv","mpeg");
    $eks_audio = array("mp3","acc");
    $eks_image = array("jpeg","jpg","gif","bmp","png");


    if (!in_array($eks, $eks_video) && !in_array($eks, $eks_audio) && !in_array($eks, $eks_image)) {
        $ret .= '';
    } else {
        if (in_array($eks, $eks_video)) {
            if (is_file("./".$file)) {
                $ret .= '<p><video width="'.$width.'" height="'.$height.'" controls>
                  <source src="'.base_url().$file.'" type="video/mp4">
                  <source src="'.base_url().$file.'" type="application/octet-stream">Browser tidak support</video></p>';
            } else {
                $ret .= '';
            }
        } 

        if (in_array($eks, $eks_audio)) {
            if (is_file("./".$file)) {
                $ret .= '<p><audio width="'.$width.'" height="'.$height.'" controls>
                <source src="'.base_url().$file.'" type="audio/mpeg">
                <source src="'.base_url().$file.'" type="audio/wav">Browser tidak support</audio></p>';
            } else {
                $ret .= '';
            }
        }

        if (in_array($eks, $eks_image)) {
            if (is_file("./".$file)) {
                $ret .= '<div class="gambar"><img src="'.base_url().$file.'" style="width: '.$width.'; height: '.$height.'; display: inline; float: left"></div>';
            } else {
                $ret .= '';
            }
        }
    }
    

    return $ret;
}

function tjs ($tgl, $tipe) {
    if ($tgl != "0000-00-00 00:00:00") {
        $pc_satu    = explode(" ", $tgl);
        if (count($pc_satu) < 2) {  
            $tgl1       = $pc_satu[0];
            $jam1       = "";
        } else {
            $jam1       = $pc_satu[1];
            $tgl1       = $pc_satu[0];
        }

        $pc_dua     = explode("-", $tgl1);
        $tgl        = $pc_dua[2];
        $bln        = $pc_dua[1];
        $thn        = $pc_dua[0];

        $bln_pendek     = array("Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Ags", "Sep", "Okt", "Nov", "Des");
        $bln_panjang    = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

        $bln_angka      = intval($bln) - 1;

        if ($tipe == "l") {
            $bln_txt = $bln_panjang[$bln_angka];
        } else if ($tipe == "s") {
            $bln_txt = $bln_pendek[$bln_angka];
        }

        return $tgl." ".$bln_txt." ".$thn."  ".$jam1;
    } else {
        return "Tgl Salah";
    }
}

?>