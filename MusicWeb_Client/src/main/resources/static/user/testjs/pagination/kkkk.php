<?php
include_once "../database/Database.php";
$db = new Database();

//    //==mã hóa password
$query = "insert into account(username, password) values(?,?)";
$user = "nguyen";
$pass = "tbdv266";
$hash = password_hash($pass, PASSWORD_DEFAULT);
$param =[
    $user,
    $hash
];

$db->insertDataParam($query, $param);

//giải mã để kiểm tra
$query  = " select * from account where username=?";
$user = "nguyen";
$pass = "tbdv266";
$param =[
    $user
];
$stmt = $db->selectDataParam($query,$param);
$account = $stmt->fetch(PDO::FETCH_ASSOC);
$check = password_verify($pass, $account['password']);

echo "$pass - $hash";
