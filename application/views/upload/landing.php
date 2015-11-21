<div class="main-content-navbar">
    <form id="upload-form">
        <span id="selected-file">
            <i class="fa fa-plus"></i>
        </span>
        <label class="upload-button" for="file-selector">
            <input id="file-selector" type="file" style="display:none;">
            SELECT FILE
        </label>
        <button id="submit" class="upload-button selected">
            SUBMIT
        </button>
    </form>
</div>
<div class="main-content-content">
    <div class="content-section">
        <h3>INSTRUCTIONS</h3>
        <p>
            This API was developed with the goal to have a central repository of data for Pramukh Cup. This data includes player profiles, player stats, team profiles &amp; match records.
            This API will solely be used to track tournament data and provide the required data for Cricboard.
        </p>
    </div>
</div>

<script>
$(document).ready(function() {

    function handleUploadProgress(data) {
        console.log('upload progress:', data);
    }

    $('#file-selector').change(function(event) {
        var file = event.target.files[0];
        if (file) {
            $('#selected-file').html(file.name);
        } else {
            $('#selected-file').html('<i class="fa fa-plus"></i>');
        }
    });

    $('#submit').click(function(event) {
        var formData = new FormData($('#file-selector')[0]);
        $.ajax({
            url: '<?=base_url()?>/uploadScoreboard/newScores',
            type: 'POST',
            xhr: function() {  // custom xhr
                myXhr = $.ajaxSettings.xhr();
                if(myXhr.upload){ // if upload property exists
                    myXhr.upload.addEventListener('progress', handleUploadProgress, false); // progressbar
                }
                return myXhr;
            },
            success: completeHandler = function(data) {
                var catchFile = navigator.userAgent.indexOf('Chrome')
                    ? $("#file-selector").val().replace(/C:\\fakepath\\/i, '')
                    : $("#file-selector").val();
                $("#file-selector").html(writer(catchFile));
            },
            error: errorHandler = function() {
                alert("it failed!!! oh no!!!!!");
            },
            data: formData,
            cache: false,
            contentType: false,
            processData: false
        }, 'json');
        event.preventDefault();
    });

});
</script>
