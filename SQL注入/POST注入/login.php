<?php
if (isset($_POST['username'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $conn = mysqli_connect("localhost", "root", "root", "foodb");
    if (!$conn) {
        die('Could not connect database: ' . mysql_error());
    } else {
        $sql = "SELECT * FROM user where username = '".$username."'";
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($result)) {
            $row_username = $row['username'];
            $row_password = $row['password'];

            }
            if ($row_username == $username && $row_password == $password){
                echo "登录成功!";
            }
            else{
                echo "账号/密码错误！请重试。";
        }

    }
    mysqli_close($conn);

} else {
    echo "请输入一个ID值";
}