<?php
if(isset($_POST['submit'])){
    $id = $_POST['id'];
    $conn = mysqli_connect("localhost","root","root","foodb");
    $sql = "SELECT * FROM user WHERE id=$id";
    $result = mysqli_query($conn,$sql);
    if ($result){
        while ($row = mysqli_fetch_array($result)){
            $username = $row['username'];
            $sql = "SELECT * FROM user WHERE username='$username'";
            $result = mysqli_query($conn,$sql);
            while ($row = mysqli_fetch_array($result)){
                echo "ID：".$row['id']."<br>";
                echo "用户名：".$row['username']."<br>";
                echo "密码：：".$row['password']."<br>";
            }

        }
    }
}

?>
<title>查询用户</title>
<h1>查询用户</h1>
<form action="search.php" method="post">
    ID：<input type="text" name="id"><br>
    <input type="submit" name="submit" value="查询">
</form>
