<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Iklan_model extends CI_Model
{

    public $table = 'iklan';
    public $id = 'id_iklan';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id_iklan,gambar');
        $this->datatables->from('iklan');
        //add this line for join
        //$this->datatables->join('table2', 'user.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('iklan/read/$1'),'
            <button type="button" class="btn btn-primary">
                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </button>')."".anchor(site_url('iklan/update/$1'),'
            <button type="button" class="btn btn-success">
                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
            </button>')."".anchor(site_url('iklan/delete/$1'),'
            <button type="button" class="btn btn-danger">
                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
            </button>','onclick="javasciprt: return confirm(\'Anda yakin ingin menghapus data ini ?\')"'), 'id_iklan');
        return $this->datatables->generate();
    }

    

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id_iklan', $q);
        $this->db->or_like('gambar', $q);
      
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_iklan', $q);
        $this->db->or_like('gambar', $q);
     
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();

    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file User_model.php */
/* Location: ./application/models/User_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-09-04 22:47:39 */
/* http://harviacode.com */
