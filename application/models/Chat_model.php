<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat_model extends CI_Model{

    function get_product(){
        $this->db->order_by('create_at', 'DESC');
        $this->db->join('pegawai', 'id_pegawai = id_pgw');
        $query = $this->db->get('diskusi');
        return $query;
    }

    function insert_product($product_name){
        $data = array(
            'isi' => $product_name,
            'id_pgw' => $this->session->userdata('admin_konid'),
            'create_at' => date('Y-m-d H:i:s')
        );
        $this->db->insert('diskusi', $data);
    }
}