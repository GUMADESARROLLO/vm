<div class="commmit-1">
	<div class="row">
		<div class="col s12 m12">
			<div class="card">
				<div class="card-content">
					<span class="card-title">Comentarios</span>
					<?php 
						if ($dm) {
							echo $dm[0]['cCommit'];
						}
					?>
				</div>
			</div>	
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="card">			
			<div class="card-content">
			    <div class='row totales-content'>
			        <div class='col s12 m6'>
						<span class="card-title"><i class="small material-icons">person</i> Información Médico</span>
			        </div>
			    </div>
				<div class="row">
					<div class="col s12 m12">
						<div class="card-tabs">
							<ul class="tabs tabs-fixed-width">
								<li class="tab"><a class="active" href="#test1">Perfil del medico</a></li>
								<li class="tab"><a href="#test2">Información general</a></li>
								<li class="tab"><a href="#test3">MAS</a></li>
							</ul>
							<?php 
							if ($dm) {
							$pf=$dm[0]['PFarmacia']==1 ? 'checked' : '';
							
							echo '
							<div id="test1">
								<div class="row" style="width: 95%; margin: 0 auto">
									<div class="col s12 m12"><br>
										<div class="row">
										<input id="IdMedico" type="hidden" class="validate edit" readonly value="'.$dm[0]['IdMedico'].'">
										</div>
										<div class="row">
											<div class="input-field col s12 m10">
												<i class="material-icons prefix">person</i>
												<input id="NombreMedico" type="text" class="validate edit" readonly value="'.$dm[0]['NombreMedico'].'">
												<label for="NombreMedico">Nombre Completo</label>
											</div>
											<div class="col s12 m2">
											<div style="font-size: 0.8em">Usuario del sistema</div>
												<a class="waves-effect waves-light btn" id="btnCrearPassFarmacias" style=" font-size: 0.9em"></a>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m12">
												<i class="mdi mdi-certificate prefix"></i>
												<input id="Especialidades" type="text" class="validate edit" readonly value="'.$dm[0]['Especialidad'].'">
												<label for="Especialidades">Especialidad</label>
											</div>
											<div class="input-field col s12 m6" style="display:none;">
												<i class="mdi mdi-credit-card prefix"></i>
												<input id="Celular" type="text" class="validate edit" readonly value="'.$dm[0]['SubEspecialidad'].'">
												<label for="Celular">Sub Especialidad</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m12">
												<i class="material-icons prefix">location_on</i>
												<textarea id="Direccion" type="text" class="validate edit materialize-textarea" readonly >'.$dm[0]['Direccion'].'
												</textarea>
												<label for="Direccion">Direccion</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">phone</i>
												<input id="TelfClinica" type="text" class="validate edit" readonly value="'.$dm[0]['TelfClinica'].'">
												<label for="TelfClinica">Telefono Clinica</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">phone_iphone</i>
												<input id="Celular" type="text" class="validate edit" readonly value="'.$dm[0]['Celular'].'">
												<label for="Celular">Celular</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">date_range</i>
												<input id="FNacimiento" type="text" class="input-fecha" readonly value="'.date("d/m/Y", strtotime($dm[0]['FNacimiento'])).'">
												<label for="FNacimiento">Fecha nacimiento</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">mail</i>
												<input id="Email" type="text" class="validate edit" readonly value="'.$dm[0]['Email'].'">
												<label for="Email">Correo electronico</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="mdi mdi-facebook-box prefix"></i>
												<input id="Facebook" type="text" class="validate edit" readonly value="'.$dm[0]['Facebook'].'">
												<label for="Facebook">Facebook</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="mdi mdi-twitter prefix"></i>
												<input id="Twitter" type="text" class="validate edit" readonly value="'.$dm[0]['Twitter'].'">
												<label for="Twitter">Twitter</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="mdi mdi-instagram prefix"></i>
												<input id="Instagram" type="text" class="validate edit" readonly value="'.$dm[0]['Instagram'].'">
												<label for="Instagram">Instagram</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="mdi mdi-linkedin-box prefix"></i>
												<input id="Linkedin" type="text" class="validate edit" readonly value="'.$dm[0]['Linkedin'].'">
												<label for="Linkedin">Linkedin</label>
											</div>
										</div>
									</div>
								</div>
							</div>	
							<div id="test2">
								<div class="row" style="width: 90%; margin: 0 auto;">
									<div class="row"><br>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">place</i>
											<input id="OLBAMedica" type="text" class="validate edit" readonly value="'.$dm[0]['OLBAMedica'].'" >
											<label for="OLBAMedica">Otro lugar donde brinda asistencia medica</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="mdi mdi-tennis prefix"></i>
											<input id="DeportePractica" type="text" class="validate edit" readonly value="'.$dm[0]['DeportePractica'].'">
											<label for="DeportePractica">Deporte que practica</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">directions_bike</i>
											<input id="Pasatiempo" type="tel" class="validate edit" readonly value="'.$dm[0]['Pasatiempo'].'">
											<label for="Pasatiempo">Pasatiempos</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="mdi mdi-account-group prefix"></i>
											<input id="SMParticipa" type="text" class="validate edit" readonly value="'.$dm[0]['SMParticipa'].'">
											<label for="SMParticipa">Sociedad medica en que participa</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m12">
											<i class="material-icons prefix">school</i>
											<input id="AUGraduacion" type="text" class="validate edit" readonly value="'.$dm[0]['AUGraduacion'].'">
											<label for="AUGraduacion">Año y Universidad de graduación</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">wc</i>
											<input id="NEPSPrivado" type="text" class="validate edit" readonly value="'.$dm[0]['NEPSPrivado'].'">
											<label for="NEPSPrivado"># Estimado paciente semanal privado</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="mdi mdi-cash-multiple prefix"></i>
											<input id="CConsulta" type="text" class="validate edit" readonly value="'.$dm[0]['CConsulta'].'">
											<label for="CConsulta">Costo de consulta</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m12">
											<i class="material-icons prefix">transfer_within_a_station</i>
											<textarea id="MCMFrecuente" type="text" class="validate edit materialize-textarea" readonly >'.$dm[0]['MCMFrecuente'].'</textarea>
											<label for="MCMFrecuente">Motivos de consulta mas frecuente</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">person</i>
											<input id="SocioClinica" type="text" class="validate edit" readonly value="'.$dm[0]['SocioClinica'].'">
											<label for="SocioClinica">Socio de clinica</label>
										</div>
										<div class="input-field col s12 m6">											
											<input id="respCanjes" type="checkbox" class="validate edit" '.$pf.' readonly value="">
											<label for="respCanjes">Propietario de Farmacia</label>
										</div>
									</div>
								</div>
							</div>
							<div id="test3">
								<div class="row" style="width: 90%; margin: 0 auto;">
									<div class="row"><br>
										<span class="totales">Marcas de</span>
										<div class="divider"></div><br>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">phone_iphone</i>
											<input id="MCelular" type="text" class="validate edit" readonly value="'.$dm[0]['MCelular'].'">
											<label for="MCelular">Celular</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">directions_car</i>
											<input id="MVehiculo" type="text" class="validate edit" readonly value="'.$dm[0]['MVehiculo'].'">
											<label for="MVehiculo">Vehiculo</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">watch</i>
											<input id="MReloj" type="text" class="validate edit" readonly value="'.$dm[0]['MReloj'].'">
											<label for="MReloj">Reloj</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">laptop</i>
											<input id="MComputadora" type="text" class="validate edit" readonly value="'.$dm[0]['MComputadora'].'">
											<label for="MComputadora">Computadora</label>
										</div>
									</div>
									<div class="row"><br>
										<span class="totales">Info. Asistente</span>
										<div class="divider"></div><br>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">person</i>
											<input id="NombreAsis" type="text" class="validate edit" readonly value="'.$dm[0]['NombreAsis'].'">
											<label for="NombreAsis">Nombre</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">phone</i>
											<input id="TExtensionAsis" type="text" class="validate edit" readonly value="'.$dm[0]['TExtensionAsis'].'">
											<label for="TExtensionAsis">Telefono Extencion</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">phone_iphone</i>
											<input id="CelularAsis" type="text" class="validate edit" readonly value="'.$dm[0]['CelularAsis'].'">
											<label for="CelularAsis">Celular</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">mail</i>
											<input id="EmailAsis" type="text" class="validate edit" readonly value="'.$dm[0]['EmailAsis'].'">
											<label for="EmailAsis">Correo electronico</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">date_range</i>
											<input id="FNacimientoAsis" type="text" class="input-fecha" readonly value="'.date("d/m/Y", strtotime($dm[0]['FNacimientoAsis'])).'">
											<label for="FNacimientoAsis">Fecha nacimiento</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">laptop</i>
											<input id="ComputadoraAsis" type="text" class="validate edit" readonly value="'.$dm[0]['ComputadoraAsis'].'">
											<label for="ComputadoraAsis">Computadora</label>
										</div>
									</div>
								</div>
							</div>
							';}?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="opcButtons" class="fixed-action-btn" style="display: none;">
	<a href="#!" id="editarFarmacia" class="btn-floating waves-effect waves-light red darken-4">
		<i class="material-icons">create</i>
	</a>
</div>