<?php 
class home_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function open_database_connectionSQL(){
        $serverName = "192.168.1.18";
        $connectionInfo = array( "UID"=>"dbomanager","PWD"=>"Umk*.*@!","Database"=>"PRODUCCION","CharacterSet"=>"UTF-8");
        $LINK = sqlsrv_connect( $serverName, $connectionInfo);
        return $LINK;
    }

    public function listandoRutas() {
        $i = 0;
        $json = array();

        $query = $this
                ->db
                ->where("Rol", 2)
                ->get("usuarios");

        if ($query->num_rows()>0) {
            foreach ($query->result_array() as $key) {
                $totales = $this->totalesRutas($key['Rutas']);
                $V=$totales["V"];
                $M=$totales["M"];
                $V3=$totales["V3"];
                
                $st='style="color:red"';

                $json['data'][$i]['COD']='<a href="#!" onclick="detalleVisitador('."'".$key['IdUser']."'".')">'.$key['Usuario'].'</a>';
                $json['data'][$i]['NOMBRE']=$key['Nombre_visitador'];
                $json['data'][$i]['VENTA']='C$ '.number_format($V, 2);
                $json['data'][$i]['META']='C$ '.number_format($this->Suma_meta($key['Rutas']));
                $json['data'][$i]['VST3M']='C$ '.number_format($V3, 2);
                $res=(($M)-($V));
                if ((float)$V>=(float)$M) {
                    $res=$res*(-1);
                    $st='style="color:green"';
                }
                $json['data'][$i]['RES'] = '<span '.$st.'>C$ '.number_format($res, 2).'</span>';
                $json['data'][$i]['RUTAS'] = '<span>'.str_replace("'", " ", $key['Rutas']).'</span>';
                $json['data'][$i]['PLAN'] = '<a href="'.base_url("./index.php/plan-ruta/").$key['Usuario'].'"><i class="material-icons" style="color:black">today</i></a>';
                $i++;
            }
        }else {
            echo json_encode(false);
        }
        echo json_encode($json);
        $this->sqlsrv->close();
    }

    public function detalleVentasXRuta($visitador) {
        $array = array();
        $query = $this
                ->db
                ->where("IdUser", $visitador)
                ->get("usuarios");

        if (count($query)>0) {            
            $temp = $this->totalesRutas($query->result_array()[0]['Rutas']);          
            foreach ($query->result_array() as $key) {
                $array['COD'] = $key['IdUser']; 
                $array['NOMBRE'] = $key['Nombre_visitador'];
                $array['VENTA'] = number_format($temp['V'], 2);
                $array['META'] = number_format($this->Suma_meta($key['Rutas']), 2);
                $array['VTS3'] = number_format($temp['V3'], 2);
                $array['RUTAS'] = $key['Rutas'];
            }            
        }
        return $array;
    }

    function Suma_meta($visitador){
       $in_where = explode(",", str_replace(array("'"), "", $visitador));
       $Rtn="0";
       $this->db->select('VALOR');
       $this->db->select_sum('VALOR');
       $this->db->where_in('RUTA',$in_where);
       $query = $this->db->get('cuotasmes');
       if ($query->num_rows() > 0) {
           foreach ($query->result_array() as $key) {
               $Rtn = $key['VALOR'];
           }
       }else{
           $Rtn = "";
       }
       return $Rtn;
   }

    public function totalesRutas($rutas) {
        $conn = $this->open_database_connectionSQL();

        $sql="SELECT SUM(Venta) AS V, SUM(metas) AS M, SUM(vst_3m) AS V3 FROM vm_Mensuales_vtsTotales WHERE RUTA IN (".$rutas.")";

        $stmt = sqlsrv_query( $conn, $sql , null, array( "Scrollable" => SQLSRV_CURSOR_KEYSET ) );

        return sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC);
    }


    /*METODOS PARA DATA MENSUAL*/
    public function listandoData($tipo, $visitador) {
        $i = 0;
        $json = array();

        $query = $this
                ->db
                ->select("Rutas")
                ->where("IdUser", $visitador)
                ->get("usuarios");

        $ruta = $query->result_array()[0]['Rutas'];

        switch ($tipo) {
            case '1':
                $query = $this->sqlsrv->fetchArray("SELECT vm.ARTICULO,vm.DESCRIPCION,vm.Clasificacion6,SUM(vm.CANTIDAD) AS CANTIDAD,SUM(vm.Venta) AS Venta,SUM(vm.Hts) AS Hts FROM vm_Mensuales_vtsArticulos vm WHERE RUTA IN (".$ruta.") GROUP BY vm.ARTICULO,vm.DESCRIPCION,Clasificacion6;", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['ARTICULO'] = $key['ARTICULO']; 
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['CANTIDAD'] = number_format($key['CANTIDAD'], 0);
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $json[$i]['Hts'] = $key['Hts'];
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
                break;
            case '2':
                $query = $this->sqlsrv->fetchArray("SELECT vm.CCL,vm.NOMBRE,vm.RUC,vm.hts,SUM(vm.Venta) AS Venta FROM vm_Mensuales_vtsCliente vm WHERE vm.RUTA IN(".$ruta.") GROUP BY vm.CCL,vm.NOMBRE,vm.RUC,vm.hts", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['CCL'] = $key['CCL']; 
                        $json[$i]['NOMBRE'] = $key['NOMBRE'];
                        $json[$i]['Hts'] = $key['hts'];
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
            break;
            case '3':
                $query = $this->sqlsrv->fetchArray("SELECT * FROM vm_Mensuales_vstCLA WHERE RUTA IN (".$ruta.") ORDER BY Dia DESC", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) {
                        $json[$i]['ARTICULO'] = $key['ARTICULO'];
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['Cantidad'] = number_format($key['Cantidad'], 0);
                        $json[$i]['Venta'] = number_format($key['Venta'], 2);
                        $json[$i]['Dia'] = date_format($key['Dia'],"d/m/Y");
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
            break;
            case '4':
                $array=array();
                $ruta1 = str_replace("'","", $ruta);
                $index = explode(",", $ruta1);
                for ($i = 0; $i < count($index); $i++) {
                    array_push($array, $index[$i]);
                }
                $query = $this
                        ->db
                        ->select("ARTICULO,DESCRIPCION,SUM(CANTIDAD) AS CANTIDAD", FALSE)
                        ->where_in('RUTA', $array)
                        ->group_by("ARTICULO,DESCRIPCION")
                        ->get('cuotasmes');
                if ($query->num_rows() > 0) {
                    foreach ($query->result_array() as $key) {
                        //$json[$i]['mRuta'] = $key['RUTA'];
                        $json[$i]['mArti'] = $key['ARTICULO'];
                        $json[$i]['mDesc'] = $key['DESCRIPCION'];
                        $json[$i]['mCant'] = $key['CANTIDAD'];
                        $json[$i]['mCnAc'] = $this->Lleva($key['ARTICULO'],$ruta);
                        $i++;
                    }
                }else{
                    echo false;
                }
            break;
            default:                
                break;
        }
        echo json_encode($json);        
    }

    public function detallesVentasM($val, $tipo, $visitador) {
        $i = 0;
        $json = array();

        $query = $this
                ->db
                ->select("Rutas")
                ->where("IdUser", $visitador)
                ->get("usuarios");

        $ruta = $query->result_array()[0]['Rutas'];

        switch ($tipo) {
            case '1':
                $query = $this->sqlsrv->fetchArray('SELECT CCL AS CCL,NOMBRECL AS NOMBRECL,Cantidad AS Cantidad,Dia AS Dia,Venta AS Venta FROM vm_Mensuales_vstCLA WHERE ARTICULO = '."'".$val."'".' AND RUTA IN('.$ruta.') ORDER BY Dia DESC;', SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['CCL'] = $key['CCL']; 
                        $json[$i]['NOMBRECL'] = $key['NOMBRECL'];
                        $json[$i]['CANTIDAD'] = number_format($key['Cantidad'], 0);
                        $json[$i]['DIA'] = date_format($key['Dia'],"d/m/Y");
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
                break;
            case '2':
                $query = $this->sqlsrv->fetchArray('SELECT ARTICULO AS ARTICULO,DESCRIPCION AS DESCRIPCION,Cantidad AS Cantidad,Venta AS Venta,Dia AS Dia FROM vm_Mensuales_vstCLA WHERE CCL = '."'".$val."'".' AND RUTA IN('.$ruta.') ORDER BY Dia DESC;', SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['ARTICULO'] = $key['ARTICULO']; 
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['CANTIDAD'] = number_format($key['Cantidad'], 0);
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $json[$i]['DIA'] = date_format($key['Dia'],"d/m/Y");
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
            break;
            case '3':
                $query = $this->sqlsrv->fetchArray("SELECT * FROM vm_Mensuales_vstCLA  WHERE RUTA IN(".$ruta.") ORDER BY Dia DESC;", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) {
                        $json[$i]['ARTICULO'] = $key['ARTICULO'];
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['Cantidad'] = number_format($key['Cantidad'], 0);
                        $json[$i]['Venta'] = number_format($key['Venta'], 2);
                        $json[$i]['Dia'] = date_format($key['Dia'],"d/m/Y");
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
            break;
            case '4':
                $this->db->where('RUTA',$ruta);
                $query = $this->db->get('cuotasmes');
                if ($query->num_rows() > 0) {
                    foreach ($query->result_array() as $key) {
                        $json[$i]['mRuta'] = $key['RUTA'];
                        $json[$i]['mArti'] = $key['ARTICULO'];
                        $json[$i]['mDesc'] = $key['DESCRIPCION'];
                        $json[$i]['mCant'] = $key['CANTIDAD'];
                        $json[$i]['mCnAc'] = $this->Lleva($key['ARTICULO'],$key['RUTA']);
                        $i++;
                    }
                }else{
                    $json['results'][$i]['mUser'] = "";
                }
            break;
            default:                
                break;
        }
        echo json_encode($json);   
    }

    public function Lleva($Articulo,$Ruta) {
       $Cantidad="0";
       
        $query = $this->sqlsrv->fetchArray("SELECT SUM(Cantidad) AS Cantidad FROM vm_Mensuales_vstCLA WHERE RUTA IN(".$Ruta.") AND ARTICULO='".$Articulo."' GROUP BY ARTICULO",SQLSRV_FETCH_ASSOC);
        foreach($query as $key){
            $retVal = ($key['Cantidad']=="") ? "0" : $key['Cantidad'] ;
            $Cantidad     = number_format($retVal,0);            
        }        
        return $Cantidad;
    }

    public function buscarPorFiltro($filtro, $tipo, $visitador) {
        $i = 0;
        $json = array();
        $query = $this
                ->db
                ->select("Rutas")
                ->where("IdUser", $visitador)
                ->get("usuarios");

        $ruta = $query->result_array()[0]['Rutas'];

        switch ($tipo) {
            case '1':
                $query = $this->sqlsrv->fetchArray("SELECT vm.ARTICULO,vm.DESCRIPCION,vm.Clasificacion6,SUM(vm.CANTIDAD) AS CANTIDAD, SUM(vm.Venta) AS Venta,SUM(vm.Hts) AS Hts FROM vm_Mensuales_vtsArticulos vm WHERE RUTA IN(".$ruta.") AND vm.DESCRIPCION LIKE '%".$filtro."%' GROUP BY vm.ARTICULO,vm.DESCRIPCION,vm.Clasificacion6; ", SQLSRV_FETCH_ASSOC);

                if (count($query)>0) {
                    foreach ($query as $key) {
                        $json[$i]['ARTICULO'] = $key['ARTICULO'];
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['CANTIDAD'] = number_format($key['CANTIDAD'], 0);
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $json[$i]['Hts'] = $key['Hts'];
                        $i++;
                    }
                    echo json_encode($json);
                }else {
                    echo 1;
                }
                $this->sqlsrv->close();
                break;
            case '2':
                $query = $this->sqlsrv->fetchArray("SELECT vm.CCL,vm.NOMBRE,vm.RUC,vm.hts,SUM(vm.Venta) AS Venta FROM vm_Mensuales_vtsCliente vm WHERE vm.RUTA IN(".$ruta.") AND NOMBRE LIKE '%".$filtro."%' GROUP BY vm.CCL,vm.NOMBRE,vm.RUC,vm.hts", SQLSRV_FETCH_ASSOC);

                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['CCL'] = $key['CCL']; 
                        $json[$i]['NOMBRE'] = $key['NOMBRE'];
                        $json[$i]['Hts'] = $key['hts'];
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $i++; 
                    }
                    echo json_encode($json);
                }else {
                    echo 1;
                }
                $this->sqlsrv->close();
            break;
            case '3':
                $query = $this->sqlsrv->fetchArray("SELECT * FROM vm_Mensuales_vstCLA  WHERE RUTA IN(".$ruta.") AND DESCRIPCION LIKE '%".$filtro."%' ORDER BY Dia DESC", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) {
                        $json[$i]['ARTICULO'] = $key['ARTICULO'];
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['Cantidad'] = number_format($key['Cantidad'], 0);
                        $json[$i]['Venta'] = number_format($key['Venta'], 2);
                        $json[$i]['Dia'] = date_format($key['Dia'],"d/m/Y");
                        $i++; 
                    }
                    echo json_encode($json);
                }else {
                    echo 1;
                }
                $this->sqlsrv->close();
            break;
            case '4':
                $array=array();
                $ruta1 = str_replace("'","", $ruta);
                $index = explode(",", $ruta1);
                for ($i = 0; $i < count($index); $i++) {
                    array_push($array, $index[$i]);
                }
                $query = $this
                        ->db
                        ->select("ARTICULO,DESCRIPCION,SUM(CANTIDAD) AS CANTIDAD", FALSE)
                        ->where_in('RUTA', $array)
                        ->like('DESCRIPCION', $filtro)
                        ->group_by("ARTICULO,DESCRIPCION")
                        ->get('cuotasmes');

                if ($query->num_rows() > 0) {
                    foreach ($query->result_array() as $key) {
                        //$json[$i]['mRuta'] = $key['RUTA'];
                        $json[$i]['mArti'] = $key['ARTICULO'];
                        $json[$i]['mDesc'] = $key['DESCRIPCION'];
                        $json[$i]['mCant'] = $key['CANTIDAD'];
                        $json[$i]['mCnAc'] = $this->Lleva($key['ARTICULO'],$ruta);
                        $i++;
                    }
                    echo json_encode($json);
                }else{
                    echo 1;
                }
            break;
            default:                
                break;
        }    
    }    
    /*FIN METODOS MENSUALES*/

    /*METODOS PARA DATA 3 MESES*/
    public function listandoData3M($tipo, $visitador) {
        $i = 0;
        $json = array();

        $query = $this
                ->db
                ->select("Rutas")
                ->where("IdUser", $visitador)
                ->get("usuarios");

        $ruta = $query->result_array()[0]['Rutas'];

        switch ($tipo) {
            case '1':
                $query = $this->sqlsrv->fetchArray("SELECT vm.ARTICULO,vm.DESCRIPCION,vm.Clasificacion6,SUM(vm.CANTIDAD) AS CANTIDAD,SUM(vm.Venta) AS Venta,SUM(vm.Hts) AS Hts FROM vm_3M_vtsArticulos vm WHERE RUTA IN (".$ruta.") GROUP BY vm.ARTICULO,vm.DESCRIPCION,Clasificacion6;", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['ARTICULO'] = $key['ARTICULO']; 
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['CANTIDAD'] = number_format($key['CANTIDAD'], 0);
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $json[$i]['Hts'] = $key['Hts'];
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
                break;
            case '2':
                $query = $this->sqlsrv->fetchArray("SELECT vm.CCL,vm.NOMBRE,vm.RUC,vm.hts,SUM(vm.Venta) AS Venta FROM vm_3M_vtsCliente vm WHERE vm.RUTA IN(".$ruta.") GROUP BY vm.CCL,vm.NOMBRE,vm.RUC,vm.hts", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['CCL'] = $key['CCL']; 
                        $json[$i]['NOMBRE'] = $key['NOMBRE'];
                        $json[$i]['Hts'] = $key['hts'];
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
            break;
            case '3':
                $query = $this->sqlsrv->fetchArray("SELECT * FROM vm_3M_vstCLA WHERE RUTA IN (".$ruta.") ORDER BY Dia DESC", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) {
                        $json[$i]['ARTICULO'] = $key['ARTICULO'];
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['Cantidad'] = number_format($key['Cantidad'], 0);
                        $json[$i]['Venta'] = number_format($key['Venta'], 2);
                        $json[$i]['Dia'] = date_format($key['Dia'],"d/m/Y");
                        $i++; 
                    }
                }else {
                    echo false;
                }
                $this->sqlsrv->close();
            break;
            default:                
                break;
        }
        echo json_encode($json);
    }

    public function buscarPorFiltro3M($filtro, $tipo, $visitador) {
        $i = 0;
        $json = array();
        $query = $this
                ->db
                ->select("Rutas")
                ->where("IdUser", $visitador)
                ->get("usuarios");

        $ruta = $query->result_array()[0]['Rutas'];

        switch ($tipo) {
            case '1':
                $query = $this->sqlsrv->fetchArray("SELECT vm.ARTICULO,vm.DESCRIPCION,vm.Clasificacion6,SUM(vm.CANTIDAD) AS CANTIDAD, SUM(vm.Venta) AS Venta,SUM(vm.Hts) AS Hts FROM vm_3M_vtsArticulos vm WHERE RUTA IN(".$ruta.") AND vm.DESCRIPCION LIKE '%".$filtro."%' GROUP BY vm.ARTICULO,vm.DESCRIPCION,vm.Clasificacion6;", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['ARTICULO'] = $key['ARTICULO']; 
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['CANTIDAD'] = number_format($key['CANTIDAD'], 0);
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $json[$i]['Hts'] = $key['Hts'];
                        $i++;
                    }
                    echo json_encode($json);
                }else {
                    echo 1;
                }
                $this->sqlsrv->close();
                break;
            case '2':
                $query = $this->sqlsrv->fetchArray("SELECT vm.CCL,vm.NOMBRE,vm.RUC,vm.hts,SUM(vm.Venta) AS Venta FROM vm_3M_vtsCliente vm WHERE vm.RUTA IN(".$ruta.") AND NOMBRE LIKE '%".$filtro."%' GROUP BY vm.CCL,vm.NOMBRE,vm.RUC,vm.hts", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) { 
                        $json[$i]['CCL'] = $key['CCL']; 
                        $json[$i]['NOMBRE'] = $key['NOMBRE'];
                        $json[$i]['Hts'] = $key['hts'];
                        $json[$i]['VENTA'] = number_format($key['Venta'], 2);
                        $i++; 
                    }
                    echo json_encode($json);
                }else {
                    echo 1;
                }
                $this->sqlsrv->close();
            break;
            case '3':
                $query = $this->sqlsrv->fetchArray("SELECT * FROM vm_3M_vstCLA  WHERE RUTA IN(".$ruta.") AND DESCRIPCION LIKE '%".$filtro."%' ORDER BY Dia DESC", SQLSRV_FETCH_ASSOC);
                if (count($query)>0) {
                    foreach ($query as $key) {
                        $json[$i]['ARTICULO'] = $key['ARTICULO'];
                        $json[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                        $json[$i]['Cantidad'] = number_format($key['Cantidad'], 0);
                        $json[$i]['Venta'] = number_format($key['Venta'], 2);
                        $json[$i]['Dia'] = date_format($key['Dia'],"d/m/Y");
                        $i++; 
                    }
                    echo json_encode($json);
                }else {
                    echo 1;
                }
                $this->sqlsrv->close();
            break;
            default:                
                break;
        }        
    }
}