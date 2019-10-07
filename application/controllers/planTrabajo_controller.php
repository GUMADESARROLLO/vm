<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class planTrabajo_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        $this->load->view('header/header');
        $this->load->view('Pages/plan_trabajo/planTrabajo');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_planTrabajo');
    }

    public function planTrabajoSP($RT) {
        $this->load->view('header/header');
        $this->load->view('Pages/plan_trabajo/planTrabajo');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_planTrabajo');
    }

    public function dataCalendar($Par_) {        
        if ($Par_!=2) {
            $this->planTrabajo_model->returnDataPlan( $Par_, $this->input->get('start'), $this->input->get('end') );
        }else {
            $this->planTrabajo_model->returnDataPlan( $this->session->userdata('usuario'), $this->input->get('start'), $this->input->get('end') );
        }        
    }

    public function listClientes($F1) {
        $this->planTrabajo_model->returnListClientes($F1, $this->session->userdata('usuario'));
    }

    public function savePlan() {
        $this->planTrabajo_model->savePlanTrabajo(
            $this->input->post('cliente'),
            $this->input->post('fecha'),
            $this->session->userdata('usuario'),
            $this->input->post('type')
        );
    }

    public function updatePlan() {
        $this->planTrabajo_model->updatePlanTrabajo(
            $this->input->post('fecha'),
            $this->session->userdata('usuario'),
            $this->input->post('id')
        );
    }

    public function reutilizarPlan($F1, $F2) {

        $F1 = date("Y-m-d", strtotime($F1));
        $F2 = date("Y-m-d", strtotime($F2));
        $this->planTrabajo_model->cargaPlanAnterior($F1, $F2);
    }
}