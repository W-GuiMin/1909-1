<?php

    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

    $sql1 = "SELECT * FROM users WHERE userid='$name'";
    $sql2 = "SELECT * FROM users WHERE userid='$name' AND userpswd='$password'";
    //执行语句
    $res1 = $conn->query($sql1);

    if($res1->num_rows){
        $res2 = $conn->query($sql2);
        if($res2->num_rows){
            echo '登陆成功';
        }else{
            echo '密码错误';
        }
    }else{
        echo '用户名不存在';
    }
?>