 <script type="text/javascript">

$(document).ready(function() {

    $( "#ListCliente").change(function() {
        var Cls = $(this).val();
        $.getJSON('InfoCliente/' + Cls, function(data){
            $("#labelDirCrearPedido").html(data['data'][0].DIR);
            $("#limitCredCrearPedido").html(data['data'][0].CRE);
            $("#saldoCrearPedido").html(data['data'][0].SAL);
            $("#DispondCrearPedido").html(data['data'][0].DIS);
        });
    });

    $( "#ListArticulo").change(function() {
        var Art  = $(this).val();
        $.getJSON('InfoArticul/' + Art, function(data){
            $("#txtPrecio").val(data['data'][0].PRE);
            $("#txtExistencia").val(data['data'][0].EXI);

            var res = data['data'][0].REG;
            var select = $('#slcCantidad');
            res = res.split(",");

            $.each(res, function (ind, elem) {
                select.append( '<option value="'+elem+'">'+elem+'</option>' )
            } );



        });
    });

  /*INICIALIZAR MODAL*/
  $('.modal').modal();



  $('#tblDetVntTerceros,#tblVerDetVntTerceros').DataTable(
    {
      "info":    false,
      "sort":false,
      //"order": [[ 2, "asc" ]],
      "searching": false,
      "bLengthChange": false,
      "bLengthMenu" : false,
      "bPaginate": false,
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

  $('#tblVtsTerceros').DataTable(
    {
      "info":  false,
      "sort": true,
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
        columns: [
                        { 'title': 'FECHA' },
                        { 'title': 'CODIGO' },
                        { 'title': 'CLIENTE' },
                        { 'title': 'COMENTARIO' },
                        { 'title': 'ESTADO' },
                        { 'title': 'OPCINOES' },

                    ],
         "columnDefs": [
        {"className": "dt-center", "targets": "_all"},
        { "width": "10%", "targets": 0 },
        { "width": "10%", "targets": 1 },
        { "width": "40%", "targets": 2 },
        { "width": "20%", "targets": 3 },
        { "width": "10%", "targets": 4 },
        { "width": "10%", "targets": 5 }
      ],
      "createdRow":
      function( row, data, dataIndex){
          if( data[4] == "ACTIVO"){
              $(row).css('background-color', 'white');


          }
          else {
              $(row).css('background-color', '#d8d8d8');
          }


      }
    }
  );

  $('#tblVtsTerceros_filter').hide();
  //Control para el datePicker para buscar por rango de fecha
  inicializaControlFecha();


  LlenarDTPedidos();
  showNameUser();


});

//FINALIZA DOCUMENT READY





$('#btnFiltroxfechaCLiente').click(function () {
    filtrarxfechaPedidos();
  });





function filtrarxfechaPedidos(){

  objTable = $("#tblVtsTerceros").DataTable();
  objTable.rows().remove().draw( false );

  var desde = $("#F1C").val();
  var hasta = $("#F2C").val();

  var form_data = {
      desde : desde,
      hasta: hasta
  };

  $.ajax({
    url: "filtrarxfechaPedidos",
    type: "POST",
    data: form_data,
    success: function(res){

      var e = JSON.parse(res);

       if(e.results[0].CLIENTE == null){
       }else{

        var estado;

        for (f=0;f<e.results.length;f++){
          if (e.results[f].ESTADO==0){
            estado =  "ACTIVO";
          }else{
            estado =  "ANULADO";

          }

         if (estado == "ANULADO"){
            objTable.row.add
         ( [
              e.results[f].FECHA_CREADA,
              e.results[f].IDPEDIDO,
              e.results[f].NOMBRE,
              e.results[f].COMENTARIO,
              estado,
              '<center><a href="#ModalVerDetVnts" id="btnVerDetVnts" class="noHover modal-trigger"><i class="material-icons">&#xE417;</i></a>&nbsp'
          ] ).draw( false )

         }else{
          objTable.row.add
         ( [
              e.results[f].FECHA_CREADA,
              e.results[f].IDPEDIDO,
              e.results[f].NOMBRE,
              e.results[f].COMENTARIO,
              estado,
              '<center><a href="#ModalVerDetVnts" id="btnVerDetVnts" class="noHover modal-trigger"><i class="material-icons">&#xE417;</i></a>&nbsp'+
              '&nbsp<a href="#!" id="btnAnularVnts" class="Icono noHover"><i class="material-icons">highlight_off</i></a></center>'
          ] ).draw( false )
         }

        }

      }

    }
  });

}





function showNameUser(){
  var resultado;
   $.ajax({
      url:"NomUsuarioActual",
       async:false,
        success:function(idRegistro){
          var e = JSON.parse(idRegistro);

         // llamado a la funcion que agregar detalles de registros agregando en cada uno el id de ventas al que pertenecen

        resultado = e[0].Nombre_visitador;
        $("#nomUser").html(resultado);

        }
    });
}



$("#txtCLienteNewFact").autocomplete({
    appendTo: "#resultClte",
    source : function(request, cb){
        $.ajax({
          url:"listandoClientes/"+request.term,// mandarlo por post
          method: "GET",
          dataType: "json",
            success: function(res){
                var result =
                [
                    {
                        cod:"",
                        dir:"",
                        value:"",
                        nom:"No se encntraron datos para"+request.term,

                    }
                ];
                if(res.length){
                    result = $.map(res, function(obj){
                        return{
                            nom: obj.nom,
                            dir: obj.dir,
                            value: obj.value,
                            cod: obj.cod,
                            data: obj
                        };
                    });
                }
                cb(result);


            }

        });

    },
    select: function(event, selectedData){
        if (selectedData && selectedData.item && selectedData.item.data){
            var data = selectedData.item.data;
            //recoge valores de la consulta y los agrega a los campos deseados
            var cod = data.cod;
            $("#labelDirCrearPedido").html(data.dir);
            datosCreditoClte(cod);
        }
    }
});


function datosCreditoClte(codClte){//obtener datos de la tabla de SAC_DISP_CREDITO_UMK del servicor SQL
  $.ajax({
    url:"datosCreditoClte",
    method:"POST",
    data:{codClte},
    async:true,
    success: function(res){
      var e = JSON.parse(res);
      $("#limitCredCrearPedido").html(e.LIMITE_CREDITO);
      $("#saldoCrearPedido").html(e.SALDO);
      $("#DispondCrearPedido").html(e.CREDITODISP);
      console.log(e);
    }
  });
}


//Llenar Data table registro por registro al persiona boton agregar
$("#addProdDet").on('click', function(){

var existencia = parseInt($("#txtExistencia").val().trim());
  var cliente = $("#ListCliente").val();
  var partesIdProd = $("#ListArticulo option:selected").text().split(' - ');
  var idProd = $("#ListArticulo").val();
  var descProd =partesIdProd[1];
  var cantProd = $("#txtCantidad").val();
  var precioProd = $("#txtPrecio").val();
  var bonifProd = $("#slcCantidad").val();
  var totProd = 0.00;  
  var countArt = $("#spanContTotArtPedido").text();
  var totProd = parseFloat(cantProd) * parseFloat(precioProd);
  

  Objtable = $("#tblDetVntTerceros").DataTable();

  if (cliente="" || cliente == null) {
    Materialize.toast("Seleccione un cliente", 4000, 'rounded');
  }else if( idProd == null){
      Materialize.toast("Seleccione un producto", 4000, 'rounded');

  }else if(parseFloat(existencia)<0.0000 || existencia==""){
    Materialize.toast("No hay producto en existencia", 4000, 'rounded');
  }else if (cantProd == "" || cantProd == "0" || parseFloat(cantProd) > parseFloat(existencia)) {
    Materialize.toast("El campo cantidad se encuentra vacio o es mayor a cantidad en existencia", 4000, 'rounded');
  }else{

     Objtable.row.add
      ( [
          idProd,
          descProd.trim(),
          cantProd,
          "C$"+precioProd,
          bonifProd,
          totProd.toFixed(4),
          '<a href="#!" id="RowDelete" class="BtnClose"><i class="material-icons">highlight_off</i></a>'
      ] ).draw( false );

    var Total=0.00;
    var lastTotal = parseFloat($("#spanTotalPedido").html());
    if (lastTotal!=0) {
      Total += lastTotal + (parseFloat(cantProd) * parseFloat(precioProd));
    }else{
      Total = parseFloat(cantProd) * parseFloat(precioProd);
    }

    $("#spanContTotArtPedido").text(parseInt(countArt)+parseInt(cantProd));
  
    var IVA = parseFloat(Total)*0.15;
    var granTotal = 0.00;
    granTotal = IVA + parseFloat(Total);


    $("#spanTotalPedido").html(Total.toFixed(4));
    $("#spanIvaPedido").html(IVA.toFixed(4));
    $("#spanGranTotalPedido").html(granTotal.toFixed(4));
    }

});


//Accion que desencadena las funciones necesarioas para agregar Maestro y detalle de ventas en la base de datos
$("#addNewVnt").on('click', function(){

 
var partesClte = $("#ListCliente option:selected").text().split('-');
  var idClte = partesClte[0];
  var nomClte = partesClte[1];
  var dirClte = $("#labelDirCrearPedido").html();
  var limCredClte = $("#limitCredCrearPedido").html();
  var saldoCredClte = $("#saldoCrearPedido").html();
  var dispCredClte = $("#DispondCrearPedido").html();
  var granTotal = parseFloat($("#spanGranTotalPedido").html());

  var countArt= 0;

  var comentVende = $("#comentariosPedido").val();
  var idRegVnts;

   var Objtable1 = $("#tblDetVntTerceros").DataTable();

   countArt = Objtable1.rows().count();
  if($("#ListArticulo").val() == ""){
      Materialize.toast("Seleccione un cliente", 4000, 'rounded');
  }else{

    if( ! Objtable1.data().any()){
      Materialize.toast("Agregue productos a la tabla antes de guardar");
    }else{

      alert(countArt);



    var regDatGeneralVnt = {
        IDPEDIDO: "",
        VENDEDOR: "",
        CLIENTE: idClte.trim(),
        NOMBRE: nomClte.trim(),
        MONTO: granTotal,
        COMENTARIO: comentVende.trim(),
        countArt: countArt
      };


      $.ajax({
        url: "AgregarNuevoPedido",
       type: "post",
        cache: false,
        async:false,
        data:regDatGeneralVnt,
        success:function(res){
          var d = JSON.parse(res);


          if(d.llave!=null){
              //Llamado a funcion que busca ultimo id de ventas agregado por usuario, dentro de esta esta la funcion que llama a la funcion que agrega los detalles a la base de datos y agrega el id de ventas al que pertenece cada registro
            AddDetallesVnts(d);
            Objtable1.rows().remove().draw( false );
              $("#tblDetVntTerceros").DataTable();


             LlenarDTPedidos();
          }

        }
      });
    }
  }
});



//Guardar Detalle de ventas en BD
function AddDetallesVnts(d){

  console.log(d.llave+", "+d.idPedido);
   Objtable = $("#tblDetVntTerceros").DataTable();


    var regDatDetlPedido ={};
    var i = 0;
    Objtable.rows().data().each( function (index) {
       regDatDetlPedido[i]={};
        regDatDetlPedido[i]['idPedido'] = d.idPedido;
        regDatDetlPedido[i]['idArt'] = index[0];
        regDatDetlPedido[i]['descArt'] = index[1];
        regDatDetlPedido[i]['cantArt'] = index[2];
        regDatDetlPedido[i]['precioArt'] = index[3];
        regDatDetlPedido[i]['bonifArt'] = index[4];
        regDatDetlPedido[i]['totalArt'] = index[5];
        i++;
    });


    $.ajax({
      url: "AgregarDetalledePedido",
      type: "post",
      dataType: "json",
      cache: false,
      async:false,
      data:{data:regDatDetlPedido},
      success:function(res){

        if(res==true){

          incremetarLlavePedido(d.llave);

           swal({
                    "text":"Pedido Agregado",
                    "type":"success",
                    "confirmButtonText":"ACEPTAR",
                    allowOutsideClick:false
                }).then(function(){

                  location.reload();

              });

        }else{
          swal({
                  "text":"Ocurrio un error al Agregar el registro",
                  "type":"error",
                  "confirmButtonText":"ACEPTAR",
                  allowOutsideClick:false
              });
        }

      }

    })


}

function incremetarLlavePedido(llave){

   $.ajax({
      url: "incremetarLlavePedido",
      type: "post",
      cache: false,
      async:false,
      data:{llave}
    });
}


//LLenar datatable de ventas al ingresar nueva venta
function LlenarDTPedidos(){
  objTable = $("#tblVtsTerceros").DataTable();

  $.ajax({
    url:"LlenarDTPedidos",
    async:false,
    success:
    function(json){



       var e = JSON.parse(json);



       if(e.results[0].IDPEDIDO == null){
       }else{

        var estado = "ACTIVO";
        for (f=0;f<e.results.length;f++){
          if (e.results[f].ESTADO==0){
            estado =  "ACTIVO";
          }else{
            estado =  "ANULADO";

          }

          if (estado == "ANULADO"){
            objTable.row.add
         ( [
              e.results[f].FECHA_CREADA,
              e.results[f].IDPEDIDO,
              e.results[f].NOMBRE,
              e.results[f].COMENTARIO,
              estado,
              '<center><a href="#ModalVerDetVnts" id="btnVerDetVnts" class="noHover modal-trigger"><i class="material-icons">&#xE417;</i></a>&nbsp'
          ] ).draw( false )

         }else{
          objTable.row.add
         ( [
              e.results[f].FECHA_CREADA,
              e.results[f].IDPEDIDO,
              e.results[f].NOMBRE,
              e.results[f].COMENTARIO,
              estado,
              '<center><a href="#ModalVerDetVnts" id="btnVerDetVnts" class="noHover modal-trigger"><i class="material-icons">&#xE417;</i></a>&nbsp'+
              '&nbsp<a href="#!" id="btnAnularVnts" class="Icono noHover"><i class="material-icons">highlight_off</i></a></center>'
          ] ).draw( false )
         }
        }
      }
    }
  });
}



//Mostrar modal con datos de fila selecionada en encabezado
$("#tblVtsTerceros").delegate("#btnAnularVnts","click", function(){

  var tdItems;
  var idVnt;
   var codVenta;
   var estadoAntes;
   var estado;

  tdItems= $('#tblVtsTerceros').DataTable().rows($(this).parents("tr")).data();
   codVenta =tdItems[0][1];
   estadoAntes= tdItems[0][4];


 swal({
          title: '¿Realmente desea anular el pedido?',
          text: "este proceso no se podra revertir",
          type: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          cancelButtonText: 'Cancelar',
          confirmButtonText: 'Sí, anular'
        }).then((result) =>
        {
          if (result.value) {


             if(estadoAntes == "ACTIVO"){
                estado= "ANULADO";
             }else{
                estado= "ACTIVO";
             }
             console.log(codVenta+", "+estado);

             $.ajax({
              url:"cambiarEstadoPedido/"+codVenta+"/"+estado,
              cache: false,
              async:true
             });
              location.reload();

          }else {

          }
        });




  })





//Mostrar modal con datos de fila selecionada en encabezado
$("#tblVtsTerceros").delegate("#btnVerDetVnts","click", function(){
 // $('#ModalVerDetVnts').openModal();
  var tdItems;
  var fechaVenta;
   var codVenta;
   var nomCliente;

  $('#tblVerDetVntTerceros').DataTable().rows().remove().draw(false);

   tdItems= $('#tblVtsTerceros').DataTable().rows($(this).parents("tr")).data();
   fechaVenta =tdItems[0][0];
   codPedido =tdItems[0][1];
    nomCliente=tdItems[0][2];


  $('#txtVerFechaVnt').html(fechaVenta);
    $('#txtVerCodVnt').html(codPedido);
    $('#txtVerNomClteVnt').html(nomCliente);

  LlenarTablaDetPedido(codPedido);

});

function LlenarTablaDetPedido(codPedido){

  objTable = $("#tblVerDetVntTerceros").DataTable();

  var codVnts = codPedido;

  $.ajax({
    url:"LlenarTablaDetPedido/"+codPedido,
    cache: false,
    async:true,

    success:
    function(json){

      var e = JSON.parse(json);

      for (f=0;f<e.results.length;f++){

       objTable.row.add
       ( [
            e.results[f].ARTICULO,
            e.results[f].DESCRIPCION,
            e.results[f].CANTIDAD,
            e.results[f].BONIFICADO
        ] ).draw( false )

      }


    }

  });

}


//REMUEVE UNA FILA DE UNA TABLA
$('#tblDetVntTerceros').on('click', '#RowDelete', function(){
  var granTotal = 0.00;
  var TotalFila = 0.00;
  var table = $('#tblDetVntTerceros').DataTable();

 

  tdItem = table.rows($(this).parents('tr')).data();// lee  datos de la tabla 
  TotalFila = tdItem[0][5];// toma el valor de la columna total
  table.row( $(this).parents('tr') ).remove().draw();// remueve la fila
  

   var Total = parseFloat($("#spanTotalPedido").html()) - parseFloat(TotalFila);

    var IVA = parseFloat(Total)*0.15;
    granTotal = IVA + parseFloat(Total);
  

    $("#spanTotalPedido").html(Total.toFixed(3));
    $("#spanIvaPedido").html(IVA.toFixed(3));
    $("#spanGranTotalPedido").html(granTotal.toFixed(3));

    if ( ! table.data().any() ) {
    Materialize.toast("La tabla se encuentra vacia", 4000, 'rounded');
  }
});


$("#txtBuscarTransaccionClientes").on("keyup", function () {
    var table = $("#tblVtsTerceros").DataTable();
    table.search(this.value).draw();
});





</script>
