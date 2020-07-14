<?php 
include("connection.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Users</title>
    <link rel="stylesheet" href="css/vu-style.css" type="text/css">
</head>
<body>
    <h1>Here Is The List Of All Users</h1>
    <div>
        <table class="container">
            <tr id="yt">
                <td>User Id</td>
                <td>Name</td>
                <td>Credit</td>
                <td>E-Mail</td>
            </tr>

            <?php
            $q = ("SELECT * FROM user");
            $result = mysqli_query($con,$q);
            $num = mysqli_num_rows($result);
            for($i = 1; $i <= $num; $i++)
            {
            $row = mysqli_fetch_array($result);
            ?>

            <tr class="info">
                <td><?php echo $row['user_id'] ?></td>
                <td><?php echo $row['name'] ?></td>
                <td><?php echo $row['credit'] ?> </td>
                <td><?php echo $row['e_mail'] ?></td>
                <?php } ?>
                </tr> 
        </table>
    </div>
</br>
    <a href="index.php" class="btn btn-accent btn-small" id="left">BACK</a>
    <a href="transfer.php" class="btn btn-accent btn-small">Transfer Credit</a>
</br>
</body>
</html>