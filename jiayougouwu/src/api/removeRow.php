<?php

    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $removeid = isset($_REQUEST['removeid']) ? $_REQUEST['removeid'] : '';
    //sql语句
    $sql = "DELETE FROM user_goods WHERE userid='$name' AND goodsId='$removeid'";

    //执行语句
    $res = $conn->query($sql);

    if($res->num_rows) {
        echo 'yes';
    }else{
        echo 'no';
    }

    $conn->set_charset('utf8');//设置编码
    //3.关闭数据库
    $res->close();
    $conn->close();
?>