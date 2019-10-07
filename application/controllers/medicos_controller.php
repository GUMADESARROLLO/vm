<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class medicos_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        $this->load->view('header/header');
        $this->load->view('Pages/Medicos/medicos');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_medicos');
	}

	public function listandoMedicos() {
		$this->medicos_model->listandoMedicos();
	}

	public function detalleMedico($codMedico) {
		$data['dm'] = $this->medicos_model->detalleMedico($codMedico);

		$this->load->view('header/header');
        $this->load->view('Pages/Medicos/infoMedico', $data);
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_medicos');
	}

	public function especialidad($idEspecialidad) {
		$esp = $this->medicos_model->especialidad($idEspecialidad);
		echo json_encode($esp);
	}
}
?>