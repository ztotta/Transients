//// LOAD MORE BUTTON, incomplete
if ($('#track-list .song-row').length >= 15 ) {
    $('body').append("<p id='load-more'><span>LOAD MORE</span></p>");
}
if ($('#users-index .user-image').length >= 15 ) {
    $('body').append("<p id='load-more'><span>LOAD MORE</span></p>");
}

$('.song-row').click(function(){
    $(this).fadeOut(100);
    var track_url = ""
    console.log('here') 
    $.post("/usertracks", {
        track_id: $(this).data("id"),
        authenticity_token: authToken()
    }).then(function(data) {
        console.log(data);
          $('#audio-player').html('');
          $('#audio-player').html('<audio id="player" autoplay="autoplay" controls="controls" src="'+data.audio+'"></audio>');
    }, function(err) {
        console.warn(err);
    })
})