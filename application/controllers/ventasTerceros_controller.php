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
    public function filtrarxfechaPedidos(){
    		$data= array(
	            'desde' => $this->input->post('desde'),
	            'hasta' => $this->input->post('hasta')
	        );
    	$this->ventasTerceros_model->filtrarxfechaPedidos($data);
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


	 public function AgregarNuevoPedido(){
	 	$varKey = $this->ventasTerceros_model->getKeyPedido($this->session->userdata('usuario'));
	 	if ($varKey<1) {
	 		echo false;
	 	}else{

	 		
	 		$data= array(
	 			'llave' =>$varKey,
	            'idPedido' => $this->session->userdata('usuario')."P".date('dmy').$varKey,
	            'idVendedor' => $this->session->userdata('usuario'),
	            'idCliente' => $this->input->post('CLIENTE'),
	            'NombreClte' => $this->input->post('NOMBRE'),
	            'monto' => $this->input->post('MONTO'),
	            'comentario' => $this->input->post('COMENTARIO'),
	            'countArt' => $this->input->post('countArt')
	        );

	 	$this->ventasTerceros_model->AgregarNuevoPedido($data);
	 	}
	 	
	 }


	 public function AgregarDetalledePedido(){
	 	$data = $_POST['data'];
	 	$this->ventasTerceros_model->AgregarDetalledePedido($data);
	 }

	 public function incremetarLlavePedido(){
	 	$data = array(
	 	'llave' => $this->input->post('llave'),
	 	'idUser' => $this->session->userdata('usuario')
	 	);
	 	
	 	$this->ventasTerceros_model->incremetarLlavePedido($data);
	 }

	public function LlenarDTPedidos(){
		$idUser = $this->session->userdata('usuario');
		$this->ventasTerceros_model->LlenarDTPedidos($idUser);
		

	}

	public function LlenarTablaDetPedido($cod){
		
		$this->ventasTerceros_model->LlenarTablaDetPedido($cod);

	}


	public function cambiarEstadoPedido($cod, $estado){

		echo ($cod.", ". $estado);
		
		$this->ventasTerceros_model->cambiarEstadoPedido($cod, $estado);
	}


}

 