<?php

    include 'conn.php';

    $sql1 = 'SELECT * FROM index_goodslist';
    $res = $conn->query($sql1);//$res 是一个结果集
    $arr = $res->fetch_all(MYSQLI_ASSOC);//数组 [{},{},{}]

    $sql2 = 'SELECT * FROM index_goods';
    $res2 = $conn->query($sql2);//$res 是一个结果集
    $arr2 = $res2->fetch_all(MYSQLI_ASSOC);//数组 [{},{},{}]

    $data = array(//制作关联数组，就可以一次性传多个值给前端
        'goodslist' => $arr,
        'goods' => $arr2
    );

    echo json_encode($data);
    $conn->set_charset('utf8');//设置编码
    //3.关闭数据库
    $res->close();
    $conn->close();
?>