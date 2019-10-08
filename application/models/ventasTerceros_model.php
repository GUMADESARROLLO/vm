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
    public function getAllArticulos()
    {
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_mstr_articulos",SQLSRV_FETCH_ASSOC);
        if($query){
            return $query;
        }
        $this->sqlsrv->close();
    }


    
    public function getAllClientes($iD)
    {

        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_Clientes WHERE ACTIVO ='S' AND VENDEDOR = '".$iD."' ORDER BY NOMBRE", SQLSRV_FETCH_ASSOC);
        if($query){
            return $query;
        }
        $this->sqlsrv->close();
    }

    public function getInfoCliente($ID){
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_Clientes WHERE CLIENTE = '$ID' ",SQLSRV_FETCH_ASSOC);
        $i=0;
        $json = array();
        foreach($query as $fila){
            $json["data"][$i]["DIR"] = $fila["DIRECCION"];
            $json["data"][$i]["CRE"] = number_format($fila["CREDITO"],4);
            $json["data"][$i]["SAL"] = number_format($fila["SALDO"],4);
            $json["data"][$i]["DIS"] = number_format($fila["DISPONIBLE"],4);
            $i++;
        }
        echo json_encode($json);
        $this->sqlsrv->close();
    }
    public function getInfoArticul($ID){
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_mstr_articulos WHERE ARTICULO = '$ID' ",SQLSRV_FETCH_ASSOC);
        $i=0;
        $json = array();
        foreach($query as $fila){


            $json["data"][$i]["EXI"] = number_format($fila["EXISTENCIA"],4);
            $json["data"][$i]["PRE"] = number_format($fila["PRECIO_FARMACIA"],4);
            $json["data"][$i]["REG"] = $fila["REGLAS"];
            $i++;
        }
        echo json_encode($json);
        $this->sqlsrv->close();
    }

/*INICIO DE VALORAR SI SE TIENE QUE QUITAR*/

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
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_Clientes WHERE ACTIVO ='S' AND VENDEDOR = '".$data."' ORDER BY NOMBRE", SQLSRV_FETCH_ASSOC);
        

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

    /*FIN DE VALORAR SI SE TIENE QUE QUITAR*/


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



    public function filtrarxfechaPedidos($data){

        $iduser = $this->session->userdata('usuario');
        $this->db->select('*');
            $this->db->from('pedido');
            $this->db->where('VENDEDOR',$iduser);
            $this->db->where('FECHA_CREADA BETWEEN "'.date('Y-m-d', strtotime($data['desde'])).'" AND "'.date('Y-m-d 23:59:00', strtotime($data['hasta'])).'"');
            


            $query = $this->db->get();

            $json = array();
           if( $query->num_rows() > 0) {
                $resultado= $query->result_array();

                 $i=0;
                
                foreach($resultado as $fila){
                    $json["results"][$i]["FECHA_CREADA"] = date_format(date_create($fila["FECHA_CREADA"]),'d-m-Y');
                    $json["results"][$i]["IDPEDIDO"] = $fila["IDPEDIDO"];
                    $json["results"][$i]["CLIENTE"] = $fila["CLIENTE"];
                    $json["results"][$i]["NOMBRE"] = $fila["NOMBRE"];
                    $json["results"][$i]["COMENTARIO"] = $fila["COMENTARIO"];
                    $json["results"][$i]["ESTADO"] = $fila["ESTADO"];
                    $i++;
                }
            }else{
                    $json["results"][0] = 0;
                }
               

         echo json_encode($json);
                $this->db->close();

    }


    public function  getKeyPedido($idRuta){
        $this->db->select('PEDIDO');
        $this->db->from("llaves");
        $this->db->where("RUTA",$idRuta);
        $query = $this->db->get();

        if( $query->num_rows() > 0) {
            $resultado = $query->result_array();
            return intval($resultado[0]["PEDIDO"])+1;
        }

    }


    public function AgregarNuevoPedido($data){
        $jsonData = array();

          $query = $this->db->insert('pedido',array('IDPEDIDO'=>$data['idPedido'],'VENDEDOR'=> $data['idVendedor'],'CLIENTE'=> $data['idCliente'],'NOMBRE'=> $data['NombreClte'],'MONTO'=> $data['monto'],'ESTADO'=> 0,'FECHA_CREADA'=> date('Y-m-d H:i:s'),'COMENTARIO'=> $data['comentario'].' ['.$data['countArt'].' Articulos]'));
          

        if ($query) {
            $jsonData['idPedido'] = $data['idPedido'];
            $jsonData['llave'] = $data['llave'];

           echo json_encode($jsonData);     
        } else {
            echo false;
        }

     }


    public function AgregarDetalledePedido($data){

        foreach ($data as $key=>$value){
        $query = $this->db->insert('pedido_detalle',array('IDPEDIDO'=> $value['idPedido'], 'ARTICULO' => $value['idArt'], 'DESCRIPCION' => $value['descArt'],'CANTIDAD' => $value['cantArt'], 'TOTAL'=> $value['totalArt'], 'BONIFICADO' => $value['bonifArt'], 'IVA' => $value['totalArt']*0.15) );
        }
            

         if ($query) {
            echo true;
         }else{
            echo false;
         }

        $this->db->close();

   }


    public function incremetarLlavePedido($data){
        $this->db->where('RUTA',$data['idUser']);
        $this->db->update('llaves',array('PEDIDO' => $data['llave']));
        $this->db->close();
     }

    public function LlenarDTPedidos($idUser){

         $this->db->select('*');
        $this->db->from("pedido");
        $this->db->where("VENDEDOR",$idUser);

        $query = $this->db->get();

        $json = array();
       if( $query->num_rows() > 0) {
                $resultado= $query->result_array();

                 $i=0;
                
                foreach($resultado as $fila){
                    $json["results"][$i]["FECHA_CREADA"] = date_format(date_create($fila["FECHA_CREADA"]),'d-m-Y');
                    $json["results"][$i]["IDPEDIDO"] = $fila["IDPEDIDO"];
                    $json["results"][$i]["NOMBRE"] = $fila["NOMBRE"];
                    $json["results"][$i]["MONTO"] = $fila["MONTO"];
                    $json["results"][$i]["COMENTARIO"] = $fila["COMENTARIO"];
                    $json["results"][$i]["ESTADO"] = $fila["ESTADO"];
                    $i++;
                }
            }else{
                      $json["results"][0] = 0;
                }
            echo json_encode($json);
            $this->db->close();

   }


   public function LlenarTablaDetPedido($cod){
        $this->db->select("*");
        $this->db->from("pedido_detalle");
        $this->db->where("IDPEDIDO",$cod);
        $query = $this->db->get();

        $json = array();
       if( $query->num_rows() > 0) {
                $resultado= $query->result_array();

                 $i=0;
                
                foreach($resultado as $fila){
                    $json["results"][$i]["ARTICULO"] = $fila["ARTICULO"];
                    $json["results"][$i]["DESCRIPCION"] = $fila["DESCRIPCION"];
                    $json["results"][$i]["CANTIDAD"] = $fila["CANTIDAD"];
                    $json["results"][$i]["BONIFICADO"] = $fila["BONIFICADO"];
                    $i++;
                }
            }else{
                     $json();
                }
            echo json_encode($json);
            $this->db->close();

   }

   public function cambiarEstadoPedido($cod, $estado){
    

    if($estado == "ACTIVA"){
        $estadoBit = 0;
    }else{
        $estadoBit = 1;
    }

    echo ($estadoBit);

    $this->db->query("UPDATE pedido SET ESTADO ='". $estadoBit."' WHERE IDPEDIDO = '".$cod."'");
  

   }
}