<?php 
include("connection.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TRANSFER CREDITS</title>
    <link rel="stylesheet" href="css/trans-style.css" type="text/css">
</head>
<body>
    <h1>TRANSFER CREDITS</h1>
    <form action="success.php" method="POST">
        <table>
            <tr>
                <td class="text">Sender's E-Mail</td>
                <td><input type="text" name="sender" class="input"></td>
            </tr>
            <tr>
                <td class="text">Receiver's E-Mail</td>
                <td><input type="text" name="receiver" class="input"></td>
            </tr>
            <tr>
                <td class="text">Credits to Transfer</td>
                <td><input type="number" name="credit" class="input"></td>
            </tr>
            <tr>
                <td><a href="view-users.php" class="btn btn-accent btn-small">VIEW USERS</a></td>
                <td><input type="submit" class="btn btn-accent btn-small" name="transfers" value="TRANSFER"></td>
            </tr>
        </table>
    </form>
</body>
</html>
