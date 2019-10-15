<?php
    include 'conn.php';

    $page = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] : '1';
    $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '20';
    $paixu = isset($_REQUEST['paixu']) ? $_REQUEST['paixu'] : '';
    $kind = isset($_REQUEST['kind']) ? $_REQUEST['kind'] : '';
    $type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';
    // echo $page;接收数据记得回到前端检测一下，没问题再往下走

    /*
        * 接收前端数据：ipage 1、num 5
        * 写查询语句：SELECT * FROM goods LIMIT 起始下标,条数;

        page   每页条数num    下标index
        1        10                0
        2        10                10
        3        10                20

        page和num求index
        index=(page-1)*num
    */

    //1.写查询语句
    $index = ($page - 1) * $num;
    if($paixu) {
         if($type==2){
          $sql = "SELECT * FROM goodslist WHERE kind='$kind' ORDER BY sales $paixu LIMIT $index,$num";
         }
         if($type==3){
          $sql = "SELECT * FROM goodslist WHERE kind='$kind' ORDER BY sales $paixu LIMIT $index,$num";
         }
         if($type==4){
          $sql = "SELECT * FROM goodslist WHERE kind='$kind' ORDER BY price $paixu LIMIT $index,$num";
         }
    }else{
        $sql = "SELECT * FROM goodslist WHERE kind='$kind' LIMIT $index,$num";
    }
    //2.执行语句
    $res = $conn->query($sql);
    // var_dump($res);
    //3.提取数据
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    //语句：查询整个表的
    $sql2 = "SELECT * FROM goodslist WHERE kind='$kind'";
    $res2 = $conn->query($sql2);
    // echo $res2->num_rows;

    $data = array(//制作关联数组，就可以一次性传多个值给前端
        'total' => $res2->num_rows,
        'list' => $arr,
        'page' => $page,
        'num' => $num
    );
     // 把数组转成字符串，echo给前端
    echo json_encode($data);

    //5.关闭数据库
    $res->close();
    $conn->close();
?>