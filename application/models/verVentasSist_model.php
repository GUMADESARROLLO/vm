<?php 
class verVentasSist_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }


    public function listandoUsuarios() {
        $temp=array();
        $i=0;
      
        $this->db->select('*');
        $this->db->from("usuarios");
        $this->db->where("Rol",3);

        $query = $this->db->get();

     
       if( $query->num_rows() > 0) {
               foreach ($query->result_array() as $key) {
                $temp[] = array(
                    'cod' => $key["Usuario"],
                    'nom' => $key["Usuario"]." - ".$key["Nombre_visitador"] 
                );
                    $i++;
                 }
            echo json_encode($temp);
        }else {
            echo false;
        }      
    }


    public function getDataSellingUserSystem(){
            
       

            $this->db->select('*');
            $this->db->from("ventas_terceros");

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



   public function filtrarxfecha($data){

        $this->db->select('*');
            $this->db->from("ventas_terceros");
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


}