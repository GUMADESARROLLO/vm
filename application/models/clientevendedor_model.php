<?php
/**
 * 
 */
class Clientevendedor_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }


   


    public function cargarTablaClienteRuta(){
    	$json = array();
    	$i=0;
    	
    	$query = $this->db->select("Rutas")->where("Usuario", $this->session->userdata('usuario'))->get("usuarios");

        $ruta = $query->result_array();


    	$query = $this->sqlsrv->fetchArray("SELECT vmc.CLIENTE, vmc.NOMBRE, vmc.DIRECCION, vmc.VENDEDOR FROM vm_Clientes vmc WHERE vmc.VENDEDOR IN (".$ruta[0]['Rutas'].") GROUP BY vmc.NOMBRE, vmc.CLIENTE, vmc.DIRECCION,  vmc.VENDEDOR;", SQLSRV_FETCH_ASSOC);

    	
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['CLIENTE'] = '<a href="#ModalCLientesDetallesProd" id="btnVerDetProdClte" class="noHover modal-trigger">'. $key['CLIENTE'].'</a>'; 
                        $json[$i]['NOMBRE'] =$key['NOMBRE'];
                        $json[$i]['DIRECCION'] = $key['DIRECCION'];
                        $json[$i]['RUTA'] = $key['VENDEDOR'];
                        $i++; 
                    }
                    $json[0]['RUTAS'] = $ruta[0]['Rutas'];//Agregamos todas las rutas en el indice 0 para poder hacer consultas por ruta por medio del un select donde estaran estos valores;
                    
                }
                if ($json == null) {
                	echo 0;
                }else{

               		echo json_encode($json);
                }

                $this->sqlsrv->close();

    }


    public function LlenarTablaDetProdClte($codClte){

    	$json = array();
    	$i=0;


    	

    	$query = $this->sqlsrv->fetchArray("SELECT vmdp.ARTICULO, vmdp.DESCRIPCION, vmdp.Cantidad, vmdp.Venta FROM vm_HstItemFacturados vmdp WHERE vmdp.CCL = ".$codClte." GROUP BY vmdp.ARTICULO, vmdp.DESCRIPCION, vmdp.Cantidad,  vmdp.Venta;", SQLSRV_FETCH_ASSOC);

    	
        if (count($query)>0) {
            foreach ($query as $key) { 
                $json[$i]['ARTICULO'] =  $key['ARTICULO']; 
                $json[$i]['DESCRIPCION'] =$key['DESCRIPCION'];
                $json[$i]['Cantidad'] = number_format($key['Cantidad'], 2, '.', ',');
                $json[$i]['Venta'] = number_format($key['Venta'], 2, '.', ',');
                $i++; 
            }
            
        }
        if ($json == null) {
        	echo 0;
        }else{

       		echo json_encode($json);
        }

        $this->sqlsrv->close();
    }

    public function obtenerdatosContablesCltes($codClte){

        
        $json = array();
        $i=0;


        

        $query = $this->sqlsrv->fetchArray("SELECT SACCRED.LIMITE_CREDITO, SACCRED.SALDO, SACCRED.CREDITODISP FROM SAC_DISP_CREDITO_UMK SACCRED WHERE SACCRED.CLIENTE = ".$codClte." GROUP BY SACCRED.LIMITE_CREDITO, SACCRED.SALDO, SACCRED.CREDITODISP;", SQLSRV_FETCH_ASSOC);

        
            if (count($query)>0) {
                foreach ($query as $key) { 
                    $json[$i]['CREDITO'] =  number_format($key['LIMITE_CREDITO'], 2, '.', ','); 
                    $json[$i]['SALDO'] = number_format($key['SALDO'], 2, '.', ',');
                    $json[$i]['DISPONIBLE'] = number_format($key['CREDITODISP'], 2, '.', ',');
                    $i++; 
                }
                
            }
            if ($json == null) {
                echo 0;
            }else{

                echo json_encode($json);
            }

            $this->sqlsrv->close();

    }

    public function rutasXVendedorlogiado(){



    }


    public function buscarClientesXRutaVendedor($ruta){

        $json = array();
        $i=0;
        
        
        
        $query = $this->sqlsrv->fetchArray("SELECT vmc.CLIENTE, vmc.NOMBRE, vmc.DIRECCION, vmc.VENDEDOR FROM vm_Clientes vmc WHERE vmc.VENDEDOR = '".$ruta."' GROUP BY vmc.NOMBRE, vmc.CLIENTE, vmc.DIRECCION,  vmc.VENDEDOR;", SQLSRV_FETCH_ASSOC);

        
        if (count($query)>0) {
            foreach ($query as $key) { 
                $json[$i]['CLIENTE'] = '<a href="#ModalCLientesDetallesProd" id="btnVerDetProdClte" class="noHover modal-trigger">'. $key['CLIENTE'].'</a>'; 
                $json[$i]['NOMBRE'] =$key['NOMBRE'];
                $json[$i]['DIRECCION'] = $key['DIRECCION'];
                $json[$i]['RUTA'] = $key['VENDEDOR'];
                $i++; 
            }
            
        }
        if ($json == null) {
            echo 0;
        }else{

            echo json_encode($json);
        }

        $this->sqlsrv->close();
        
    }


}



?>