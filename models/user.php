<?php

class User extends Db
{
    public function checkLogIn($user, $passwork)
    {
        $sql = self::$connection->prepare("SELECT * FROM user where user_name = ? and password =? ");
        $passwork = md5($passwork);
        $sql->bind_param("ss", $user, $passwork);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->num_rows;
        if ($items == 1) {
            return true;
        } else {
            return false;
        }
        //return an array
    }
    public function dangky($idname, $namep, $passs, $roleid)
    {
        $sql = self::$connection->prepare("insert into user(user_id,user_name,password1,role_id) values(?,?,?,?)");

        $sql->bind_param("issi", $id, $name, $passs, $role);

        return $sql->execute();
    }

    public function dangky1($idname, $namep)
    {
        $sql = self::$connection->prepare("insert into user(user_id,user_name) values(?,?)");

        $sql->bind_param("is", $id, $name);

        return $sql->execute();
    }
}
