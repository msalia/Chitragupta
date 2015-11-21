<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Chitragupta API</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<?=base_url()?>assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700" rel="stylesheet">
    <link href="<?=base_url()?>assets/css/main.css" rel="stylesheet">

    <!-- LOAD ALL JS -->
    <script src="<?=base_url()?>assets/bootstrap/js/bootstrap.min.js" text="text/javascript" ></script>
    <script src="<?=base_url()?>assets/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>

<?$this->load->view($subview)?>
<?$this->load->view('common/api_footer.php')?>

</body>
</html>
