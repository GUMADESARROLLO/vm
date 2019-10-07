<script type="text/javascript">
	$(document).ready(function() {
         verificarUsuarioDelSistema();
		$('.modal').modal();		
        var pathname = window.location.pathname;
        if (pathname.match(/medicos.*/)) {
            listandoMedicos();
        }else {
            $("#ok").hide();
            inicializaControlFecha();
            buttonReturn();
            especialidad();

        }
       
	});

$("#txtBuscarMed").on("keyup", function () {
    var table = $("#tblMedicos").DataTable();
    table.search(this.value).draw();
});

function especialidad() {    
  var especialidad = $("#Especialidades").val();
  $.getJSON("../medicos_controller/especialidad/"+especialidad, function(data) {
      $("#Especialidades").val(data);
  });
}

function listandoMedicos() {
	loadingPage(true);
	$('#tblMedicos').DataTable({
        "ajax":{
            "url": "listarMedicos",
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
			{ "title": "NOMBRE COMPLETO", "data": "NOMBRE" },
			{ "title": "ESPECIALIDAD", "data": "ESPECIALIDAD" },
			{ "title": "DIRECCION", "data": "DIRECCION" },
            { "title": "CELULAR", "data": "CELULAR" },
            { "title": "VISITADOR", "data": "VISITADOR" },
          { "title": "USUARIO", "data": "USUARIO" },
          { "title": "CONTRASEÑA", "data": "CONTRASEÑA" }
        ],
        "columnDefs": [
            {"className": "dt-left", "targets": [0,2]},
        	{"className": "dt-center", "targets": [1, 3, 4 ]},
            { "width": "20%", "targets": [ 1, 4] }
      	],
        "fnInitComplete": function () {      	
        	loadingPage(false);
        }
	});
}

function detalleMedico(codMedico) {
    window.location.href = "informacionMedico/" + codMedico;
}

</script>