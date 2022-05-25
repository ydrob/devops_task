<?php
 header('Content-Type: text/html; charset=utf-8');
 $path = '/opt/files/file';
 $d = date("Y-m-d_H:i:s");
 $dest = $path . '_'. $d . '.txt';
 if (isset($_POST['field1']) ) {
    $fh = fopen($dest,"a+");
    $string = $_POST['field1'];
    fwrite($fh,$string); // Write information to the file
    fclose($fh); // Close the file
    header('Location: index.html');
    exit;
 }
?>

