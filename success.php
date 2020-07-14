<?php
include("connection.php");
if(isset($_POST['transfers']))
{

    $sender = trim($_POST['sender']);
    $receiver = trim($_POST['receiver']);
    $trans_credit = trim($_POST['credit']);

    $sql = ("UPDATE user SET credit = credit + ('$trans_credit') WHERE e_mail='$receiver' ");
    mysqli_query($con,$sql);

    $sql = ("UPDATE user SET credit = credit - ('$trans_credit') WHERE e_mail = '$sender' ");
    mysqli_query($con,$sql);

    $query = "INSERT INTO transfer(sender,receiver,trans_credit) VALUES('$sender','$receiver','$trans_credit')";
    mysqli_query($con,$query);
    mysqli_close($con);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SUCCESS</title>
    <link rel="stylesheet" href="css/success.css" type="text/css">
</head>
<body>
    <h1>CREDITS TRANSFERRED SUCCESSFULLY</h1>
    <a href="view-users.php"  class="btn btn-accent btn-small">VIEW ALL USERS</a>
</body>
</html>