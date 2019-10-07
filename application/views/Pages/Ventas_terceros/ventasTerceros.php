<main class="container">
	<span class="totales">TRANSACCIONES REALIZADAS</span><?php if($this->session->userdata('rol')==3) echo '<span class="totales">&nbspPOR&nbsp</span> <span class="totales" id="nomUser"> </span>'?>
	<div class="divider"></div><br>



	<div class="row">

		<div class="card">
			<div class="card-content">			
				<div class="row">
					<div class="col s12 m4">
						<div class="input-group" style="margin-top: 17px">
							 <input type="text" class="form-control clssIMPUT" id="txtBuscarTransaccionClientes" placeholder="Buscar transacciones">
						</div>
			    	</div>

			    	<div class="input-field col s12 m3">
						<i class="material-icons prefix">date_range</i>
						<input id="F1C" type="text" class="input-fecha" value="" >
						<label for="F1C">Desde</label>
	    			</div>
	    			<div class="input-field col s12 m3">
						<i class="material-icons prefix">date_range</i>
						<input id="F2C" type="text" class="input-fecha" readonly value="" >
						<label for="F2C">Hasta</label>
	    			</div>
		    			
					<div class="right col s12 m2">
						<button id="btnFiltroxfechaCLiente" class="waves-effect waves-light external-button btn btn-small" style=" width: 100%; margin-top: 25px">
							<i class="material-icons">search
							</i>
						</button>
			
					</div>
					<div class="col s12 m12 divider" style="margin-top: 10px; margin-bottom: 10px">
						
					</div><br>

					<div class="right col s12 m3" >
						<a href="#MAddVentaNueva"  class="waves-effect waves-light btn modal-trigger" style="width: 100%; margin-top: 10px">Nueva transacción</a>
					</div>
					<div class="col s12 m12">
			            <table id="tblVtsTerceros" class="display" cellspacing="0" width="100%">       
			            	<thead>
                                <tr>
                                    <th>FECHA</th>
					                <th>CODIGO</th>
					                <th>CLIENTE</th>
					            	<th>CONTACTO</th>
					            	<th>ESTADO</th>
					                <th>OPCINOES</th>
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
													MODAL AGREGAR NUEVO PEDIDO
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
<div id="MAddVentaNueva" class="modal">
	<div class="modal-content">
		<div class="row ">
		    <div class="col">
		    	<label class="totales">Crear Pedidos</label>
		    </div>
		    <div class="col" style="float: right;">
		    	<div id="txtFechaNewFact" style="" > <?php echo date("d-m-Y");?> </div>
		    </div>
		</div>
	    <div class="divider"></div><br>
	    <div class="row">

	    	<div class="row">

		    	
		    	<div class="col12">
		    		<div>Seleccione el Cliente</div>
		    		<div class="input-group" >
                        <select class="chosen-select browser-default" id="ListCliente">
                            <option value="" disabled selected>...</option>
                            <?php foreach($arClientes as $Cln) echo '<option value="'.$Cln['CLIENTE'].'">'.$Cln['CLIENTE'].' - '.$Cln['NOMBRE'].'</option>'; ?>
                        </select>
					</div>
		  			</div>
		    	</div>
		    	<div class="col m12" style="margin-top: 10px;" id="infoClienteCrarPedidos">
		    		<div class="row">
		    			<div class="col m12">
			    			<div class="col m2 l1"><span>Dirección: </span></div>
			    			<div class="col m10 l11"> <span id="labelDirCrearPedido">XD</span></div>
		    			</div>


		    			<div class="col m12">
				    		<div class="row">
				    			<div class="col s12 m4">
				    				<div class="card">
				    					<div class="card-content">
					    					<div>
					    						Limite Credito
					    					</div>
					    					<hr>
					    					<div id="limitCredCrearPedido">
					    						
					    					</div>
					    				</div>
				    				</div>
				    			</div>
				    			<div class="col s12 m4">
				    				<div class="card">
				    					<div class="card-content">
					    					<div>
					    						Saldo
					    					</div>
					    					<hr>
					    					<div id="saldoCrearPedido">
					    						
					    					</div>
					    				</div>
				    				</div>
				    			</div>
				    			<div class="col s12 m4">
				    				<div class="card">
				    					<div class="card-content">
					    					<div>
					    						Disponible
					    					</div>
					    					<hr>
					    					<div id="DispondCrearPedido">
					    						
					    					</div>
					    				</div>
				    				</div>
				    			</div>
				    		</div>
				    	</div>
		    		</div>
		    	</div>
		    	
		    	
		    	<div class="col s12 m3">
		    		
		    		
		  				<span id="txtContactNewFact" hidden="true"></span>
		  			
		    	</div>
		    </div>
        <div class="row">
            <span>Seleccione el Producto</span>
            <select class="chosen-select browser-default" name="Articulo" id="ListArticulo">
                <option value="" disabled selected>...</option>
                <?php foreach($arArticulos as $Art) echo '<option value="'.$Art['ARTICULO'].'">'.$Art['ARTICULO'].' - '.$Art['DESCRIPCION'].'</option>'; ?>
            </select>
        </div>
	    	<div class="row">
		    	<div class="col s12 m4">
                    <div class="Seleccione el Producto">Cantidad: </div>
                    <div class="input-group">
                        <input type="text" class="form-control" id="txtCantidad" placeholder="Cantidad"/>
                    </div>
		    	</div>
		    	<div class="col s12 m2">
		    		<div class="Seleccione el Producto">Precio C$.:</div>
		    		<div class="input-group">
		  				<input type="text" class="form-control" id="txtPrecio" placeholder="Precio"/>
		  			</div>
		    	</div>
		    	<div class="col s12 m2">
		    		<div class="Seleccione el Producto">Bonificación</div>

		  				<select  id="slcCantidad">
		  					<option value="0">Elegir</option>
		  				</select>
		    	</div>
		    	<div class="col s12 m2">
		    		<div class="Seleccione el Producto">Cantidad</div>
		    		<div class="input-group">
		  				<input type="text" class="form-control" id="txtCantidad" placeholder="Cantidad"/>
		  			</div>
		    	</div>

		    	<div class="col s12 m2" style="margin-top: 23px">
		    		<button id="addProdDet" class="waves-effect waves-light external-button btn btn-small" style="width: 100%;">
		    			<i class="material-icons">add_circle</i>
		    		</button>
		    	</div>
		    </div>
		    
	    	<div class="col s12 m12" style="margin-bottom:35px">
	            <table id="tblDetVntTerceros" class="display" cellspacing="0" width="100%">     
		            <thead>
	                     <tr>
			            	<th>CODIGO</th>
			                <th>PRODUCTO</th>
			                <th>CANTIDAD</th>
			                <th>PRECIO</th>
			                <th>BONIF.</th>
			                <th>TOTAL</th>
			                <th>QUITAR</th>
			            </tr>
	                </thead>        	
			        <tfoot>
			        </tfoot>
	            </table>
	            <div style="text-align: right;"><span>SUB-TOTAL: C$</span> <span id="spanTotalPedido" >0.00</span></div>
	            <div style="text-align: right;"><span>IVA: C$</span> <span id="spanIvaPedido" >0.00</span></div>
	            <div style="text-align: right;"><span>TOTAL: C$</span> <span id="spanGranTotalPedido" >0.00</span></div>


			</div>
			<div class="right col s12 m3">
				<div>
	    			<a class="waves-effect waves-light btn" id="addNewVnt" style="width: 100%"><i class="material-icons">save</i></a>
	    		</div>
	    	</div>
	    </div>
	</div>
</div>


<!--
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
												btnVerDetVnts	MODAL AGREGAR NUEVA VENTA
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
<div id="ModalVerDetVnts" class="modal">
	<div class="modal-content">
	    <label class="totales">VISUALIZAR DETALLES DE TRANSACCIONES</label>
	    <div class="divider"></div><br>
	    <div class="row">
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Fecha de transacción</div>
	    		<div class="input-group">
	  				<div   id="txtVerFechaVnt" style="font-size: 1.3em">
	  				</div>
	  			</div>
	    	</div>
	    	<div class="col s12 m4">
	    		<div class="Seleccione el Producto" style="font-weight: bolder;">Codigo de transacción</div>
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

