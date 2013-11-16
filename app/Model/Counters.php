<?php

App::uses('AppModel', 'Model');

class Counters extends AppModel {

    public $name = 'Counters', $time_now = null, $time_out = null, $ip_address = null, $_session_counter = array();

    public function __construct($id = false, $table = null, $ds = null) {
        parent::__construct($id, $table, $ds);
        $this->time_now = time();
        $this->time_out = 60 * 15; //60 * 15 => 15 minute
        $this->ip_address = $_SERVER['REMOTE_ADDR'];
    }

    public function statistic() {
        $data = $this->find('all', array(
            'conditions' => array('UNIX_TIMESTAMP(`Counters.last_visit`) + ' . $this->time_out . ' > ' . $this->time_now . ' AND Counters.ip_address = ' . "'$this->ip_address'"),
            'fields' => array('Counters.ip_address')
        ));

        //Khong tim thay du lieu thoa dieu kien
        if (count($data) === 0):
            $this->save(array(
                'Counters' => array(
                    'ip_address' => $this->ip_address,
                //last_visit default now
                )
            ));
        endif;

        //Dem so nguoi dang online
        $onlineUser = $this->find('all', array(
            'fields' => array('Counters.ip_address'),
            'conditions' => array('UNIX_TIMESTAMP(Counters.last_visit) + ' . $this->time_out . ' > ' . $this->time_now)
        ));

        $this->_session_counter['onlineUser'] = count(Set::extract('/Counters/.', $onlineUser));


        //Demo tong so nguoi ghe tham
        $totalUser = $this->find('all', array(
            'fields' => array('Counters.ip_address')
        ));

        $this->_session_counter['totalUser'] = count(Set::extract('/Counters/.', $totalUser));

        return $this->_session_counter;
    }

}
