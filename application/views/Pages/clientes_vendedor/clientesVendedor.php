<div class="container"><br>
	<span class="totales">CLIENTES</span>
	<div class="divider"></div><br>
	
	<div class="row">
		<div class="col s12 m7">
			<div class="input-group">
				<span class="input-group-addon"><i class="small material-icons">search</i></span>
		  		<input type="text" class="form-control" id="txtBuscarClteProd" placeholder="filtrar busquda" >
	  		</div>
		</div>
		<div class="col s12 m3">
			 <select style="width: 100%" id="selectRutas">
			 </select>
		</div>
		<div class="col s12 m2">
			<button class="external-button btn btn-small"  onclick="buscarClientesXRutaVendedor()" style="float: right;  margin-right: 2px; width: 100%; height: 100%"> <i class="small material-icons">search</i></button>
		</div>
	
	</div>
	<div class="row">
		<div class="col s12 m12">
            <table id="tblCltexRutaVende" class="display" cellspacing="0" width="100%">            	
		        <thead>
                    <tr>
		                <th>CODIGO</th>
		                <th>CLIENTE</th>
		            	<th>DIRECCIÓN</th>
		                <th>RUTA</th>
                    </tr>
                </thead>     	
		        <tfoot>
		            
		        </tfoot>
            </table>
		</div>
	</div>
</div>




<!--///////////////////////////////////////////////////////////////////////////////////////////////////////////
										MODAL DETALLE PRODUCTOS POR CLIENTE
	///////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<div id="ModalCLientesDetallesProd" class="modal">
	<div class="modal-content">
	    <div style="font-weight: bold;"><span id="txtVerCodVnt" style="font-size: 1.3em"></span>&nbsp-&nbsp
	    	<span id="txtVerNomClteVnt" style="font-size: 1.3em"></span>&nbsp-&nbsp
	    	<span  id="txtVerFechaVnt" style="font-size: 1.3em">
	  				</span>
	  	</div>
	    <div class="divider"></div><br>
	    
	    <div class="row">
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Crédito</div>
	    		<div class="input-group">
	  				<div   id="txtVerCredito" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Saldo</div>
	    		<div class="input-group">
	  				<div   id="txtVerSaldo" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Disponible</div>
	    		<div class="input-group">
	  				<div   id="txtVerDisponible" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>

	    </div>
	    <div class="divider"></div><br>
	    <div class="row">
	    	<div class="col s12 m12">
	            <table id="tblDetProdClte" class="display" cellspacing="0" width="100%"  style="margin: 0px; padding: 0px">     
		            <thead>
	                    <tr>
			            	<th>ARTICULO</th>
			                <th>DESCRIPCIÓN</th>
			                <th>CANTIDAD</th>
			                <th>VENTA</th>
			            </tr>
	                </thead>        	
			        <tfoot>
			        </tfoot>
	            </table>
			</div>
	    </div>
	</div>
</div>