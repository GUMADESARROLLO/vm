<div class="container"><br>
	<span class="totales">FARMACIAS</span>
	<div class="divider"></div><br>
	<div class="row">
		<div class="col s12 m11">
			<div class="input-group">
			  <span class="input-group-addon"><i class="small material-icons">search</i></span>
			  <input type="text" class="form-control" id="txtBuscarFarm" placeholder="Buscar en Farmacias">
			</div>			
		</div>
	  <div class="col s12 m1">
	    <select id="select1">
	    	<option value="" selected>*</option>
			<?php
				if ($rutas) {				
					foreach ($rutas as $key) {
						echo '<option value="'.$key['value'].'"><b>'.$key['desc'].'</b></option>';
					}
				}
			?>
	    </select>
	  </div>
	</div>
	<div class="row">
		<div class="col s12 m12">
            <table id="tblFarmacias" class="display" cellspacing="0" width="100%"></table>
		</div>
	</div>
</div>
