<div class="main-content-navbar">
    <?php echo form_open_multipart('uploadScoreboard/do_upload');?>
        <span id="selected-file">
            <i class="fa fa-plus"></i>
        </span>
        <label class="upload-button" for="file-selector">
            <input id="file-selector" type="file" style="display:none;">
            SELECT FILE
        </label>
        <button type="submit" class="upload-button selected">
            SUBMIT
        </button>
    </form>
</div>
<div class="main-content-content">
    <div class="content-section">
        <h3>UPLOAD ERROR</h3>
        <p>
            <?if (isset($error)) echo $error?>
        <p>
    </div>
</div>

<script>
$(document).ready(function() {

    $('#selected-file').click(function() {
        $('#file-selector').click();
    });

    $('#file-selector').change(function(event) {
        var file = event.target.files[0];
        if (file) {
            $('#selected-file').html(file.name);
        } else {
            $('#selected-file').html('<i class="fa fa-plus"></i>');
        }
    });

});
</script>
