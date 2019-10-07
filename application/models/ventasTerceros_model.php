<?php 
class VentasTerceros_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }



public function NomUsuarioActual($iduser){
 $this->db->select('Nombre_visitador');
        $this->db->from("usuarios");
        $this->db->where("Usuario",$iduser);
        $query = $this->db->get();
        $resultado = $query->result_array();
        echo json_encode($resultado);
}



    public function listandoProductos($data) {
        
        $temp=array(); $i=0;
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_mstr_articulos WHERE DESCRIPCION LIKE '".$data['buscar']."%' ORDER BY DESCRIPCION", SQLSRV_FETCH_ASSOC);
        

        if (count($query)>0) {
            
            foreach ($query as $key) {
                 $temp[] = array(
                    'desc' => $key['DESCRIPCION'],
                    'cod' => $key['ARTICULO'],
                    'value' => $key['ARTICULO']." - ". $key['DESCRIPCION']
                );
                $i++;
            }
            echo json_encode($temp);
        }else {
            
            echo false;
        }     
        $this->sqlsrv->close();
    }

    public function listandoClientes($data) {

        $temp=array(); $i=0;
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_Clientes WHERE ACTIVO ='S' AND NOMBRE LIKE '".$data."%' ORDER BY NOMBRE", SQLSRV_FETCH_ASSOC);
        

        if (count($query)>0) {
            
            foreach ($query as $key) {
                 $temp[] = array(
                    'nom' => $key['NOMBRE'],
                    'dir' => $key['DIRECCION'],
                    'cod' => $key['CLIENTE'],
                    'value' => $key['CLIENTE']." - ". $key['NOMBRE']
                );
                $i++;
            }
            echo json_encode($temp);
        }else {
            
            echo false;
        }     
        $this->sqlsrv->close();
    
    }


    public function datosCreditoClte($data){
        $temp=array();
        $query = $this->sqlsrv->fetchArray("SELECT * FROM SAC_DISP_CREDITO_UMK WHERE CLIENTE ='".$data["codClte"]."'", SQLSRV_FETCH_ASSOC);
        

        if (count($query)>0) {
            
            foreach ($query as $key) {
                
                   $temp['LIMITE_CREDITO'] = $key['LIMITE_CREDITO'];
                   $temp['SALDO'] = $key['SALDO'];
                   $temp['CREDITODISP'] = $key['CREDITODISP'];
                 
            }
            echo json_encode($temp);
        }else {
            
            echo false;
        }     
        $this->sqlsrv->close();
    }



    public function filtrarxfechaCliente($data){
        $iduser = $this->session->userdata('usuario');
        $this->db->select('*');
            $this->db->from("ventas_terceros");
            $this->db->where("idUserRegVnts",$iduser);
            $this->db->where('fechaVnts BETWEEN "'.date('Y-m-d', strtotime($data['desde'])).'" AND "'.date('Y-m-d', strtotime($data['hasta'])).'"');
            


            $query = $this->db->get();

            $json = array();
           if( $query->num_rows() > 0) {
                $resultado= $query->result_array();

                 $i=0;
                
                foreach($resultado as $fila){
                    $json["results"][$i]["fechaVnts"] = date_format(date_create($fila["fechaVnts"]),'d-m-Y');
                    $json["results"][$i]["idVnts"] = $fila["idVnts"];
                    $json["results"][$i]["clienteVnts"] = $fila["clienteVnts"];
                    $json["results"][$i]["telClteVnts"] = $fila["telClteVnts"];
                    $json["results"][$i]["activoVnts"] = $fila["activoVnts"];
                    $i++;
                }
            }else{
                    $json["results"][0] = 0;
                }
               

         echo json_encode($json);
                $this->db->close();

    }



    public function AgregarNuevoPedido($data){

          $query = $this->db->insert('pedido',array('IDPEDIDO'=>$data['idPedido'],'VENDEDOR'=> $data['idVendedor'],'RESPONSABLE'=> $data['idResponsable'],'CLIENTE'=> $data['idCliente'],'NOMBRE'=> $data['NombreClte'],'MONTO'=> $data['monto'],'ESTADO'=> 0,'FECHA_CREADA'=> NOW(),'COMENTARIO'=> $data['comentario'].'['. $data['cantArt'].' Articulos','COMENTARIO_CONFIRM'=> $data['comentConfirm']));
          

        if ($query) {
           echo true;     
        } else {
            echo false;
        }

     }

    public function UltimoRegistroVnts($idUser){
        $this->db->select_max('idVnts');
        $this->db->from("ventas_terceros");
        $this->db->where("idUserRegVnts",$idUser);
        $query = $this->db->get();
        $resultado = $query->result_array();
        $this->db->close();
        echo json_encode($resultado);   
     }


    public function AgregarDetalledePedido($data){

        foreach ($data as $key=>$value){
        $query = $this->db->insert('pedido_detalle',array('IDPEDIDO'=> $value['idPedido'], 'ARTICULO' => $value['idArt'], 'DESCRIPCION' => $value['descArt'],'CANTIDAD' => $value['cantArt'], 'TOTAL'=> $value['totalPedido'], 'BONIFICADO' => $value['artBonif'], 'IVA' => $value['ivaPedido'],'DESCUENTO' => $value['descPedido']) );
        }

         if ($query) {
            echo true;
         }else{
            echo false;
         }
      
   }

    public function getNewSellingData($idUser){

         $this->db->select('*');
        $this->db->from("ventas_terceros");
        $this->db->where("idUserRegVnts",$idUser);

        $query = $this->db->get();

        $json = array();
       if( $query->num_rows() > 0) {
                $resultado= $query->result_array();

                 $i=0;
                
                foreach($resultado as $fila){
                    $json["results"][$i]["fechaVnts"] = date_format(date_create($fila["fechaVnts"]),'d-m-Y');
                    $json["results"][$i]["idVnts"] = $fila["idVnts"];
                    $json["results"][$i]["clienteVnts"] = $fila["clienteVnts"];
                    $json["results"][$i]["telClteVnts"] = $fila["telClteVnts"];
                    $json["results"][$i]["activoVnts"] = $fila["activoVnts"];
                    $i++;
                }
            }else{
                      $json["results"][0] = 0;
                }
            echo json_encode($json);
            $this->db->close();

   }


   public function getSelectedSellingDetailData($cod){
        $this->db->select("*");
        $this->db->from("ventas_detalles_terceros");
        $this->db->where("idVnts",$cod);
        $query = $this->db->get();

        $json = array();
       if( $query->num_rows() > 0) {
                $resultado= $query->result_array();

                 $i=0;
                
                foreach($resultado as $fila){
                    $json["results"][$i]["idArt"] = $fila["idArt"];
                    $json["results"][$i]["descDetArtVnts"] = $fila["descDetArtVnts"];
                    $json["results"][$i]["cantDetVnts"] = $fila["cantDetVnts"];
                    $i++;
                }
            }else{
                     $json();
                }
            echo json_encode($json);
            $this->db->close();

   }

   public function cambiarEstadoVentas($cod, $estado){
    

    if($estado == "ACTIVA"){
        $estadoBit = 1;
    }else{
        $estadoBit = 0;
    }

    echo ($estadoBit);

    $this->db->query("UPDATE ventas_terceros SET activoVnts ='". $estadoBit."' WHERE idVnts = ".$cod);
  

   }
}