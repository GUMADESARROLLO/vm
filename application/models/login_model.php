<?php 
class login_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function login($userName, $pass) {
        if($userName != FALSE && $pass != FALSE) {
            $query = $this
                    ->db
                    ->where('Usuario', $userName)
                    ->where('Password', $pass)
                    ->where('Activo', 1)
                    ->get('usuarios');

            if($query->num_rows()>0){
                return $query->result_array();
            }
            return 0;
        }
    }
}