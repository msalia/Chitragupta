<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Chitragupta API</title>
    <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/main.css" />
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700' rel='stylesheet' type='text/css'>
</head>
<body>

<div id="wrapper">
    <div id="container">
        <div id="container-title">Chitragupta API</div>
        <p>This API was developed with the goal to have a central repository of data Pramukh Cup. Data includes player profiles, player stats, team profiles &amp; match records.</p>
        <p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
    </div>
</div>

</body>
</html>
