<?php
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $conn = mysqli_connect("localhost","root","root","foodb");
    if(!$conn){
        die('Could not connect database: ' . mysql_error());
    }else{
        $sql = "SELECT * FROM news where id=$id";
        $result = mysqli_query($conn,$sql);
        while ($row = mysqli_fetch_array($result)){
            echo "<h1>".$row['title']."</h1>";
            echo "<p>".$row['value']."</p>";
        }

    }
    mysqli_close($conn);

}else{
    echo "请输入一个ID值";
}
//GET型SQL注入DEMO程序