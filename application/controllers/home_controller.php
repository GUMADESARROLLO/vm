<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class home_controller extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->library('session');

		if($this->session->userdata('logged')==0) {
			redirect(base_url().'index.php/login','refresh');
		}
	}

	public function index() {
        if ($this->session->userdata('rol')!=2  && $this->session->userdata('rol')!=3) {
            $this->load->view('header/header');
            $this->load->view('Pages/home/home');
            $this->load->view('footer/footer');
            $this->load->view('jsView/js_home');
        }else if ($this->session->userdata('rol')!=1 && $this->session->userdata('rol')!=3){
            redirect('plan-trabajo');
        }else {
            redirect('ventas-terceros');
        
        }
	}

    public function listandoRutas() {
    	$this->home_model->listandoRutas();
    }

    public function detalleVentas($visitador) {
        $data['dv'] = $this->home_model->detalleVentasXRuta($visitador);

        $this->load->view('header/header');
        $this->load->view('Pages/home/detalleVentas', $data);
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_home');
    }

    public function tipoData($tipo, $visitador) {
        $this->home_model->listandoData($tipo, $visitador);
    }

    public function tipoData3M($tipo, $visitador) {
        $this->home_model->listandoData3M($tipo, $visitador);
    }

    public function buscarPorFiltro($filtro, $tipo, $visitador) {
        $this->home_model->buscarPorFiltro($filtro, $tipo, $visitador);
    }

    public function buscarPorFiltro3M($filtro, $tipo, $ruta) {
        $this->home_model->buscarPorFiltro3M($filtro, $tipo, $ruta);
    }

    public function detallesVentasM($val, $tipo, $visitador) {
        $this->home_model->detallesVentasM($val, $tipo, $visitador);
    }

    public function historial3M($visitador) {
        $data['dv'] = $this->home_model->detalleVentasXRuta($visitador);

        $this->load->view('header/header');
        $this->load->view('Pages/3M/historial3m', $data);
        $this->load->view('footer/footer');
        $this->load->view('jsView/js_historial3M');
    }
}
