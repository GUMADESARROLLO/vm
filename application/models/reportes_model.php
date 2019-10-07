<?php 
class reportes_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        include(APPPATH.'libraries\PHPExcel\Classes\PHPExcel.php');
        $this->load->database();
    }
     public function open_database_connectionSQL(){
        $serverName = "192.168.1.18";
        $connectionInfo = array( "UID"=>"dbomanager","PWD"=>"Umk*.*@!","Database"=>"PRODUCCION","CharacterSet"=>"UTF-8");
        $LINK = sqlsrv_connect( $serverName, $connectionInfo);
        return $LINK;
    }

    public function generadoDataRpt($f1, $f2, $visitador, $tRpt) {
        $json = array();
        $i=0;

        switch ($tRpt) {
            case 1:
                //REPORTE DE VISITAS
                $f1 = date('Y-m-d', strtotime($f1));
                $f2 = date('Y-m-d', strtotime($f2));

                if ($visitador=="ALL") {
                    $query = $this
                            ->db
                            ->where('Fecha >=', $f1.' 00:00:00')
                            ->where('Fecha <=', $f2.' 23:59:59')
                            ->get('log');
                }else {
                    $query = $this
                            ->db
                            ->where('Fecha >=', $f1.' 00:00:00')
                            ->where('Fecha <=', $f2.' 23:59:59')
                            ->where('Ruta', $visitador)
                            ->get('log');
                }

                if ($query->num_rows() > 0) {
                    foreach ($query->result_array() as $key) {
                        $json[$i]['F1'] = '<a href="#!"><i class="material-icons" id="icon-'.$key['IdLog'].'" style="color:green">add_circle</i></a>';
                        $json[$i]['CODIGO'] = $key['Cliente'];
                        $json[$i]['CLIENTE'] = $key['CLNombre'];
                        $json[$i]['DESCRIPCION'] = $key['Descripcion'];
                        $json[$i]['FECHA'] = date('d/m/Y g:ia', strtotime($key['Fecha']));
                        $json[$i]['RUTA'] = $key['Ruta'];
                        $json[$i]['IDLOG'] = $key['IdLog'];
                        $i++;
                    }
                    echo json_encode($json);
                }else {
                    echo json_encode(false);
                }
                break;
            case 2:               
                break;
            default:                
                break;
        }
    }

    public function reporteCumplimiento() {
        $array = array();
        $i=0;
        
        $this->cargaTemporal();
        $rutas = $this
                ->db
                ->select("Rutas")
                ->where("Rol", 2)
                ->get("usuarios");

        $query = $this->db->query("SELECT * FROM cuotasmes GROUP BY ARTICULO");

        if ($query->num_rows()>0) {
            foreach ($query->result_array() as $key) {
                $array[$i]['ARTICULO'] = $key['ARTICULO'];
                $array[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                $array[$i]['CUOTAXVIS'] = $this->cuotaMes($rutas->result_array(), $key['ARTICULO']);
                $i++;
            }
        }
        echo json_encode($array);
    }

    public function cuotaMes($rutas, $articulo) {
        $array=array();
        $i=0;
        foreach ($rutas as $key) {
            $array_rt = array();
            $RT = str_replace("'","", $key['Rutas']);
            $index = explode(",", $RT);
            
            for ($ii = 0; $ii < count($index); $ii++) {
                array_push($array_rt, $index[$ii]);
            }

            $CC=$this
                ->db
                ->select("SUM(CANTIDAD) AS CC", FALSE)
                ->where_in("RUTA", $array_rt)
                ->where("ARTICULO", $articulo)
                ->get('cuotasmes');

            $CANT = $CC->result_array()[0]['CC'];
            $FACT = $this->Lleva($articulo, $array_rt);

            if ($CANT!=0) {
                $PORC = (($FACT) / ($CANT)) * 100;    
            }else {
                $PORC = 0;
            }
            $array[$i]['CANT'] = $CANT;
            $array[$i]['FACT'] = $FACT;
            $array[$i]['PORC'] = number_format($PORC, 1);
            $array[$i]['VISI'] = $this->retornaVisitador(substr($RT, 0, -4));
            $i++;
        }
        return $array;
    }

    public function retornaVisitador($rutas) {
        $nVisitador =$this
                    ->db
                    ->select("Usuario")
                    ->like('Rutas', $rutas)
                    ->get("usuarios");        
        return $nVisitador->result_array()[0]['Usuario'];
    }

    public function Lleva($articulo, $rutas) {
        $CCT = $this
                ->db
                ->select("SUM(CANT) AS CANT", FALSE)
                ->where("ARTICULO", $articulo)
                ->where_in('RUTA', $rutas)
                ->get('temporal');

        if ($CCT->result_array()[0]['CANT']!=null) {
            return $CCT->result_array()[0]['CANT'];
        }else {
            return 0;
        }        
    }

    public function cargaTemporal() {
        $this->db->truncate('temporal');
        $query = $this->sqlsrv->fetchArray("SELECT Cantidad AS CANT, ARTICULO AS ARTI, DESCRIPCION AS DESCR, RUTA AS RUTA FROM   vm_Mensuales_vstCLA",SQLSRV_FETCH_ASSOC);

        foreach ($query as $key) {
            $this->db->insert("temporal", array(
                "CANT" => $key['CANT'],
                "ARTICULO" => $key['ARTI'],
                "DESCRIPCION" => $key['DESCR'],
                "RUTA" => $key['RUTA']
            ));
        }
    }

    public function nombreCliente($IdCliente) {
        $nombreCliente="";

        if(stristr($IdCliente, '-F') != FALSE) {
            $query = $this
                    ->db
                    ->select("NombreFarmacia")
                    ->where("IdFarmacia", $IdCliente)
                    ->get("farmacias");

            $nombreCliente = $query->result_array()[0]['NombreFarmacia'];

        }elseif (stristr($IdCliente, '-M') !=FALSE) {
            $query = $this
                    ->db
                    ->select("NombreMedico")
                    ->where("IdMedico", $IdCliente)
                    ->get("medicos");

            $nombreCliente = $query->result_array()[0]['NombreMedico'];
        }else {
           $conn = $this->open_database_connectionSQL();

            $tsql = "SELECT NOMBRE FROM vm_Clientes WHERE CLIENTE='".$IdCliente."'";

            $stmt = sqlsrv_query( $conn, $tsql , null, array( "Scrollable" => SQLSRV_CURSOR_KEYSET ) );
            if(sqlsrv_num_rows($stmt)){
                $i=0;
                while($row=sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC)){
                    $nombreCliente = $row['NOMBRE'];
                    $i++;
                }

            }
            $this->sqlsrv->close();
        }
        return $nombreCliente;
    }

    public function detalleReporte($IdLog) {
        $json = array();
        $i=0;        
        $query = $this
                ->db
                ->where('IdLog', $IdLog)
                ->get('detallelog');

        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $key) {
                $json[$i]['ARTICULO'] = $key['Articulo'];
                $json[$i]['DESCRIPCION'] = $key['Descripcion'];
                $json[$i]['CANTIDAD'] = $key['Cantidad'];
                $i++;
            }
        }else {
            $json[$i]['ARTICULO'] = '';
            $json[$i]['DESCRIPCION'] = 'Aún no hay registros...';
            $json[$i]['CANTIDAD'] = '';
        }
        echo json_encode($json);
    }

    public function listandoRutas() {
        $temp=array();
        $i=0;
        $query = $this->db->query("SELECT Usuario AS Usuario, Nombre_visitador AS Nombre_visitador FROM usuarios WHERE Rol = 2");

        if ($query->num_rows()>0) {
            foreach ($query->result_array() as $key) {
                $temp[] = array(
                    'value' => $key['Usuario'],
                    'desc' => $key['Usuario'].' - '.$key['Nombre_visitador']
                );
            }
            echo json_encode($temp);
        }else {
            echo false;
        }        
    }
    //GENERA EXCEL SOBRE EL CUMPLIMIENTO
    public function generarExcelCump() {
        $data=array(); $titulosColumnas=array(); $filter=array();
        $i=0;
        $RT = $this
            ->db
            ->select("Rutas")
            ->where("Rol", 2)
            ->get("usuarios");

        $CCT = $this->db->query("SELECT * FROM cuotasmes GROUP BY ARTICULO");

        if ($CCT->num_rows()>0) {
            foreach ($CCT->result_array() as $key) {
                $data[$i]['ARTICULO'] = $key['ARTICULO'];
                $data[$i]['DESCRIPCION'] = $key['DESCRIPCION'];
                $data[$i]['CUOTAXVIS'] = $this->cuotaMes($RT->result_array(), $key['ARTICULO']);
                $i++;
            }
        }

        $objPHPExcel = new PHPExcel();
        $tituloReporte = "Reporte de cumplimiento";
        array_push($titulosColumnas, 'ARTICULOS', 'DESCRIPCION');

        for ($ii=0; $ii < count($data[0]['CUOTAXVIS']); $ii++) {
            array_push($titulosColumnas, "CANTIDAD", "FACTURADO", "PORCENTAJE");
        }
        
        $objPHPExcel->setActiveSheetIndex(0)
                    ->setCellValue('A1',$tituloReporte)
                    ->setCellValue('A4',  $titulosColumnas[0])
                    ->setCellValue('B4',  $titulosColumnas[1]);

        $i=4; $ij=2; $RR = count($data[0]['CUOTAXVIS']) * 3;
        for ($j=67;$j<=90;$j++) {
            if ($ij<=$RR) {
                $objPHPExcel->setActiveSheetIndex(0)
                            ->setCellValue(chr($j).$i,$titulosColumnas[$ij]);
                $objPHPExcel->getActiveSheet()->getColumnDimension(chr($j))->setWidth(12);
            }else {
                $objPHPExcel->setActiveSheetIndex(0)
                            ->setCellValue(chr($j).$i,$titulosColumnas[$ij]);
                $objPHPExcel->getActiveSheet()->getColumnDimension(chr($j))->setWidth(12);
                $ij++;
                break;
            }
            $ij++;
        }

        $estiloAliniadoRigth = array(
            'alignment' =>  array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_RIGHT,
                    'wrap'          => TRUE
        ));

        $i=5; $k=0; $temp1=array();
        foreach ($data as $key) {
            $objPHPExcel->setActiveSheetIndex(0)
                        ->setCellValue('A'.$i,  $key['ARTICULO'])
                        ->setCellValue('B'.$i,  $key['DESCRIPCION']); 
            $jk=2;
            for ($j=67;$j<=90;$j++) {
                if ($jk<=$RR) {
                    $objPHPExcel->setActiveSheetIndex(0)
                                ->setCellValue(chr($j).$i,$key['CUOTAXVIS'][$k]['CANT']);
                    $j++; $jk++;

                    $objPHPExcel->setActiveSheetIndex(0)
                                ->setCellValue(chr($j).$i,$key['CUOTAXVIS'][$k]['FACT']);
                    $j++; $jk++;

                    $objPHPExcel->setActiveSheetIndex(0)
                                ->setCellValue(chr($j).$i,$key['CUOTAXVIS'][$k]['PORC']."%");
                    $objPHPExcel->getActiveSheet()->getStyle(chr($j).$i)->applyFromArray($estiloAliniadoRigth);

                    array_push($temp1, $key['CUOTAXVIS'][$k]['VISI']);
                    $k++;
                }else {
                    break;
                }
                $jk++;
            } 
            $i++;
            if ($k > 5) {
                $k=0;
            }
            $filter = array_unique($temp1);
        }

        $estiloTituloColumnas = array(
            'font' => array(
                'name'      => 'Calibri',
                'bold'      => true
            ),
            'alignment' =>  array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
                    'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
                    'wrap'          => TRUE
        ));

        //LISTA VISITADORES
        $kj=3; $jj=0; $RR = count($data[0]['CUOTAXVIS']) * 3; $ji=0;
        for ($j=67;$j<=90;$j++) {
            if ($kj<=$RR) {
                $objPHPExcel->setActiveSheetIndex(0)
                            ->setCellValue(chr($j).'3',$filter[$jj]);
                $ji=$j+2;                
                $objPHPExcel->setActiveSheetIndex(0)
                            ->mergeCells(chr($j).'3:'.chr($ji).'3');
                $objPHPExcel->getActiveSheet()->getStyle(chr($j).'3:'.chr($ji).'3')->applyFromArray($estiloTituloColumnas);
            }else {
                $objPHPExcel->setActiveSheetIndex(0)
                            ->mergeCells(chr($j).'3:'.chr($ji).'3');
                $objPHPExcel->getActiveSheet()->getStyle(chr($j).'3:'.chr($ji).'3')->applyFromArray($estiloTituloColumnas);
                break;
            }
            $kj++;$jj++;$j=$j+2;

            if ($jj > 5) {
                break;
            }
        }
        $estiloTituloReporte = array(
            'font' => array(
                'name'      => 'Verdana',
                'bold'      => true,
                'italic'    => false,
                'strike'    => false,
                'size' =>18,
                    'color'     => array(
                        'rgb' => '212121'
                    )
            ),
            'alignment' =>  array(
                    'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
                    'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
                    'rotation'   => 0,
                    'wrap'       => TRUE,
            )
        );

        $objPHPExcel->setActiveSheetIndex(0)
                    ->mergeCells('A1:'.chr($j).'1');
        $objPHPExcel->getActiveSheet()->getStyle('A1:'.chr($j).'1')->applyFromArray($estiloTituloReporte);

        $objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(15);
        $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(70);
        $objPHPExcel->getActiveSheet()->setTitle('Reporte cumplimiento');        
        $objPHPExcel->setActiveSheetIndex(0);        
        $objPHPExcel->getActiveSheet(0)->freezePane('A5');
        $objPHPExcel->getActiveSheet(0)->freezePaneByColumnAndRow(0,5);

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="Reporte cumplimiento '.date('d/m/Y').'.xlsx"');
        header('Cache-Control: max-age=0');

        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        $objWriter->save('php://output');
    }

    //GENERA EXCEL DE VISITAS,...
    public function generarExcel($f1,$f2,$ruta) {
        $f1 = date('Y-m-d', strtotime($f1));
        $f2 = date('Y-m-d', strtotime($f2));

        if ($ruta=="ALL") {
            $resultado = $this
                        ->db
                        ->where('Fecha >=', $f1.' 00:00:00')
                        ->where('Fecha <=', $f2.' 23:59:59')
                        ->get('log');
        }else {
            $resultado = $this
                        ->db
                        ->where('Fecha >=', $f1.' 00:00:00')
                        ->where('Fecha <=', $f2.' 23:59:59')
                        ->where("RUTA", $ruta)
                        ->get('log');
        }

        if($resultado->num_rows() > 0 ) {
            
            $objPHPExcel = new PHPExcel();

            $tituloReporte = "Reporte de visita";
            $titulosColumnas = array('CODIGO', 'CLIENTE', 'DESCRIPCION', 'FECHA Y HORA', 'RUTA');
            
            $objPHPExcel->setActiveSheetIndex(0)
                        ->mergeCells('A1:E1');
                            
            
            $objPHPExcel->setActiveSheetIndex(0)
                        ->setCellValue('A1',$tituloReporte)
                        ->setCellValue('A3',  $titulosColumnas[0])
                        ->setCellValue('B3',  $titulosColumnas[1])
                        ->setCellValue('C3',  $titulosColumnas[2])
                        ->setCellValue('D3',  $titulosColumnas[3])
                        ->setCellValue('E3',  $titulosColumnas[4]);
            $i=4;
            foreach ($resultado->result_array() as $key) {
                $objPHPExcel->setActiveSheetIndex(0)
                        ->setCellValue('A'.$i,  $key['Cliente'])
                        ->setCellValue('B'.$i,  $key['CLNombre'])
                        ->setCellValue('C'.$i,  $key['Descripcion'])
                        ->setCellValue('D'.$i,  date('d/m/Y g:ia', strtotime($key['Fecha'])))
                        ->setCellValue('E'.$i,  $key['Ruta']);
                $i++;
            }
            
            $estiloTituloReporte = array(
                'font' => array(
                    'name'      => 'Verdana',
                    'bold'      => true,
                    'italic'    => false,
                    'strike'    => false,
                    'size' =>18,
                        'color'     => array(
                            'rgb' => '212121'
                        )
                ),
                'alignment' =>  array(
                        'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
                        'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
                        'rotation'   => 0,
                        'wrap'       => TRUE,
                )
            );

            $estiloTituloColumnas = array(
                'font' => array(
                    'name'      => 'Arial',
                    'bold'      => true
                ),
                'alignment' =>  array(
                        'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
                        'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
                        'wrap'          => TRUE
                ));
                
            $estiloInformacion = new PHPExcel_Style();
            $estiloInformacion->applyFromArray(
                array(
                    'font' => array(
                    'name'      => 'Arial',
                    'size' => 11
                )
            ));
            $objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(12);
            $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(50);
            $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(50);
            $objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(22);
            $objPHPExcel->getActiveSheet()->getStyle('A1:E1')->applyFromArray($estiloTituloReporte);
            $objPHPExcel->getActiveSheet()->getStyle('A3:E3')->applyFromArray($estiloTituloColumnas);       
            $objPHPExcel->getActiveSheet()->setSharedStyle($estiloInformacion, "A4:E".($i-1));
            
            $objPHPExcel->getActiveSheet()->setTitle('Reporte visita');
            
            $objPHPExcel->setActiveSheetIndex(0);
            
            $objPHPExcel->getActiveSheet(0)->freezePane('A4');
            $objPHPExcel->getActiveSheet(0)->freezePaneByColumnAndRow(0,4);

            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="Reporte visita '.date('d/m/Y').'.xlsx"');
            header('Cache-Control: max-age=0');

            $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
            $objWriter->save('php://output');       
        }
        else {
            print_r('No hay resultados para mostrar');
        }
    }
}