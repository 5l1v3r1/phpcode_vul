<?php
if(isset($_POST['submit'])){
    $id = addslashes($_POST['id']);
    $username = addslashes($_POST['username']);
    $password = addslashes($_POST['password']);
    $conn = mysqli_connect("localhost","root","root","foodb");
    $sql = "INSERT INTO user(id, username, password) VALUES ($id,'$username','$password')";
    $result = mysqli_query($conn,$sql);
    if ($result){
        echo "注册成功";
    }else{
        echo "注册失败";
    }
}

?>
<title>注册</title>
<h1>注册用户</h1>
<form action="register.php" method="post">
ID：<input type="text" name="id"><br>
用户名：<input type="text" name="username"><br>
密码：<input type="password" name="password"><br>
    <input type="submit" name="submit" value="注册">

</form>