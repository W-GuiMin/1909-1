<?php

    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    //sql语句
    $sql = "SELECT * FROM users WHERE userid=$name;";

    //执行语句
    $res = $conn->query($sql);

    // var_dump($res);
    // 判断是否可以通过验证

    // echo $res->num_rows;
    if($res->num_rows) {
        //查找到，不能注册
        echo 'no';
    }else{
        echo 'yes';
    }

    $conn->set_charset('utf8');//设置编码
    //3.关闭数据库
    $res->close();
    $conn->close();
?>