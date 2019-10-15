<?php
    include 'conn.php';

    $page = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] : '1';
    $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '20';
    $paixu = isset($_REQUEST['paixu']) ? $_REQUEST['paixu'] : '';
    $mohu = isset($_REQUEST['mohu']) ? $_REQUEST['mohu'] : '';
    $type = isset($_REQUEST['type']) ? $_REQUEST['type'] : '';
    $minP = isset($_REQUEST['minP']) ? $_REQUEST['minP'] : '';
    $maxP = isset($_REQUEST['maxP']) ? $_REQUEST['maxP'] : '';
    //1.写查询语句
    $index = ($page - 1) * $num;
    if($paixu) {
         if($type==2){
            $sql = "SELECT * FROM goodslist WHERE title LIKE '%$mohu%' ORDER BY sales $paixu LIMIT $index,$num";
         }
         if($type==3){
            $sql = "SELECT * FROM goodslist WHERE title LIKE '%$mohu%' ORDER BY sales $paixu LIMIT $index,$num";
         }
         if($type==4){
            $sql = "SELECT * FROM goodslist WHERE title LIKE '%$mohu%' ORDER BY price $paixu LIMIT $index,$num";
         }
    }else{
        $sql = "SELECT * FROM goodslist WHERE title LIKE '%$mohu%' LIMIT $index,$num";
    }
    //2.执行语句
    $res = $conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);

    //语句：查询整个表的
    $sql2 = "SELECT * FROM goodslist WHERE title LIKE '%$mohu%' LIMIT $index,$num";
    $res2 = $conn->query($sql2);
    // echo $res2->num_rows;

    $data = array(//制作关联数组，就可以一次性传多个值给前端
        'total' => $res2->num_rows,
        'list' => $arr,
        'page' => $page,
        'paixu' => $paixu,
        'type' => $type,
        'sql' => $sql,
        'sql2' => $sql2,
        'num' => $num
    );
     // 把数组转成字符串，echo给前端
    echo json_encode($data);

    //5.关闭数据库
    $res->close();
    $conn->close();
?>