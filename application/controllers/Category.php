<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Category extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Category_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->load->view('category/category_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Category_model->json();
    }

    public function read($id) 
    {
        $row = $this->Category_model->get_by_id($id);
        if ($row) {
            $data = array(
		'category_ID' => $row->category_ID,
		'category_name' => $row->category_name,
		'category_type' => $row->category_type,
	    );
            $this->load->view('category/category_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Data tidak ditemukan !');
            redirect(site_url('category'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Tambah Data',
            'action' => site_url('category/create_action'),
    	    'category_ID' => set_value('category_ID'),
    	    'category_name' => set_value('category_name'),
    	    'category_type' => array(
                    'list' => array('Product', 'Event'),
                    'checked' => '0'
                ),
    	);
        $this->load->view('category/category_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
                
		'category_name' => $this->input->post('category_name',TRUE),
		'category_type' => $this->input->post('category_type',TRUE),
	    );

            $this->Category_model->insert($data);
            $this->session->set_flashdata('message', 'Data berhasil ditambahkan !');
            redirect(site_url('category'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Category_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Perbarui Data',
                'action' => site_url('category/update_action'),
            	'category_ID' => set_value('category_ID', $row->category_ID),
            	'category_name' => set_value('category_name', $row->category_name),
            	'category_type' => array(
                        'list' => array('Product', 'Event'),
                        'checked' => $row->category_type
                    ),
            );
            $this->load->view('category/category_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Data tidak ditemukan !');
            redirect(site_url('category'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('category_ID', TRUE));
        } else {
            $data = array(
		'category_name' => $this->input->post('category_name',TRUE),
		'category_type' => $this->input->post('category_type',TRUE),
	    );

            $this->Category_model->update($this->input->post('category_ID', TRUE), $data);
            $this->session->set_flashdata('message', 'Data berhasil diperbarui !');
            redirect(site_url('category'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Category_model->get_by_id($id);

        if ($row) {
            $this->Category_model->delete($id);
            $this->session->set_flashdata('message', 'Data berhasil dihapus !');
            redirect(site_url('category'));
        } else {
            $this->session->set_flashdata('message', 'Data tidak ditemukan !');
            redirect(site_url('category'));
        }
    }

    public function _rules() 
    {
    	$this->form_validation->set_rules('category_name', 'category name', 'trim|required');
    	$this->form_validation->set_rules('category_type', 'category type', 'trim|required');

    	$this->form_validation->set_rules('category_ID', 'category_ID', 'trim');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Category.php */
/* Location: ./application/controllers/Category.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-09-04 22:47:24 */
/* http://harviacode.com */