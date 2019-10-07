<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class farmacias_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
		$data['rutas'] = $this->farmacias_model->listandoRutas();

        $this->load->view('header/header');
        $this->load->view('Pages/Farmacias/farmacias', $data);
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_farmacias');
	}

	public function listandoFarmacias() {
		$this->farmacias_model->listandoFarmacias();
	}

	public function detalleFarmacia($codFarmacia) {
        $data['dt'] = $this->farmacias_model->informacionFarmacia($codFarmacia);

        $this->load->view('header/header');
        $this->load->view('Pages/Farmacias/infoFarmacia', $data);
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_farmacias');
	}

	public function asignarLoginUsuarioSistema(){
		 $data= array(
            'Nombre_visitador' => $this->input->post('nombre'),
            'Usuario' => $this->input->post('idUSer'),
            'Password' => $this->input->post('pass'),
            'Rol' => $this->input->post('rol'),
            'Activo' => $this->input->post('activo'),
            'idNombre' => $this->input->post('idNombre')
        );

		$this->farmacias_model->asignarLoginUsuarioSistema($data);

	}


	public function verificarExisteUsuarioDelSistema(){

		 $data= array(
		 	'idNombre' => $this->input->post('idNombre'),
            'Nombre_visitador' => $this->input->post('Nombre')
        );



        $this->farmacias_model->verificarExisteUsuarioDelSistema($data);

	}


	public function obteberUltimoUsuarioDelSitema(){
		$this->farmacias_model->obteberUltimoUsuarioDelSitema();
	}


	public function almacenarUltimoUsuarioDelSitema(){

		$data = array('FARMACIA' => $this->input->post('intA_Asignar'));
		$where = array('Ruta' => 'US1');
		$this->farmacias_model->almacenarUltimoUsuarioDelSitema($data, $where);
	}


	public function activarUsuarioDelSistema(){
		$data= array(
			'idNombre' => $this->input->post('idNombre'),
			'Usuario' => $this->input->post('Sistemuser'),
	        'Nombre_visitador' => $this->input->post('nomUser')
        );
        $campo = array('Activo' => 1);
		 $this->farmacias_model->activarUsuarioDelSistema($data,$campo);
	}

	public function desactivarUsuarioDelSistema(){
		$data= array(
			'idNombre' => $this->input->post('idNombre'),
			'Usuario' => $this->input->post('Sistemuser'),
	        'Nombre_visitador' => $this->input->post('nomUser')
        );

        $campo = array('Activo' => 0);
 		$this->farmacias_model->desactivarUsuarioDelSistema($data,$campo);
 		
	}


	public function guardarCambiosFarmacia() {
		
        $this->farmacias_model->guardandoCambiosMedicos($this->input->post('data'));
	}
}
?>