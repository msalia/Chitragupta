<div class="main-content-navbar">
    <ul class="navbar">
        <li class="selected" data-id="content-intro">INTRODUCTION</li>
        <li data-id="content-usage">USAGE</li>
        <li data-id="content-maintainers">MAINTAINERS</li>
    </ul>
</div>
<div class="main-content-content">
    <div id="content-intro" class="content-section content-hidden">
        <h3>INTRODUCTION</h3>
        <p>
            This API was developed with the goal to have a central repository of data for Pramukh Cup. This data includes player profiles, player stats, team profiles &amp; match records.
            This API will solely be used to track tournament data and provide the required data for Cricboard.
        </p>
    </div>
    <div id="content-usage" class="content-section content-hidden">
        <h3>USAGE</h3>
        <p>
            Chitragupta has two primary functions. Import &amp; Retrieve. API will import the Cricboard export data and update user profiles.
            It will also allow Cricboard to retrieve any data that it needs.
        </p>
    </div>
    <div id="content-maintainers" class="content-section content-hidden">
        <h3>MAINTAINERS</h3>
        <p>
            Chitragupta API is mainted by Ankur Patel, Hemal Patel &amp; Mukund Salia. Please contact these individuals before making any major changes to the API.
        </p>
    </div>
</div>

<script>
$(document).ready(function() {

    function setSelectedContent() {
        var currentlySelected = $('li.selected').attr('data-id');
        $('#'+currentlySelected).removeClass('content-hidden');
    }

    $('ul.navbar li').click(function() {
        var prevSelection = $('li.selected');
        var prevDataId = prevSelection.attr('data-id');
        prevSelection.removeClass('selected');
        $('#'+prevDataId).addClass('content-hidden');

        $(this).addClass('selected');
        setSelectedContent();
    });

    setSelectedContent();

});
</script>
