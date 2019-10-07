<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/img/gmv_logo.png" />
    <title>Visitadores Médicos</title>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--FUENTE ICONS-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/fuente.css" >
    <!-- Import Bootstrap 4-->
	<!--<link rel="stylesheet" rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css">-->
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/css/materialize.css"  media="screen,projection"/>
	
	<!--MI ESTILO-->
    <link type="text/css" rel="stylesheet" href="<?php echo base_url();?>assets/css/_styles.css"  media="screen,projection"/>
	<!--DATATABLES-->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/dataTables.foundation.css" >
    <!--ICONS RED SOCIAL-->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/materialdesignicons.min.css" >
    <!--CSS FULL CALENDAR-->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/fullcalendar.css" media="screen,projection">
    <!--CSS FULL CALENDAR-->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/daterangepicker.min.css">

    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/jquery-ui.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/jquery-ui.min.css">
</head>
<body>
	<header class="demo-header mdl-layout__header">
		<nav class="nav-extended">
			<div class="nav-wrapper">
				<a href="<?php echo base_url("index.php/home")?>" class="brand-logo"><img class="logo-img" src="<?php echo base_url();?>assets/img/gvm-logo.png"></a>
				

				<a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
				<ul class="right hide-on-med-and-down">
					<?php
					if ($this->session->userdata('rol')!=2 && $this->session->userdata('rol')!=3) {
						echo '
						<li><a href="'.base_url('index.php/home').'">Inicio</a></li>
						<li><a href="'.base_url('index.php/medicos').'">Médicos</a></li>
						<li><a href="'.base_url('index.php/farmacias').'">Farmacias</a></li>					
						<li><a href="'.base_url('index.php/reportes').'">Reportes</a></li>
						<!--<li><a href="'.base_url('index.php/verVentasSist').'">Ventas</a></li>-->';
					}else  if ($this->session->userdata('rol')!=1 && $this->session->userdata('rol')!=3){
						echo '<li><a href="'.base_url('index.php/cliente-vendedor').'">Clientes</a></li>';
						echo '<li><a href="'.base_url('index.php/plan-trabajo').'">Plan de trabajo</a></li>';
					} else{
						echo '<li><a href="'.base_url('index.php/ventas-terceros').'">Agregar Ventas</a></li>';
					}
					?>
					<li><a href="<?php echo base_url('index.php/salir')?>" class="waves-effect waves-light">
							<i class="medium material-icons">exit_to_app</i>
					</a></li>
				</ul> 
				<ul class="side-nav" id="mobile-demo">
					<?php
					if ($this->session->userdata('rol')!=2 && $this->session->userdata('rol')!=3) {
						echo '
						<li><a href="'.base_url('index.php/home').'">Inicio</a></li>
						<li><a href="'.base_url('index.php/medicos').'">Médicos</a></li>
						<li><a href="'.base_url('index.php/farmacias').'>">Farmacias</a></li>					
						<li><a href="'.base_url('index.php/reportes').'">Reportes</a></li>
						<!--<li><a href="'.base_url('index.php/verVentasSist').'">Ventas</a></li>-->';
					}else  if ($this->session->userdata('rol')!=1 && $this->session->userdata('rol')!=3){
						echo '<li><a href="'.base_url('index.php/cliente-vendedor').'">Clientes</a></li>';
						echo '<li><a href="'.base_url('index.php/plan-trabajo').'">Plan de trabajo</a></li>';
					}else{
						echo '<li><a href="'.base_url('index.php/ventasTerceros').'">Ventas Terceros</a></li>';
					}
					?>
					<li><a href="./salir" class="waves-effect waves-light">
							<i class="medium material-icons">exit_to_app</i>
					</a></li>
				</ul>
			</div>
		</nav>
	</header>