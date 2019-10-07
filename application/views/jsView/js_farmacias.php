<script type="text/javascript">
$(document).ready(function() {
  var pathname = window.location.pathname;
    if (pathname.match(/farmacias.*/)) {
        listandoFarmacias();
    }else {
        $("#ok").hide();
        inicializaControlFecha();
        buttonReturn();
        $(".nav-wrapper ul li a").each(function() {
          if(this.href.trim() == "http://localhost/vm/index.php/farmacias") {
            $(this).parent().addClass("active");
          }
        });
    }

verificarUsuarioDelSistema();

});

$("#txtBuscarFarm").on("keyup", function () {
    var table = $("#tblFarmacias").DataTable();
    table.search(this.value).draw();
});

$("#select1").on("change", function () {
    var table = $("#tblFarmacias").DataTable();
    table.search(this.value).draw();
});

$("#editarFarmacia").click( function() {
    $(".edit").removeAttr("readonly");
    $(".editChk").removeAttr("disabled");
    $("#editarFarmacia").hide();
    $("#opcButtons").append(`<a href="#!" id="ok" onclick="bloquearControles()" class="pulse btn-floating waves-effect waves-light teal accent-4"><i class="material-icons">save</i></a>`);
});

function bloquearControles() {
  var result = validarControles();
  if (result) {
    swal({
      title: '¿Desea guardar los cambios?',
      text: "Los cambios se aplicaran en las demas plataformas",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      cancelButtonText: 'Cancelar',
      confirmButtonText: 'Sí, guardar'
    }).then((result) => {
      if (result.value) {
        var res = guardarCambiosFarmacia();
      }else {
        $(".edit").attr("readonly","readonly");
        $(".editChk").attr("disabled", "disabled");
        $("#ok").remove();
        $("#editarFarmacia").show();
      }
    });
  }
};

function guardarCambiosFarmacia() {
  var dataFarmacia = {
    "0":[
      {
        "mUID":$("#idFarmacia").val(),
        "mNFR":$("#nombreFarmacia").val(),
        "mNPR":$("#nombrePropietario").val(),
        "mDIR":$("#direccion").val(),
        "mFAN":$('#fechaAniversario').val(),
        "mTFR":$("#telfFarmacia").val(),
        "mTFP":$("#telfPropietario").val(),
        "mHAT":$("#horaAtencion").val(),
        "mRCP":$("#respCompra").val(),
        "mTRC":$("#telfRespCompra").val(),
        "mCDP":$("#cantDependiente").val(),
        "mPCP":$("#potencialMensualComp").val(),
        "mDPF":$("#diasPagoFact").val(),
        "mRVC":$("#respVencidos").val(),
        "mRCJ":$("#respCanjes").val(),
        "mNDM":$("#NumDepMostrador").val(),
        "mPPP":$('#chkppp').is(':checked') ? '1' : '0',
        "mEBD":$('#chkebd').is(':checked') ? '1' : '0',
        "mPIP":$('#chkpi').is(':checked') ? '1' : '0',
        "mCCO":$('#chkcc').is(':checked') ? '1' : '0',
        "Ruta":"007"
      }
    ]
  }

  var form_data = {
      data : dataFarmacia
  };

  $.ajax({
      url: "../guardarCambiosFarmacia",
      type: 'post',
      async: true,
      data: form_data,
      success: function(data) {
          if (data==true) {
              swal(
                'Guardado con éxito',
                'Se aplicaron los cambios',
                'success'
              )
              $(".edit").attr("readonly","readonly");
              $(".editChk").attr("disabled", "disabled");
              $("#ok").remove();
              $("#editarFarmacia").show();
          }else {
              Materialize.toast("Ups...ocurrio un problema al tratar de actualizar!", 4000, 'rounded');
          }
      }
  });  
}

function validarControles() {
  var result = false;

  mNFR = $("#nombreFarmacia").val();
  mNPR = $("#nombrePropietario").val();
  mDIR = $("#direccion").val();
  mFAN = $('#fechaAniversario').val();
  mTFR = $("#telfFarmacia").val();
  mTFP = $("#telfPropietario").val();
  mHAT = $("#horaAtencion").val();
  mRCP = $("#respCompra").val();
  mTRC = $("#telfRespCompra").val();
  mCDP = $("#cantDependiente").val();
  mPCP = $("#potencialMensualComp").val();
  mDPF = $("#diasPagoFact").val();
  mRVC = $("#respVencidos").val();
  mRCJ = $("#respCanjes").val();
  mNDM = $("#NumDepMostrador").val();

  if (mNFR=="" || mNPR=="" || mDIR=="" || mFAN=="" || mTFR=="" || mTFP=="" || mHAT=="" || mRCP=="" || mTRC=="" || mCDP=="" || mPCP=="" || mDPF=="" || mRVC=="" || mRCJ=="" || mNDM=="") {
    Materialize.toast("Ups... Aún Hay datos sin completar", 4000, 'rounded');    
  }else {
    result = true;
  }
  return result;
}

function listandoFarmacias() {
	loadingPage(true);
	$('#tblFarmacias').DataTable({
        "ajax":{
            "url": "listarFarmacias",
            'dataSrc': '',
        },
        "destroy": true,
        "order": [[ 0, "asc"]],
        "ordering": true,
        "info": false,
        "bPaginate": true,
        "bfilter": false,
        "lengthMenu": [[10,20,30,-1], [10,20,30,"Todo"]],
        "searching": true,
        "pagingType": "full_numbers",
        "aaSorting": [
            [0, "asc"]
        ],
        "lengthMenu": [
            [20, 10, -1],
            [20, 30, "Todo"]
        ],
        "language": {
            "zeroRecords": "NO HAY RESULTADOS",
            "paginate": {
                "first":      "Primera",
                "last":       "Última ",
                "next":       "Siguiente",
                "previous":   "Anterior"
            },
            "lengthMenu": "_MENU_",
            "emptyTable": "NO HAY DATOS DISPONIBLES",
            "search":     "BUSCAR"
        },
        'columns': [
          { "title": "NOMBRE", "data": "CODIGO" },
    			{ "title": "NOMBRE", "data": "NOMBREFARMACIA" },
    			{ "title": "PROPIETARIO", "data": "NOMBREPROPIETARIO" },
          { "title": "DIRECCION", "data": "DIRECCION" },
          { "title": "VISITADOR", "data": "RUTA" },
          { "title": "USUARIO", "data": "USUARIO" },
          { "title": "CONTRASEÑA", "data": "CONTRASEÑA" },
        ],
        "columnDefs": [
          {
              "targets": [ 0 ],
              "visible": false
          },
        	{"className": "dt-center", "targets": [ 4 ]},
          {"className": "dt-left", "targets": [ 1 , 3 ] },
          { "width": "20%", "targets": [ 1, 2, 4 ] }
      	],
        "fnInitComplete": function () {   	
        	loadingPage(false);
        }
	});
}

function detalleFarmacia(codFarmacia) {
    window.location.href = "informacionFarmacia/" + codFarmacia;
}


</script>