<div class="container">
	<div class="row">
		<div class="card">			
			<div class="card-content">
			    <div class='row totales-content'>
			        <div class='col s12 m6'>
						<span class="card-title"><i class="small material-icons">import_contacts</i> Información Farmacia</span>
			        </div>
			    </div>
				<div class="row">
					<div class="col s12 m12">
						<div class="card-tabs">
							<ul class="tabs tabs-fixed-width">
								<li class="tab"><a class="active" href="#test1">Información General</a></li>
								<li class="tab"><a href="#test2">Mas Información</a></li>
							</ul>
							<div id="test1">
								<div class="row" style="width: 95%; margin: 0 auto">
									<div class="col s12 m12"><br>
									<?php
									if ($dt) {
										echo '
										<div class="row">
										<input id="idFarmacia" type="hidden" class="validate edit" readonly value="'.$dt[0]['IdFarmacia'].'">
										</div>
										<div class="row">
											<div class="input-field col s12 m10">
												<i class="material-icons prefix">store</i>
												<input id="nombreFarmacia" type="text" class="validate edit" readonly value="'.$dt[0]['NombreFarmacia'].'">
												<label for="nombreFarmacia">Nombre Farmacia</label>
											</div>
											<div class="col s12 m2">
											<div style="font-size: 0.8em">Usuario del sistema</div>
												<a class="waves-effect waves-light btn" id="btnCrearPassFarmacias" style=" font-size: 0.9em"></a>
												
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m12">
												<i class="material-icons prefix">room</i>
												<textarea id="direccion" type="text" class="validate materialize-textarea edit" readonly >'.$dt[0]['Direccion'].'</textarea>
												<label for="direccion">Dirección</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">account_circle</i>
												<input id="nombrePropietario" type="tel" class="validate edit" readonly value="'.$dt[0]['NombrePropietario'].'" >
												<label for="nombrePropietario">Nombre Propietario</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">phone</i>
												<input id="telfPropietario" type="text" class="validate edit" readonly value="'.$dt[0]['TelfPropietario'].'">
												<label for="telfPropietario">Telefono Propietario</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">date_range</i>
												<input id="fechaAniversario" type="text" class="input-fecha" readonly value="'.date("d/m/Y", strtotime($dt[0]['FechaAniversario'])).'">
												<label for="fechaAniversario">Fecha aniversario</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">phone</i>
												<input id="telfFarmacia" type="text" class="validate edit" readonly value="'.$dt[0]['TelfFarmacia'].'">
												<label for="telfFarmacia">Telefono Farmacia</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">watch_later</i>
												<input id="horaAtencion" type="tel" class="validate edit" readonly value="'.$dt[0]['HorarioAtencion'].'">
												<label for="horaAtencion">Horario Atención</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">account_circle</i>
												<input id="respCompra" type="text" class="validate edit" readonly value="'.$dt[0]['ResponsableCompra'].'">
												<label for="respCompra">Responsable Compra</label>
											</div>
										</div>
										<div class="row">
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">phonelink_ring</i>
												<input id="telfRespCompra" type="tel" class="validate edit" readonly value="'.$dt[0]['TelfRespCompra'].'">
												<label for="telfRespCompra">Celular resp. compra</label>
											</div>
											<div class="input-field col s12 m6">
												<i class="material-icons prefix">filter_9_plus</i>
												<input id="cantDependiente" type="text" class="validate edit" readonly value="'.$dt[0]['CantDependiente'].'">
												<label for="cantDependiente">Cantidad Dependiente</label>
											</div>
										</div>';
									}
									?>
									</div>
								</div>
							</div>
							<div id="test2">
								<div class="row" style="width: 90%; margin: 0 auto;">							
								<?php
								$ppp=""; $ebd=""; $pi=""; $cc="";
								if ($dt) {

									$ppp=$dt[0]['PartProgPuntos']==1 ? 'checked' : '';
									$ebd=$dt[0]['EntregaBenefDepend']==1 ? 'checked' : '';
									$pi=$dt[0]['PermiteImpulsadoras']==1 ? 'checked' : '';
									$cc=$dt[0]['CadenaCooperativa']==1 ? 'checked' : '';
									
									echo '
									<div class="row"><br>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">monetization_on</i>
											<input id="potencialMensualComp" type="tel" class="validate edit" readonly value="'.$dt[0]['PotencialMensualCompra'].'" >
											<label for="potencialMensualComp">Potencial mensual compra</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">insert_invitation</i>
											<input id="diasPagoFact" type="text" class="validate edit" readonly value="'.$dt[0]['DiasPagoFact'].'">
											<label for="diasPagoFact">Dias pago factura</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">person</i>
											<input id="respVencidos" type="tel" class="validate edit" readonly value="'.$dt[0]['RespVencidos'].'">
											<label for="respVencidos">Responsable de vencidos</label>
										</div>
										<div class="input-field col s12 m6">
											<i class="material-icons prefix">person</i>
											<input id="respCanjes" type="text" class="validate edit" readonly value="'.$dt[0]['RespCanjes'].'">
											<label for="respCanjes">Responsable de canjes</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12 m12">
											<i class="material-icons prefix">filter_9_plus</i>
											<input id="NumDepMostrador" type="tel" class="validate edit" readonly value="'.$dt[0]['NumDepMostrador'].'">
											<label for="NumDepMostrador">N° de dependientes en mostrador</label>
										</div>
									</div>
									<div class="col s12 m12">
										<div class="row">
											<div class="col s12 m12">
												<input type="checkbox" class="editChk" id="chkppp" '.$ppp.' disabled />
												<label for="chkppp">Participa de programa de puntos</label>
											</div>
										</div>
										<div class="row">
											<div class="col s12 m12">
												<input type="checkbox" class="editChk" id="chkebd" '.$ebd.' disabled />
												<label for="chkebd">Entrega beneficios a dependientes</label>
											</div>
										</div>
										<div class="row">
											<div class="col s12 m12">
												<input type="checkbox" class="editChk" id="chkpi" '.$pi.' disabled />
												<label for="chkpi">Permite impulsadoras</label>
											</div>
										</div>
										<div class="row">
											<div class="col s12 m12">
												<input type="checkbox" class="editChk" id="chkcc" '.$cc.' disabled />
												<label for="chkcc">Es parte de cadena o cooperativa</label>
											</div>
										</div>
									</div>';
								}
								?>
								</div>
							</div>
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