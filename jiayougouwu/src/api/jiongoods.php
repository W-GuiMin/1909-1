<?php

    include 'conn.php';

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
    $good = isset($_REQUEST['good']) ? $_REQUEST['good'] : '';
    $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '';

    $sql1 = "SELECT * FROM user_goods WHERE userid='$name' AND goodsId='$good'";//查询是否存在用户购买过该商品
    $sql2 = "UPDATE user_goods SET goodnum='$num' WHERE userid='$name' AND goodsId='$good'";//购买过修改数量
    $sql3 = "INSERT INTO user_goods(userid,goodsId,goodnum) VALUES('$name','$good','$num')";//没购买添加商品
    //执行语句
    $res1 = $conn->query($sql1);

    if($res1->num_rows){
        $res2 = $conn->query($sql2);
    }else{
        $res3 = $conn->query($sql3); 
    }
?>