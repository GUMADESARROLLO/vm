<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class VentasTerceros_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        $this->load->view('header/header');

        $data= array(
            'arArticulos' => $this->ventasTerceros_model->getAllArticulos(),
            'arClientes' => $this->ventasTerceros_model->getAllClientes($this->session->userdata('usuario'))
        );

        $this->load->view('Pages/Ventas_terceros/VentasTerceros',$data);
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_ventasTerceros');
    }
    public function getInfoCliente($ID){
        $this->ventasTerceros_model->getInfoCliente($ID);
    }
    public function getInfoArticul($ID){
        $this->ventasTerceros_model->getInfoArticul($ID);
    }


    public function NomUsuarioActual(){
		$iduser = $this->session->userdata('usuario');
		 $this->ventasTerceros_model->NomUsuarioActual($iduser);

    }
    public function filtrarxfechaCliente(){
    		$data= array(
	            'desde' => $this->input->post('desde'),
	            'hasta' => $this->input->post('hasta')
	        );
    	$this->ventasTerceros_model->filtrarxfechaCliente($data);
    }


    /*INICIO VALORAR SI HAY QUE ELIMINAR*/
	public function listandoProductos(){
		$data = array('buscar' => $this->input->post('data'));
		//print_r($_REQUEST);
	
		$this->ventasTerceros_model->listandoProductos($data);
    }
    public function listandoClientes(){
		$this->ventasTerceros_model->listandoClientes($this->session->userdata('usuario'));
    }
    /*FIN VALORAR SI HAY QUE ELIMINAR*/


    public function datosCreditoClte(){
    	$data = array('codClte' => $this->input->post('codClte'));
    	$this->ventasTerceros_model->datosCreditoClte($data);
    }


	  public function UltimoRegistroVnts(){
	  	$idUser = $this->session->userdata('usuario');
	    $this->ventasTerceros_model->UltimoRegistroVnts($idUser);
	  }


	 public function AgregarNuevaVenta(){
	 	$data= array(
	            'fechaVnt' => $this->input->post('fechaVnt'),
	            'clienteVnts' => $this->input->post('clienteVnts'),
	            'contVnt' => $this->input->post('contVnt'),
	            'idUser' => $this->session->userdata('usuario')
	            
	        );
	 	$this->ventasTerceros_model->AgregarNuevaVenta($data);
	 }



	 public function AgregarDetalledeVenta(){
	 	$data = $_POST['data'];
	 	$this->ventasTerceros_model->AgregarDetalledeVenta($data);
	 }

	public function getNewSellingData(){
		$idUser = $this->session->userdata('usuario');
		$this->ventasTerceros_model->getNewSellingData($idUser);
		//echo "aqui vamos";

	}

	public function getSelectedSellingDetailData($cod){
		
		$this->ventasTerceros_model->getSelectedSellingDetailData($cod);

	}


	public function cambiarEstadoVentas($cod, $estado){
		
		$this->ventasTerceros_model->cambiarEstadoVentas($cod, $estado);
	}


}

 