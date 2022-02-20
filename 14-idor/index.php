<?php
## demonstração de como funciona um IDOR
if(isset($_GET['noteid']) and !empty($_GET['noteid']))
{
    $nota = file_get_contents("notas/".intval($_GET['noteid']). ".txt");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notas</title>
</head>
<body>
    <center><h2>Central de Noitas</h2></center><br>
    <center><a href="?noteid=1">Ler nota</a></center>

    <center>Conteúdo da nota:
        <?=$nota?>
    </center>
</body>
</html>