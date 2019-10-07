$(document).ready(function() {
    $('.modal').modal();
    $('select').material_select();
    $(".button-collapse").sideNav();
	
    $(".nav-wrapper ul li a").each(function() {		
		if(this.href.trim() == window.location) {
			$(this).parent().addClass("active");
		}
	}); 
});

 /*var config = {
        '.chosen-select': {}
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }*/

function inicializaControlFecha() {    
    $('input[class="input-fecha"]').daterangepicker({
     "locale": {
            "format": "DD-MM-YYYY",
            "separator": " - ",
            "applyLabel": "Apply",
            "cancelLabel": "Cancel",
            "fromLabel": "From",
            "toLabel": "To",
            "customRangeLabel": "Custom",
            "daysOfWeek": [
                "D",
                "L",
                "M",
                "M",
                "M",
                "V",
                "S"
            ],
            "monthNames": [
                "Enero",
                "Febrero",
                "Marzo",
                "Abril",
                "Mayo",
                "Junio",
                "Julio",
                "Agosto",
                "Septiembre",
                "Octubre",
                "Noviembre",
                "Diciembre"
            ],          
            "firstDay": 0
        },
        singleDatePicker: true,
        showDropdowns: true
    });
}

var rep;
/*function loadingPage(par) {
    var tiempo = 0;
    loading(par);
    if (par==true) {
        rep = setInterval( function() {
            tiempo++;
            if (tiempo>=10) {
                alert("Algo anda mal al parecer :(\n\nContacte con el administrador del sistema");
                tiempo=0;
            }
        }, 1000);
    }else if(par==false) {
        window.clearInterval(rep);
    }
}*/

function loadingPage(par) {
    if (par==true) {
        $("#loader-1").remove();
        $("#load-1").remove();
        var html = `<div id="loader-1" class="loader-1">
            <div class="preloader-wrapper big active" style="margin-top: 20px;">
            <div class="spinner-layer spinner-blue-only">
            <div class="circle-clipper left">
            <div class="circle"></div>
            </div><div class="gap-patch">
            <div class="circle"></div>
            </div><div class="circle-clipper right">
            <div class="circle"></div>
            </div>
            </div>
            </div>
            </div>
            <div id="load-1" class="load-1"></div>`;
        $(html).appendTo( "body" );
    }else if (par==false) {
        $("#loader-1").remove();
        $("#load-1").remove();
    }
}

function buttonReturn() {
    var button = `
    <div id="pageReturn" class="fixed-action-btn2">
        <a href="javascript:window.history.back();" class="btn-floating waves-effect waves-light light-blue accent-3"><i class="material-icons">keyboard_backspace</i></a>
    </div>`;
    $("body").append(button);
}





function verificarUsuarioDelSistema(){
   var id = $("#idFarmacia,#IdMedico").val();
  var user= $("#nombreFarmacia,#NombreMedico").val();
  var nomUser=$("#nombrePropietario,#Especialidades").val();
  var pass = generarPaswordAutomatico();

  var form_data = {
      idNombre: id,
      Nombre : user,
      nomUser: nomUser,
      pass: pass,
      rol: 3,
      activo: 1
  };
  


$.ajax({
    url:"../verificarExisteUsuarioDelSistema",
     type: 'post',
      async: true,
    data: form_data,
    success: function(res){
      var e = JSON.parse(res);

      if (e[0].Existe != 1) {
         $("#btnCrearPassFarmacias").html("Asignar");
      }
      else if (e[0].Existe == 1 && e[0].Activo == 1){
         $("#btnCrearPassFarmacias").html("Desactivar");

      }else if (e[0].Existe == 1 && (e[0].Activo == null || e[0].Activo == 0)){
         $("#btnCrearPassFarmacias").html("Activar");

      }



    }
  });
}

$("#btnCrearPassFarmacias").click(function(){
  
  var id = $("#idFarmacia,#IdMedico").val();
  var user= $("#nombreFarmacia,#NombreMedico").val();
  var nomUser=$("#nombrePropietario,#Especialidades").val();
  var pass = generarPaswordAutomatico();

  var form_data = {
      idNombre: id,
      Nombre : user,
      nomUser: nomUser,
      pass: pass,
      rol: 3,
      activo: 1
  };
  


$.ajax({
    url:"../verificarExisteUsuarioDelSistema",
     type: 'post',
      async: true,
    data: form_data,
    success: function(res){
      var e = JSON.parse(res);



      if (e[0].Existe == 0) {
        swal({
          title: '¿Usuario no existe, desea asignar un usuario?',
          text: "",
          type: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          cancelButtonText: 'Cancelar',
          confirmButtonText: 'Sí, Asignar'
        }).then((result) => 
        {
          if (result.value) {

            obteberUltimoUsuarioDelSitema(form_data);
            
         
          }else {
            
          }
        });
      }
      else if (e[0].Existe == 1 && e[0].Activo == 1){
        swal({
          title: '¿Usuario asignado, desea desactivarlo?',
          text: "",
          type: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          cancelButtonText: 'Cancelar',
          confirmButtonText: 'Sí, Desactivar'
        }).then((result) => 
        {
          if (result.value) {
          desactivarUsuarioDelSistema(e[0].Usuario, form_data);
          
           
          }else {
            
          }
        });

      }else if (e[0].Existe == 1 && (e[0].Activo == null || e[0].Activo == 0)){
        swal({
          title: '¿Usuario esta Desactivado, desea activarlo?',
          text: "",
          type: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          cancelButtonText: 'Cancelar',
          confirmButtonText: 'Sí, activar'
        }).then((result) => 
        {
          if (result.value) {
            activarUsuarioDelSistema(e[0].Usuario,form_data);
           
          }else {
            
          }
        });

      }
    }
  });

});



function desactivarUsuarioDelSistema(user, form_data){
  var data_form = {
    idNombre: form_data["idNombre"],
    Sistemuser: user,
    Nombre: form_data["Nombre"],
    nomUser: form_data["nomUser"]
  };

  $.ajax({
    url:"../desactivarUsuarioDelSistema",
    type: 'post',
      async: true,
    data: data_form,
    success: function(res){

      if (res==true) {
        $("#btnCrearPassFarmacias").html("Activar");
         swal(
            'Desactivado!',
          'El usuario ha sido desactivado.',
          'success'
           )

      }
    }
    });
}


function activarUsuarioDelSistema(user, form_data){
   var data_form = {
    idNombre: form_data["idNombre"],
    Sistemuser: user,
    Nombre: form_data["Nombre"],
    nomUser: form_data["nomUser"]
  };
  $.ajax({
    url:"../activarUsuarioDelSistema",
    type: 'post',
      async: true,
    data: data_form,
    success: function(res){

      if (res==true) {
        $("#btnCrearPassFarmacias").html("Desactivar");
         swal(
            'Activado!',
            'El usuario ha sido activado.',
            'success'
            )

      }
    }
    });
}


function AgregarUsuarioDelSistema(form_data2){

  $.ajax({
    url:"../asignarLoginUsuarioSistema",
     type: 'post',
      async: true,
    data: form_data2,
    success: function(res){

       

      if (res==1) {
         $("#btnCrearPassFarmacias").html("Desactivar");
         
        almacenarUltimoIntUsuarioAgregado(form_data2);

       swal(
            'Usuario asignado!',
          'Ha sido asignado un usuario.',
          'success'
           )

      }else{
        alert("respuesta Incorrectra");
        
      }
    }
  });
}

function obteberUltimoUsuarioDelSitema(form_data){

  $.ajax({
    url:"../obteberUltimoUsuarioDelSitema",
    success: function(res){

        var e = JSON.parse(res);
        
        var US1 = e[0].Ruta;
        var intA_Asignar = parseInt(e[0].ultimoIntAsignado)+1;
        var idUser = US1+intA_Asignar;
        
       

        var form_data2 = {
            idNombre: form_data['idNombre'],
            nombre: form_data['Nombre'],
            idUSer: idUser,
            pass: form_data['pass'],
            rol: form_data['rol'],
            activo: form_data['activo'],
            intA_Asignar : intA_Asignar
        };
       
        

       AgregarUsuarioDelSistema(form_data2);
         
            
    }

  });
}

function  almacenarUltimoIntUsuarioAgregado(form_data2){
    $.ajax({
    url:"../almacenarUltimoUsuarioDelSitema",
     type: 'post',
      async: true,
    data: form_data2
  });
}


function generarPaswordAutomatico()
{
  var longitud = 6;
  var caracteres = "abcdefghijkmnpqrtuvwxyzABCDEFGHIJKLMNPQRTUVWXYZ2346789";
  var contraseña = "";
  for (i=0; i<longitud; i++) contraseña += caracteres.charAt(Math.floor(Math.random()*caracteres.length));
  return contraseña;
}