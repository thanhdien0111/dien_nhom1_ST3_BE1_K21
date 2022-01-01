<?php

class Admin extends Db
{
    public function checkLogIn($username, $password)
    {
        $sql = self::$connection->prepare("SELECT * from admin where `admin_name` =? and 
        `password` =?");
        $password = md5($password);
        var_dump($password);
        $sql->bind_param("ss", $username, $password);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->num_rows;
        if ($items == 1) {
            return true;
        } else {
            return false;
        }
    }
}
