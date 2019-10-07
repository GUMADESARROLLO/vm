<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class reportes_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        $this->load->view('header/header');
        $this->load->view('Pages/Reportes/reportes');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_reportes');
	}

	public function generarDataReporte($f1, $f2, $visitador, $tRpt) {
		$this->reportes_model->generadoDataRpt($f1, $f2, $visitador, $tRpt);
	}

	public function detalleReporte($IdLog) {
		$this->reportes_model->detalleReporte($IdLog);
	}

	public function rptCumplimiento() {
        $this->load->view('header/header');
        $this->load->view('Pages/Reportes/cumplimiento');
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_reporteCump');
	}

	public function rptDataCumplimiento() {
		$this->reportes_model->reporteCumplimiento();
	}

	public function listandoRutas() {
		$this->reportes_model->listandoRutas();
	}

	public function exportarDataExcel($f1,$f2,$ruta) {
		$this->reportes_model->generarExcel($f1,$f2,$ruta);
	}

	public function exportarDataExcelCump() {
		$this->reportes_model->generarExcelCump();
	}
}
?>