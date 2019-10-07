<main class="container">
	<span class="totales">TRANSACCIONES DEL SISTEMA</span>
	<div class="divider"></div><br>
		
	
	<div class="row">

		<div class="card">
			<div class="card-content">			
				<div class="row">
				<p id="result" style="display: none"></p>
					<div class="col s12 m4">
						<div class="input-group" style="margin-top: 17px">
							 <input type="text" class="form-control" id="txtBuscarTransaccion" placeholder="Buscar transacciones">
						</div>
			    	</div>
					
			    	<div class="input-field col s12 m3">
						<i class="material-icons prefix">date_range</i>
						<input id="F1" type="text" class="input-fecha" value="" >
						<label for="F1">Desde</label>
	    			</div>
	    			<div class="input-field col s12 m3">
						<i class="material-icons prefix">date_range</i>
						<input id="F2" type="text" class="input-fecha" readonly value="" >
						<label for="F2">Hasta</label>
	    			</div>
		    			
					<div class="right col s12 m2">
						<button id="btnFiltroxfecha" class="waves-effect waves-light external-button btn btn-small" style=" width: 100%; margin-top: 25px">
							<i class="material-icons">search
							</i>
						</button>
			
					</div>
					<div class="col s12 m12 divider" style="margin-top: 10px; margin-bottom: 10px">
						
					</div><br>
					<div class="col s12 m12">
						
			            <table id="tblventasDelSistema" class="display" cellspacing="0" width="100%">       
			            	<thead>
                                <tr>
                                    <th>FECHA VENTA</th>
					                <th>CODIGO VENTA</th>
					                <th>CLIENTE</th>
					            	<th>CONTACTO</th>
					            	<th>ESTADO</th>
					                <th>VER DETALLES</th>
                                </tr>
                            </thead>     	
					        <tfoot>
					            
					        </tfoot>
			            </table>
					</div>
				</div>
			</div>
		</div>
	</div>

</main>

<!--
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
												btnVerDetVnts	MODAL AGREGAR NUEVA VENTA
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
<div id="ModalVerDetVnts" class="modal">
	<div class="modal-content">
	    <label class="totales">DETALLE DE TRANSACCIONES</label>
	    <div class="divider"></div><br>
	    <div class="row">
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Fecha de Venta</div>
	    		<div class="input-group">
	  				<div   id="txtVerFechaVnt" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Codigo de Venta</div>
	    		<div class="input-group">
	  				<div   id="txtVerCodVnt" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Nombre de Cliente</div>
	    		<div class="input-group">
	  				<div   id="txtVerNomClteVnt" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>

	    </div>
	    <div class="divider"></div><br>
	    <div class="row">
	    	<div class="col s12 m12">
	            <table id="tblVerDetVntTerceros" class="display" cellspacing="0" width="100%"  style="margin: 0px; padding: 0px">     
		            <thead>
	                    <tr>
			            	<th>CODIGO</th>
			                <th>PRODUCTO</th>
			                <th>CANTIDAD</th>
			            </tr>
	                </thead>        	
			        <tfoot>
			        </tfoot>
	            </table>
			</div>
	    </div>
	</div>
</div>

