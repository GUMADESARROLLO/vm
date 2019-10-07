<script type="text/javascript">
	$(document).ready(function() {
		changeTabs('1');
		$('#return1').hide();
		$('.modal').modal();
		buttonReturn();
	});

$('#return1').click(function() {	
    $('body,html').animate({scrollTop : 0}, 500);
    return false;
});

$(window).scroll(function() {
    if ($(this).scrollTop() > 0) {
        $('#return1').fadeIn();
    } else {
        $('#return1').fadeOut();
    }
});

function changeTabs(tipo) {
	loadingPage(true);
	var visitador = $('#visitador').val();	
	var contenido = "";
	tipo1 = tipo;
    $.ajax({
        url: '../tabs2/' + tipo + '/' + visitador,
        type: "post",
        async: true,
        success: function(data) {
			switch (tipo) {
				case "1":
					$("#articulos").empty();
		            $.each(JSON.parse(data), function(i, item) {
		            	contenido += `<li class="collection-item avatar" style="cursor:pointer" onclick="detalleVts('`+item['ARTICULO']+`', '`+tipo+`')">
		  								<i class="material-icons circle">local_mall</i>
		  								<span class="title">`+item['DESCRIPCION']+`</span><br>
		  								`+item['ARTICULO']+`
										<div class="row">
											<div class="col s12 m4"><span><b>Cantidad:</b> `+item['CANTIDAD']+`</span></div>
											<div class="col s12 m4"><span><b>Monto:</b> C$ `+item['VENTA']+`</span></div>
											<div class="col s12 m4"><span><b>Total veces faturado: </b>`+item['Hts']+`</span></div>
										</div>
										</li>`;

		            });
		            $("#articulos").append(contenido);
				break;
				case "2":
					$('#clientes').empty();
		            $.each(JSON.parse(data), function(i, item) {
		            	contenido += `<li class="collection-item avatar" style="cursor:pointer" onclick="detalleVts('`+item['CCL']+`','`+tipo+`')">
		  								<i class="material-icons circle">person</i>
		  								<span class="title">`+item['NOMBRE']+`</span><br>
		  								`+item['CCL']+`
										<div class="row">
											<div class="col s12 m4"><span><b>Total veces facturado:</b> `+item['Hts']+`</span></div>
											<div class="col s12 m4"><span><b>Monto:</b> C$ `+item['VENTA']+`</span></div>
										</div>
										</li>`;

		            });
		            $("#clientes").append(contenido);
				break;
				case "3":
					$('#vstCLA').empty();
		            $.each(JSON.parse(data), function(i, item) {
		            	contenido += `<li class="collection-item avatar">
		  								<i class="material-icons circle">local_mall</i>
		  								<span class="title">`+item['DESCRIPCION']+`</span><br>
		  								`+item['ARTICULO']+`
										<div class="row">
											<div class="col s12 m4"><span><b>Cantidad:</b> `+item['Cantidad']+`</span></div>
											<div class="col s12 m4"><span><b>Monto:</b> C$ `+item['Venta']+`</span></div>
											<div class="col s12 m4"><span><b>Fecha:</b> `+item['Dia']+`</span></div>
										</div></li>`;

		            });
		            $("#vstCLA").append(contenido);
				break;
			}
		}
	}).done( function (data) {
		loadingPage(false);
	})
}
var tipo1 = "";
$("#buscar3M").on('change', function () {
	loadingPage(true);
	var filtro = $(this).val();
	var visitador = $('#visitador').val();
	var contenido="";
	if (filtro!="") {    
	    $.ajax({
	        url: '../busqueda3M/' + filtro + '/' + tipo1 + '/' + visitador,
	        type: 'post',
	        async: true,
	        success: function(data) {
	    	if (data!=1) {
				switch (tipo1) {
					case "1":
						$("#articulos").empty();
			            $.each(JSON.parse(data), function(i, item) {
			            	contenido += `<li class="collection-item avatar">
			  								<i class="material-icons circle">local_mall</i>
			  								<span class="title">`+item['DESCRIPCION']+`</span><br>
			  								`+item['ARTICULO']+`
											<div class="row">
												<div class="col s12 m4"><span><b>Cantidad:</b> `+item['CANTIDAD']+`</span></div>
												<div class="col s12 m4"><span><b>Monto:</b> C$ `+item['VENTA']+`</span></div>
												<div class="col s12 m4"><span><b>Total veces faturado: </b>`+item['Hts']+`</span></div>
											</div>
											</li>`;

			            });
			            $("#articulos").append(contenido);
					break;
					case "2":
						$('#clientes').empty();
			            $.each(JSON.parse(data), function(i, item) {
			            	contenido += `<li class="collection-item avatar">
			  								<i class="material-icons circle">person</i>
			  								<span class="title">`+item['NOMBRE']+`</span><br>
			  								`+item['CCL']+`
											<div class="row">
												<div class="col s12 m4"><span><b>Total veces facturado:</b> `+item['Hts']+`</span></div>
												<div class="col s12 m4"><span><b>Monto:</b> C$ `+item['VENTA']+`</span></div>
											</div>
											</li>`;

			            });
			            $("#clientes").append(contenido);
					break;
					case "3":
						$("#vstCLA").empty();
			            $.each(JSON.parse(data), function(i, item) {
			            	contenido += `<li class="collection-item avatar">
			  								<i class="material-icons circle">local_mall</i>
			  								<span class="title">`+item['DESCRIPCION']+`</span><br>
			  								`+item['ARTICULO']+`
											<div class="row">
												<div class="col s12 m4"><span><b>Cantidad:</b> `+item['Cantidad']+`</span></div>
												<div class="col s12 m4"><span><b>Monto:</b> C$ `+item['Venta']+`</span></div>
												<div class="col s12 m4"><span><b>Fecha:</b> `+item['Dia']+`</span></div>
											</div></li>`;

			            });
			            $("#vstCLA").append(contenido);
			        break;
				}
	    	}else {
	    		Materialize.toast("Ups...No hemos podido encontrar algo con esa descripción!", 4000, 'rounded');
	    	}
	    }
	    }).done(function(data) {
	    	loadingPage(false);
	    });
	}else {
		changeTabs(tipo1);
	}
});
</script>