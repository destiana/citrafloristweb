<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Category_model extends CI_Model
{

    public $table = 'category';
    public $id = 'category_ID';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('category_ID,category_name,category_type');
        $this->datatables->from('category');
        //add this line for join
        //$this->datatables->join('table2', 'category.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('category/read/$1'),'
            <button type="button" class="btn btn-primary">
                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </button>')."".anchor(site_url('category/update/$1'),'
            <button type="button" class="btn btn-success">
                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
            </button>')."".anchor(site_url('category/delete/$1'),'
            <button type="button" class="btn btn-danger">
                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
            </button>','onclick="javasciprt: return confirm(\'Anda yakin ingin menghapus data ini ?\')"'), 'category_ID');
        return $this->datatables->generate();
    }

    function get_all_by_type()
    {
        $this->db->order_by("category_type", $this->order);
        return $this->db->get($this->table)->result();
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
        $this->db->like('category_ID', $q);
	$this->db->or_like('category_name', $q);
	$this->db->or_like('category_type', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('category_ID', $q);
	$this->db->or_like('category_name', $q);
	$this->db->or_like('category_type', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
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

/* End of file Category_model.php */
/* Location: ./application/models/Category_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-09-04 22:47:24 */
/* http://harviacode.com */
