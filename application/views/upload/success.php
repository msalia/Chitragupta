<div class="main-content-content">
    <div class="content-section">
        <h3>UPLOAD SUCCESS</h3>
        <p>
            <?if (isset($upload_data)) :?>
                File <strong><?=$upload_data["file_name"]?></strong> was uploaded.
            <?endif?>
            <br /><br />
            <div class="upload-button" id="returnHome" style="max-width: 200px;">
                GO TO HOMEPAGE
            </div>
        <p>
    </div>
</div>

<script>
$(document).ready(function() {

    $('#returnHome').click(function() {
        window.location = "<?=base_url()?>";
    });

});
</script>
