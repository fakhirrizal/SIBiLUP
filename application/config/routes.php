<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
| example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
| https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
| $route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
| $route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
| $route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples: my-controller/index -> my_controller/index
|   my-controller/my-method -> my_controller/my_method
*/
$route['default_controller'] = 'Auth/login';
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;

/* Auth */
$route['login'] = 'Auth/login';
$route['adm/act_login'] = 'Adm/act_login';
$route['login_process'] = 'Auth/login_process';
$route['registrasi'] = 'Auth/registration';
$route['register_process'] = 'Auth/register_process';

/* Perpustakaan */
/*$route['regulasi'] = 'admin/Perpustakaan/regulasi';
$route['materi'] = 'admin/Perpustakaan/materi';
$route['modul'] = 'admin/Perpustakaan/modul';
$route['soal_un'] = 'admin/Perpustakaan/soal_un';
$route['photo'] = 'admin/Perpustakaan/photo';
$route['vidio'] = 'admin/Perpustakaan/vidio';
$route['ujian_ol'] = 'admin/Perpustakaan/ujian_ol';*/

/* Admin */
$route['admin_side/launcher'] = 'admin/App/launcher';
$route['admin_side/beranda'] = 'admin/App/home';
$route['admin_side/visimisi'] = 'admin/Master/visi_misi';
$route['admin_side/tupoksi'] = 'admin/Master/tupoksi';
$route['admin_side/faq'] = 'admin/Master/faq';
$route['admin_side/struktur'] = 'admin/Master/struktur';
$route['admin_side/menu'] = 'admin/App/menu';
$route['admin_side/log_activity'] = 'admin/App/log_activity';
$route['admin_side/cleaning_log'] = 'admin/App/cleaning_log';
$route['admin_side/tentang_aplikasi'] = 'admin/App/about';
$route['admin_side/bantuan'] = 'admin/App/helper';

$route['admin_side/pengguna'] = 'admin/Master/administrator_data';
$route['admin_side/tambah_pengguna'] = 'admin/Master/add_administrator_data';
$route['admin_side/simpan_data_pengguna'] = 'admin/Master/save_administrator_data';
$route['admin_side/ubah_data_pengguna/(:any)'] = 'admin/Master/edit_administrator_data/$1';
$route['admin_side/perbarui_data_pengguna'] = 'admin/Master/update_administrator_data';
$route['admin_side/hapus_data_pengguna/(:any)'] = 'admin/Master/delete_administrator_data/$1';

$route['admin_side/data_provinsi'] = 'admin/Map/province';
$route['admin_side/tambah_data_provinsi'] = 'admin/Map/add_province';
$route['admin_side/simpan_data_provinsi'] = 'admin/Map/save_province';
$route['admin_side/ubah_data_provinsi/(:any)'] = 'admin/Map/edit_province/$1';
$route['admin_side/perbarui_data_provinsi'] = 'admin/Map/update_province_data';
$route['admin_side/hapus_data_provinsi/(:any)'] = 'admin/Map/delete_province/$1';
$route['admin_side/data_kabkot'] = 'admin/Map/city';
$route['admin_side/tambah_data_kabkot'] = 'admin/Map/add_city';
$route['admin_side/simpan_data_kabkot'] = 'admin/Map/save_city';
$route['admin_side/ubah_data_kabkot/(:any)'] = 'admin/Map/edit_city/$1';
$route['admin_side/perbarui_data_kabkot'] = 'admin/Map/update_city_data';
$route['admin_side/hapus_data_kabkot/(:any)'] = 'admin/Map/delete_city/$1';
$route['admin_side/data_kecamatan'] = 'admin/Map/sub_district';
$route['admin_side/tambah_data_kecamatan'] = 'admin/Map/add_sub_district';
$route['admin_side/simpan_data_kecamatan'] = 'admin/Map/save_sub_district';
$route['admin_side/ubah_data_kecamatan/(:any)'] = 'admin/Map/edit_sub_district/$1';
$route['admin_side/perbarui_data_kecamatan'] = 'admin/Map/update_sub_district_data';
$route['admin_side/hapus_data_kecamatan/(:any)'] = 'admin/Map/delete_sub_district/$1';
$route['admin_side/data_kelurahan'] = 'admin/Map/village';
$route['admin_side/tambah_data_kelurahan'] = 'admin/Map/add_village';
$route['admin_side/simpan_data_kelurahan'] = 'admin/Map/save_village';
$route['admin_side/ubah_data_kelurahan/(:any)'] = 'admin/Map/edit_village/$1';
$route['admin_side/perbarui_data_kelurahan'] = 'admin/Map/update_village_data';
$route['admin_side/hapus_data_kelurahan/(:any)'] = 'admin/Map/delete_village/$1';

$route['admin_side/rekap_rp3kp_provinsi'] = 'admin/Dashboard/rekap_rp3kp_provinsi';
$route['admin_side/ubah_data_rekap_rp3kp_provinsi/(:any)'] = 'admin/Dashboard/ubah_data_rekap_rp3kp_provinsi/$1';
$route['admin_side/perbarui_data_rekap_rp3kp_provinsi'] = 'admin/Dashboard/perbarui_data_rekap_rp3kp_provinsi';
$route['admin_side/rekap_rp3kp_kabkota'] = 'admin/Dashboard/rekap_rp3kp_kabkota';
$route['admin_side/ubah_data_rekap_rp3kp_kabkota/(:any)'] = 'admin/Dashboard/ubah_data_rekap_rp3kp_kabkota/$1';
$route['admin_side/perbarui_data_rekap_rp3kp_kabkota'] = 'admin/Dashboard/perbarui_data_rekap_rp3kp_kabkota';
$route['admin_side/rekap_pokja_pkp_provinsi'] = 'admin/Dashboard/rekap_pokja_pkp_provinsi';
$route['admin_side/ubah_data_rekap_pokja_pkp_provinsi/(:any)'] = 'admin/Dashboard/ubah_data_rekap_pokja_pkp_provinsi/$1';
$route['admin_side/perbarui_data_rekap_pokja_pkp_provinsi'] = 'admin/Dashboard/perbarui_data_rekap_pokja_pkp_provinsi';
$route['admin_side/rekap_pokja_pkp_kabkota'] = 'admin/Dashboard/rekap_pokja_pkp_kabkota';
$route['admin_side/ubah_data_rekap_pokja_pkp_kabkota/(:any)'] = 'admin/Dashboard/ubah_data_rekap_pokja_pkp_kabkota/$1';
$route['admin_side/perbarui_data_rekap_pokja_pkp_kabkota'] = 'admin/Dashboard/perbarui_data_rekap_pokja_pkp_kabkota';

$route['admin_side/aspirasi'] = 'admin/Report/aspirasi';
$route['admin_side/hapus_aspirasi/(:any)'] = 'admin/Report/hapus_aspirasi/$1';

/* User */
$route['simpan_aspirasi'] = 'user/App/simpan_aspirasi';

/* REST API */
$route['api'] = 'Rest_server/documentation';

/*
| -------------------------------------------------------------------------
| Sample REST API Routes
| -------------------------------------------------------------------------
*/
$route['api/example/users/(:num)'] = 'api/example/users/id/$1'; // Example 4
$route['api/example/users/(:num)(\.)([a-zA-Z0-9_-]+)(.*)'] = 'api/example/users/id/$1/format/$3$4'; // Example 8