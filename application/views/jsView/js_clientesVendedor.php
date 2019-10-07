<script type="text/javascript">
	$(document).ready(function(){

		 /*INICIALIZAR MODAL*/
  $('.modal').modal();

  $('#tblCltexRutaVende,#tblDetProdClte').DataTable(
    {
      "sDom": 'lrtip', // esconde el searching box
      "bfilter": false, 
      "info":    false,
      "sort":true,

      //"order": [[ 2, "asc" ]],
      "searching": true,
      "bLengthChange": false,
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
      
    }
  );

  cargarTablaClienteRuta();


	});

   $('#txtBuscarClteProd').on('keyup', function () {
    var table1 = $('#tblCltexRutaVende').DataTable();
    table1.search(this.value).draw();
    });





  function cargarTablaClienteRuta(){
    var objTable =  $('#tblCltexRutaVende').DataTable();
    loadingPage(true);

    
    
   $.ajax({
      url: "cargarTablaClienteRuta",
      type: "POST",
      success: function(res){

         var e = JSON.parse(res);


        if(e != 0){

          if( $("#selectRutas option:selected").html()!="Todas las rutas..."){

          listandoRutas(crearArregloDeStringSepXComa(e[0].RUTAS));
          
          }
          

          for (f=0;f<e.length;f++){
            
            objTable.row.add
            ( [
              e[f].CLIENTE,
              e[f].NOMBRE,
              e[f].DIRECCION,   
              e[f].RUTA
            ] ).draw( false )
          }

        }
        loadingPage(false);
      }
    });

  }


  function crearArregloDeStringSepXComa(valor){
    var res="";
      var ruta="";
      var rutas= new Array();
      var rutasSplited = valor.split("','");
      for (var i = 0; i < rutasSplited.length; i++) {
        
        ruta="";

        var rutaUnica = rutasSplited[i];

        for (var j = 0; j < rutaUnica.length; j++) {

          if (rutaUnica[j]!="'"){
            ruta += rutaUnica[j];
            
          }
          
        }
        
        rutas[i]=ruta;

      }

      return rutas;
  }

//llenar select de rutas
  function listandoRutas(arreglo){
    
      $("#selectRutas").append('<option value="0">Todas las rutas...</option>');
      for (var i = 0; i < arreglo.length; i++) {
        $("#selectRutas").append('<option value="' + arreglo[i] + '">' + arreglo[i] + '</option>');
      }
          
      
  
}

  //Mostrar modal con datos de fila selecionada en encabezado
$("#tblCltexRutaVende").delegate("#btnVerDetProdClte","click", function(){
 // $('#ModalVerDetVnts').openModal();
  var tdItems;
  var Codigo;
  var Cliente;
  var Ruta;
  var Credito; 
  var Saldo; 
  var Disponible;
  var datosConta;

  $('#tblDetProdClte').DataTable().rows().remove().draw(false); 

   tdItems= $('#tblCltexRutaVende').DataTable().rows($(this).parents("tr")).data();

   $('#txtVerFechaVnt').html("");
  $('#txtVerCodVnt').html("");  
  $('#txtVerNomClteVnt').html(""); 

  $('#txtVerCredito').html("");
  $('#txtVerSaldo').html("");  
  $('#txtVerDisponible').html(""); 


  Codigo = tdItems[0][0].replace(/<[^>]*>?/g, ''); 
  Cliente = tdItems[0][1]; 
  Ruta= tdItems[0][3]; 

 obtenerdatosContablesCltes(Codigo);


  $('#txtVerFechaVnt').html(Ruta);
  $('#txtVerCodVnt').html(Codigo);  
  $('#txtVerNomClteVnt').html(Cliente); 
  
  
  LlenarTablaDetProdClte(Codigo);

});



function buscarClientesXRutaVendedor(){
  var ruta = $("#selectRutas option:selected").val();
  $('#tblCltexRutaVende').DataTable().rows().remove().draw(false);
  if (ruta==0) {
    cargarTablaClienteRuta();
  }else{
    loadingPage(true);
    var objTable= $("#tblCltexRutaVende").DataTable();

    $.ajax({
        url: "buscarClientesXRutaVendedor/"+ruta,
        type: "GET",
        success: function(res){

           var e = JSON.parse(res);


          if(e != 0){
            
            
            for (f=0;f<e.length;f++){
              
              objTable.row.add
              ( [
                e[f].CLIENTE,
                e[f].NOMBRE,
                e[f].DIRECCION,   
                e[f].RUTA
              ] ).draw( false )
            }

          }
          loadingPage(false);
        }
      });
  }

}



function obtenerdatosContablesCltes(codigo){


  $.ajax({
      url: "obtenerdatosContablesCltes/"+codigo,
      type: "GET",
      success: function(res){

         var e = JSON.parse(res);

          


        if(e != 0){
          $('#txtVerCredito').html(e[0].CREDITO);
          $('#txtVerSaldo').html(e[0].SALDO);  
          $('#txtVerDisponible').html(e[0].DISPONIBLE); 
          
        }else{
          $('#txtVerCredito').html("");
          $('#txtVerSaldo').html("");  
          $('#txtVerDisponible').html(""); 
        }
      }
    });

  
}

function LlenarTablaDetProdClte(Codigo){

  var objTable =  $('#tblDetProdClte').DataTable();

    
   $.ajax({
      url: "LlenarTablaDetProdClte/"+Codigo,
      type: "GET",
      success: function(res){

         var e = JSON.parse(res);


        if(e != 0){

          for (f=0;f<e.length;f++){
            
            objTable.row.add
            ( [
              e[f].ARTICULO,
              e[f].DESCRIPCION,
              e[f].Cantidad,   
              e[f].Venta
            ] ).draw( false )
          }

        }
      }
    });

}
	

	
</script>