<script type="text/javascript">
$(document).ready(function() {
  inicializaControlFecha();
  listandoRutas();
  $('.modal').modal();
});

function listandoRutas() {
  $.getJSON("../index.php/reportes_controller/listandoRutas", function(data) {
    $("#visitador").append('<option value="ALL">TODOS</option>');
    $.each(data, function(i, item) {
      $("#visitador").append('<option value="' + item['value'] + '">' + item['desc'] + '</option>');
    });
  });
}

var val = document.myForm.group1;
for(var i = 0; i < val.length; i++) {
  val[i].onclick = function() {
    if (this.value==1) {
      tReporte=1;
      $("#descReporte").empty();
      $("#descReporte").text(`Genera un reporte sobre las últimas visitas realizadas por los agentes.`);
      $("#icon-rpt").text("person_pin_circle");
      $("#tip-rpt").text("Reporte de visitas");

      //DESBLOQUEAR CONTROLES SUPERIORES
      $('#visitador').prop('disabled', false);
      $('#F1').prop('disabled', false);
      $('#F2').prop('disabled', false);
      $('#F1').css('color', '#000000');
      $('#F2').css('color', '#000000');

    } else if (this.value==2) {
      tReporte=2;
      $("#descReporte").empty();
      $("#descReporte").text("Genera un reporte sobre el actual cumplimiento de metas por articulos.");
      $("#icon-rpt").text("assistant_photo");
      $("#tip-rpt").text("Reporte de cumplimiento");

      //BLOQUEAR CONTROLES SUPERIORES
      $('#visitador').prop('disabled', 'disabled');
      $('#F1').prop('disabled', 'disabled');
      $('#F2').prop('disabled', 'disabled');
      $('#F1').css('color', '#9e9e9e');
      $('#F2').css('color', '#9e9e9e');
    }
  };
}

$("#txtBuscarRpt").on("keyup", function () {
    var table = $("#tblReporte").DataTable();
    table.search(this.value).draw();
});

$("#generarRpt").click( function() {
  var f1 = $("#F1").val();
  var f2 = $("#F2").val();
  var visitador = $("#visitador").val();

  if (f1=="" || f2=="" || visitador==null) {
    Materialize.toast("Necesita rellenar todos campos de Filtrar por...", 4000, 'rounded');
  }else if (val.value=="") {
    Materialize.toast("Ups... Tiene que seleccionar el tipo de reporte", 4000, 'rounded');
  }else {
    if (val.value==2) {
      window.location.href = "cumplimiento";
    }else {
      tipoReporte = tReporte;
      generarReporte(f1, f2, visitador, tipoReporte);
    }
  }
});

$("#imprimirRpt").click( function() {  
  if ( !dt.data().count() ) {
      Materialize.toast("No hay datos para imprimir el reporte", 4000, 'rounded');
  }else {
    var f1 = $("#F1").val();
    var f2 = $("#F2").val();
    var ruta = $("#visitador").val();
    location.href = "../index.php/reportes_controller/exportarDataExcel/"+f1+"/"+f2+"/"+ruta;
  }
});

var dt; var tReporte;
function generarReporte( f1, f2, visitador, tipoReporte ) {
  switch (tipoReporte) {
      case 1:
      $('#content-temporal').hide();
      $("#tModal").text("REPORTE DE VISITAS");
      $('#content-tblReporte').show();
      $("#txtBuscarRpt").val("");
      
      dt = $('#tblReporte').DataTable({
            "ajax":{
                "url": "generarDataRpt/"+ f1 + '/' + f2 + '/' + visitador + '/' + tipoReporte,
                'dataSrc': '',
            },
            "destroy": true,
            "order": [[ 0, "asc"]],
            "ordering": true,
            "info": false,
            "data": [],
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
                "zeroRecords": "Cargando...",
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
          { "title": "DETALLE", "data": "F1" },
          { "title": "CÓDIGO", "data": "CODIGO" },
          { "title": "CLIENTE", "data": "CLIENTE" },
          { "title": "DESCRIPCION", "data": "DESCRIPCION" },
          { "title": "FECHA/HORA", "data": "FECHA" },
          { "title": "RUTA ", "data": "RUTA" },
          { "title": "IdLog", "data": "IDLOG"},
            ],
            "columnDefs": [
              { "targets": [6], "visible": false },
              {"className": "dt-center", "targets": [1, 2, 3, 4, 5]},
              {"className": "dt-center detalle-rpt", "targets": 0 },
              { "width": "10%", "targets": [ 0, 4 ] }
            ]
      });
          break;
      case 2:
          break;
      default: 
          alert("Ups... Ocurrio un problema inesperado :(");
          break;
  }

  $('#detalleReporte').modal('open');
}

$('#tblReporte').on('click', 'tbody .detalle-rpt', function() {
  var tr = $(this).closest('tr');
  var row = $('#tblReporte').DataTable().row( tr );
  
  var data = $('#tblReporte').DataTable().row($(this).parents('tr')).data();

  if ( row.child.isShown() ) {
      row.child.hide();
      tr.removeClass('shown');
      $("#icon-"+data['IDLOG']).css("color", "green");
      $("#icon-"+data['IDLOG']).text("add_circle");
  }
  else {
    $("#icon-"+data['IDLOG']).hide();
    $("#icon-"+data['IDLOG']).after("<div id='pgr-"+data['IDLOG']+"' class='progress'><div class='indeterminate'></div></div>");
    format(row.child, data['IDLOG']);
    tr.addClass('shown');
  }
});

function format ( callback, IdLog ) {
  $.ajax({
    url: "detalleRpt/" + IdLog,
    type: 'post',
    async: true,
    success: function(data) {
      var tbody="";
      $.each(JSON.parse(data), function(i, item) {
        tbody += '<tr><td>'+item['ARTICULO']+'</td>';
        tbody += '<td>'+item['DESCRIPCION']+'</td>';
        tbody += '<td>'+item['CANTIDAD']+'</td></tr>';
      });
      
      callback($(`<table id="tblTemporal" cellpadding="5" cellspacing="0" border="0" >
                  <thead>
                    <tr>
                      <th>ARTICULOS</th>
                      <th>DESCRIPCION</th>
                      <th>CANTIDAD</th>
                    </tr>
                  </thead>
                    <tbody>`
                    + tbody +
                    `</tbody>
                  </table>`)).show();
    }
  }).done( function(data) {
      $("#pgr-"+IdLog).remove();
      $("#icon-"+IdLog).show();
      $("#icon-"+IdLog).css("color", "red");
      $("#icon-"+IdLog).text("remove_circle");
  });
}
</script>