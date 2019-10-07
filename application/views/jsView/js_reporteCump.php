<script type="text/javascript">
$(document).ready(function() {
	dataReporteCumplimiento();	
	buttonReturn();
});

$("#txtBuscarRpt").on("keyup", function() {
	var value = $(this).val();
	$("#myBody tr").filter(function() {
		var filter = $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	});
});

var tableOffset, $header, $fixedHeader;
function dataReporteCumplimiento() {
	loadingPage(true);
	$.ajax({
		url: "../index.php/reportes_controller/rptDataCumplimiento",
		type: 'post',
		async: true,
		success: function(data) {
			var titles=""; var tbody=""; numRows=0; var visitadores=""; ii=1; clase="";
			if (data!=false) {
			$.each(JSON.parse(data), function(i, item) {
				numRows=item['CUOTAXVIS'].length;

				tbody += '<tr><td>'+item['ARTICULO']+'</td>';
				tbody += '<td style="text-align: left">'+item['DESCRIPCION']+'</td>';

				$.each(item['CUOTAXVIS'], function(i, item) {					
					v1 = i % 2;
					if(v1==0)
						clase="estilo1";
					else
						clase="estilo2";

					tbody +=`
					<td style="text-align: center" class="`+clase+`">`+item['CANT']+`</td>
					<td style="text-align: center" class="`+clase+`">`+item['FACT']+`</td>
					<td style="text-align: center" class="`+clase+`">`+item['PORC']+`%</td>`;

					if (ii<=numRows) {						
						visitadores += `<th colspan="3" style="padding: 10px" class="`+clase+`">`+item['VISI']+`</th>`;
					}
					ii++;
				});
				tbody+='<tr>';
			});

			for (var i = 0; i < numRows; i++) {
				titles+=`
				<th class="d-t">CANT</th>
				<th class="d-t">FACT</th>
				<th class="d-t">PORC</th>`;
			}
			var table1 =
				`<table id="tblTemporal" class="" cellspacing="0">
					<thead>
						<tr>
							<th rowspan="2" style="background: #eeeeee" width="1%" >ARTICULOS</th>
							<th rowspan="2" style="background: #eeeeee" width="1%" >DESCRIPCION</th>
							` + visitadores + `
						</tr>
						<tr>
							` + titles + `
						</tr>
					</thead>
				<tbody id="myBody">
				` + tbody + `
				</tbody>
				</table>`;

				$("#after-1").after(table1);

				tableOffset = $("#tblTemporal").offset().top;
				$header = $("#tblTemporal > thead").clone();
				$fixedHeader = $("#tblTemporal1").append($header);

				$("#tblTemporal1 thead tr th").css('text-align','center');
				$("#tblTemporal1 thead tr th").css('border','1px solid #e2e2e2');

			}else {
				Materialize.toast("Ups...ocurrio un problema al tratar de actualizar!", 4000, 'rounded');
			}
		}
	}).done(function(data) {		
		loadingPage(false);
	});

	$(window).bind("scroll", function() {
	    var offset = $(this).scrollTop();	    
	    if (offset >= tableOffset && $fixedHeader.is(":hidden")) {
	        $fixedHeader.show();
	    }
	    else if (offset < tableOffset) {
	        $fixedHeader.hide();
	    }
	});
}

$("#imprimirRptC").click( function() {
	location.href = "../index.php/reportes_controller/exportarDataExcelCump";
})

</script>