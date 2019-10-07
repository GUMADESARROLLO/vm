<?php 
class farmacias_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function listandoFarmacias() {
        $json = array();
        $i=0;
        $this->db->select('*');
        $this->db->from('farmacias');
        $this->db->join('usuarios as u1',' u1.Usuario=farmacias.NombreFarmacia','left');
        $this->db->join('usuarios as u2','u2.idNombre=farmacias.IdFarmacia','left');
            $query = $this->db->get();

        if ($query->num_rows()>0) {
            foreach ($query->result_array() as $key) {
                $json[$i]['CODIGO'] = $key['Ruta'];
                $json[$i]['NOMBREFARMACIA'] = '<a href="#!" onclick="detalleFarmacia('."'".$key['IdFarmacia']."'".')">'.$key['NombreFarmacia'].'</a>';
                $json[$i]['DIRECCION'] = $key['Direccion'];
                $json[$i]['NOMBREPROPIETARIO'] = $key['NombrePropietario'];
                $json[$i]['RUTA'] = $this->nombreVisitador( $key['Ruta']);
                $json[$i]['USUARIO'] = $key['Usuario'];
                $json[$i]['CONTRASEÑA'] = $key['Password'];
                $i++; 
            }
        }else {
            echo false;
        }
        echo json_encode($json);
    }

    public function listandoRutas() {
        $temp=array();
        $query = $this
                ->db
                ->distinct("Ruta")
                ->select("Ruta")
                ->get("farmacias");

        if ($query->num_rows()>0) {
            foreach ($query->result_array() as $key) {
                $temp[] = array(
                    'value' => $key['Ruta'],
                    'desc' => $this->nombreVisitador($key['Ruta'])
                );    
            }
            return $temp;
        }else {
            return false;
        }
    }

    public function informacionFarmacia($codFarmacia) {
        $query = $this
                ->db
                ->where('IdFarmacia', $codFarmacia)
                ->get('farmacias');

        if ($query->num_rows()>0) {
            return $query->result_array();
        }else {
            return false;
        }
    }

    public function nombreVisitador($codVisitador) {
        $nombreVisitador="";
        $query = $this
                ->db
                ->select("Nombre_visitador")
                ->where("Usuario", $codVisitador)
                ->get("usuarios");

        if ($query->num_rows()>0) {
            $nombreVisitador = $query->result_array()[0]['Nombre_visitador'];
        }
        return $nombreVisitador;
    }

    public function guardandoCambiosFarmacia($data) {
        if (count($data)>0) {
            foreach ($data as $key => $value) {
                foreach ($value as $key) {
                    $fecha = date('Y-m-d', strtotime($key['mFAN']));

                    $result = $this->db->query("call sp_farmacias('".$key['mUID']."','".$key['mNFR']."','".$key['mNPR']."','".$key['mDIR']."','".$fecha."','".$key['mTFR']."','".$key['mTFP']."','".$key['mHAT']."','".$key['mRCP']."','".$key['mTRC']."','".$key['mCDP']."','".$key['mPCP']."','".$key['mDPF']."','".$key['mRVC']."','".$key['mRCJ']."','".$key['mNDM']."',".$key['mPPP'].",".$key['mEBD'].",".$key['mPIP'].",".$key['mCCO'].", '".$key['Ruta']."')");
                }
            }
            if ($result) {
                echo true;
            }
        }
    }

    public function verificarExisteUsuarioDelSistema($data){

        $this->db->select('*');
        $this->db->from('usuarios');
        $this->db->where('idNombre',$data['idNombre']);
        $this->db->where('Nombre_visitador',$data['Nombre_visitador']);
        $query = $this->db->get();

         $json = array();
         $existe = 0;



        if ($query->num_rows()>0) {

            $existe = 1;
            $resultado= $query->result_array();

                $json[0]["Activo"] = $resultado[0]["Activo"];
                $json[0]["Existe"]  = $existe;
                $json[0]["Usuario"]  = $resultado[0]["Usuario"];
            
        }else{
            $json[0]["Existe"] = $existe;
             
        }
        echo json_encode($json);
        $this->db->close();
    }



    public function obteberUltimoUsuarioDelSitema(){
         $this->db->select('*');
        $this->db->from('llaves');
        $this->db->where('Ruta',"US1");
        $query = $this->db->get();
        

         $json = array();
        if ($query->num_rows()>0) {

            $json[0]['Ruta'] =$query->result_array()[0]['Ruta'] ;
            $json[0]['ultimoIntAsignado'] = $query->result_array()[0]['FARMACIA'];
    
            $this->db->close();
            // $query2 =  $this->db->update('llaves',array('FARMACIA'=> $sumar), array('Ruta' => "US1"));

             echo json_encode($json);

        }



    }

    public function almacenarUltimoUsuarioDelSitema($data, $where){

          $query = $this->db->update('llaves', $data,$where);

          if ($query) {
           echo true;     
        } else {
            echo false;
        }

    }






    public function desactivarUsuarioDelSistema($condiciones,$campo){
        $query =  $this->db->update('usuarios',array('Activo'=> $campo['Activo']), array('idNombre' => $condiciones['idNombre'],'Usuario' => $condiciones['Usuario']));

        
    if ($query) {
           echo true;     
        } else {
            echo false;
        }

    }




    public function activarUsuarioDelSistema($condiciones,$campo){

         $query = $this->db->update('usuarios',array('Activo'=> $campo['Activo']), array('idNombre' => $condiciones['idNombre'],'Usuario' => $condiciones['Usuario']));
         
 if ($query) {
           echo true;     
        } else {
            echo false;
        }
        
    }




    public function asignarLoginUsuarioSistema($data){
       
        $datas= array(
            'idNombre' => $data['idNombre'],
            'Nombre_visitador' => $data['Nombre_visitador'],
            'Usuario' => $data['Usuario'],
            'Password' => $data['Password'],
            'Rol' => $data['Rol'],
            'Activo' => $data['Activo']
        );
    


       $query = $this->db->insert('usuarios', $data);

     if ($query) {
           echo 1;     
        } else {
            echo 0;
        }
        
    }
}