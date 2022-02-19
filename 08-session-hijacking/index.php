<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(((  )))</title>
</head>
<body>
    <?php

        session_start();

        if ($_SESSION['estalogado'] == true)
        {
            echo "Olá admin!";
        } else {
            ?>
            <form action="" method="post">
            <input type="text" name="usuario" placeholder="usuário">
            <input type="password" name="senha" placeholder="sua senha">
            <input type="submit" value="Entrar">
            </form>
            <?php
        }

    ?>
</body>
</html>


<?php

if (isset($_POST['usuario']) and !empty($_POST['usuario']) and isset($_POST['senha']) and !empty($_POST['senha']))
{
    if($_POST['usuario'] == 'admin' and $_POST['senha'] == 'admin'){
        $_SESSION['estalogado'] = true;
    } 
    else {
        $_SESSION ['estalogado'] = false;
    }
}

?>