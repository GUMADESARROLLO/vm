<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class verVentasSist_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        $this->load->view('header/header');
        $this->load->view('Pages/ver_ventas_sist/verVentasSist');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_ventasTerceros');
        $this->load->view('jsView/js_verVentasSist');
    }


	public function listandoUsuarios(){
		$this->verVentasSist_model->listandoUsuarios();
	}


	public function getDataSellingUserSystem(){
		$this->verVentasSist_model->getDataSellingUserSystem();
	}

	public function filtrarxfecha(){

		$data= array(
	            'desde' => $this->input->post('desde'),
	            'hasta' => $this->input->post('hasta')
	        );

		$this->verVentasSist_model->filtrarxfecha($data);
	}
}
?>