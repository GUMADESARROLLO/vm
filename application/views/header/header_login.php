<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/img/gmv_logo.png" />
    <title>Visita Medica</title>      
	<link type="text/css" rel="stylesheet" href="<?PHP echo base_url();?>assets/css/_styles_login.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="<?PHP echo base_url();?>assets/css/materialize.css"  media="screen,projection"/>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function(event) {
	    	var pathname = window.location.pathname;
		    if (pathname.match(/VISITAMEDICA.*/) || pathname.match(/login.*/)) {
		    	 document.getElementById("usuario").focus();
		    }
		});
	</script>
</head>
<body>