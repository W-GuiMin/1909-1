<?php

include 'conn.php';
//注册功能
$name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';
$password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';

//sql语句
$sql = "INSERT INTO users(userid,userpswd) VALUES('$name','$password')";

//执行语句
$res = $conn->query($sql);

if($res) {
    //插入成功
    echo 'yes';
}else{
    echo 'no';
}
?>