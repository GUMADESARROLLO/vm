<div class="login-content">
	<div class="row">
		<div class="col s12 m12">
			<div class="card">
				<div class="card-content">
					<div class="img-log">
						<img class="img-responsive" src="<?php echo base_url();?>assets/img/gmv_logo.png">
						<center><span>Gestión de Visita Médica</span></center>
					</div>
					<div class="divider"></div><br>
					<div class="form-login">
						<form class="form" method="post" action="<?php echo base_url('index.php/acreditando')?>">
							<div  class="row">
								<div class="col s12 m12 ">
									<div class="input-group">
									  <span class="input-group-addon"><i class="small material-icons">person</i></span>
									  <input placeholder="Usuario" name="usuario" id="usuario" type="text" class="validate">
									</div>									
								</div>
							</div>
							<div class="row">
								<div class="col s12 m12">
									<div class="input-group">
									  <span class="input-group-addon"><i class="small material-icons">lock</i></span>
									  <input placeholder="Contraseña" name="password" id="password" type="password" class="validate">
									</div>
								</div>
							</div>   
							<div class="row center">
								<input class="btn" style="width: 95%; height: 44px" type="submit" name="submit" value="Entrar">
							</div>
						</form>
					</div>
				<center><h5 style="color: red;"><?php if(isset($mensaje)) echo $mensaje; ?></h5></center>
				<center><span style="color: red;"><?=validation_errors();?></span></center>
				</div>				
			</div>
		</div>
	</div>	
</div>