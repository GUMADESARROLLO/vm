<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientevendedor_controller extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        $this->load->view('header/header');
        $this->load->view('Pages/clientes_vendedor/clientesVendedor');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_clientesVendedor');
    }

    public function cargarTablaClienteRuta(){

    	$this->clientevendedor_model->cargarTablaClienteRuta();

    }

     public function buscarClientesXRutaVendedor($ruta){
        
        $this->clientevendedor_model->buscarClientesXRutaVendedor($ruta);
        
     }

    public function LlenarTablaDetProdClte($codClte){

    	$this->clientevendedor_model->LlenarTablaDetProdClte($codClte);

    }

    public function obtenerdatosContablesCltes($codClte){

        $this->clientevendedor_model->obtenerdatosContablesCltes($codClte);
    }
}
?>