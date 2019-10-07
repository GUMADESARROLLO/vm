<script type="text/javascript">
$(document).ready(function() {
	$('#tblventasDelSistema').DataTable(
    {
      "info":    false,
      "sort":true,
      "order": [[ 1, "asc" ]],
       "searching": true,
      "bLengthChange": false,
      "bfilter": false,
      "bLengthMenu" : false,
      "lengthMenu": [[10,15,32,100,-1], [10,15,32,100,"Todo"]],
      "language":
        {
          "paginate": {
              "first":      "Primera",
              "last":       "Última ",
              "next":       "Siguiente",
              "previous":   "Anterior"
          },
          "lengthMenu":"Mostrar _MENU_",

          "emptyTable": "No hay datos disponibles en la tabla",
          "search":     "" 
        },
       
         "columnDefs": [
        {"className": "dt-center", "targets": "_all"}
      ],
      "createdRow": 
      function( row, data, dataIndex){
          if( data[4] == "ACTIVA"){
              $(row).css('background-color', 'white');

             
          }
          else {
              $(row).css('background-color', '#d8d8d8');
          }
         

      }
    }
  );
  $("#tblventasDelSistema_filter").hide();
 //listandoUsuarios();
 //LlenarDTVentasDelSistema();
 
 });




/*function listandoUsuarios(){
	var codigoUserSistema;
    $.getJSON("listandoUsuarios", function(data) {
    $("#selectUsuarios").append('<option value="ALL">TODOS</option>');
    $.each(data, function(i, item) {
    $("#selectUsuarios").append('<option value="' + item['cod'] + '">' + item['nom'] + '</option>');

      
     
    });
  });
}*/

//Buscar datos dentro de la tabla
/*$('#productos').on( 'keyup', function () {
      var table = $('#tblDetVntTerceros').DataTable();
      table.search( this.value ).draw();
  } );*/


  /*$('#selectUsuarios').change(function() {
var value = $("#selectUsuarios option:selected").val();
$('#result').append(value);

console.log(value);

LlenarDTVentasDelSistema(value);
 
});*/

   


//LLenar datatable de ventas al ingresar nueva venta
function LlenarDTVentasDelSistema(){

	

	/*var partesIdProd = $('#result').html().split(' - ');

	var codUser = partesIdProd[0];
	var nomUse2r =partesIdProd[1];
	
	console.log(codUser);*/
	objTable = $("#tblventasDelSistema").DataTable();
	objTable.rows().remove().draw( false ); 

  	$.ajax({
    url:"getDataSellingUserSystem",
    async:false,
    success:
    function(json){

      var e = JSON.parse(json);


      var estado;


      for (f=0;f<e.results.length;f++){
        if (e.results[f].activoVnts==1){
          estado =  "ACTIVA";
        }else{
          estado =  "ANULADA";
        }
       

       objTable.row.add
       ( [
            e.results[f].fechaVnts,
            e.results[f].idVnts,
            e.results[f].clienteVnts,   
            e.results[f].telClteVnts,   
            estado,         
            '<center><a href="#ModalVerDetVnts" id="btnVerDetVnts" class="noHover modal-trigger"><i class="material-icons">&#xE417;</i></a>&nbsp'//+'&nbsp<a href="#!" id="btnAnularVnts" class="Icono noHover"><i class="material-icons">highlight_off</i></a></center>' 
        ] ).draw( false )

      }


    }


  });
}


//Mostrar modal con datos de fila selecionada en encabezado
$("#tblventasDelSistema").delegate("#btnVerDetVnts","click", function(){
  var tdItems;
  var fechaVenta;
   var codVenta;
   var nomCliente;

  $('#tblVerDetVntTerceros').DataTable().rows().remove().draw(false); 

   tdItems= $('#tblventasDelSistema').DataTable().rows($(this).parents("tr")).data();
   fechaVenta =tdItems[0][0]; 
   codVenta =tdItems[0][1]; 
    nomCliente=tdItems[0][2]; 

    console.log(fechaVenta);


  $('#txtVerFechaVnt').html(fechaVenta);
    $('#txtVerCodVnt').html(codVenta);  
    $('#txtVerNomClteVnt').html(nomCliente);  
  
  LlenarTablaVerDetVnts(codVenta);

});


//filtrar por rango de fecha y clientte



$('#btnFiltroxfecha').click(function () {
    filtrarxfecha();
  });

function filtrarxfecha(){

  objTable = $("#tblventasDelSistema").DataTable();
  objTable.rows().remove().draw( false ); 
   
  var desde = $("#F1").val();
  var hasta = $("#F2").val();

  var form_data = {
      desde : desde,
      hasta: hasta
  };

  $.ajax({
    url: "filtrarxfecha",
    type: "POST",
    data: form_data,
    success: function(res){
      console.log(res);


       var e = JSON.parse(res);


      var estado;


      for (f=0;f<e.results.length;f++){
        if (e.results[f].activoVnts==1){
          estado =  "ACTIVA";
        }else{
          estado =  "ANULADA";
        }
       

       objTable.row.add
       ( [
            e.results[f].fechaVnts,
            e.results[f].idVnts,
            e.results[f].clienteVnts,   
            e.results[f].telClteVnts,   
            estado,         
            '<center><a href="#ModalVerDetVnts" id="btnVerDetVnts" class="noHover modal-trigger"><i class="material-icons">&#xE417;</i></a>&nbsp'//+'&nbsp<a href="#!" id="btnAnularVnts" class="Icono noHover"><i class="material-icons">highlight_off</i></a></center>' 
        ] ).draw( false )

      }



    }
  });

}

$("#txtBuscarTransaccion").on("keyup", function () {
    var table = $("#tblventasDelSistema").DataTable();
    table.search(this.value).draw();
});

</script>