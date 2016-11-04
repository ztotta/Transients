// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks

//= require bootstrap
//= require_tree .


//// LOAD MORE BUTTON, incomplete
if ($('#track-list .song-row').length >= 15 ) {
    $('body').append("<p id='load-more'><span>LOAD MORE</span></p>");
}
if ($('#users-index .user-image').length >= 15 ) {
    $('body').append("<p id='load-more'><span>LOAD MORE</span></p>");
}

// wavesurfer dance

//var waveCounter = 0;
//var wavez = "wavesurfer"+waveCounter

$('.song-row').click(function(){
    $(this).fadeOut(100);
    
    
//    var x = new Audio($('.trax').html);
//    x.play();
//    
//    $('.footer').html('<div id="wave-counting"><progress id="progress" class="progress progress-striped" value="100" max="100" style="display: none;"></progress><wave style="position: absolute; z-index: 2; left: 0px; top: 0px; bottom: 0px; overflow: hidden; width: 0px; display: block; box-sizing: border-box; border-right: 1px solid rgb(255, 255, 255);"><canvas width="1820" height="256" style="width: 910px;"></canvas></wave></div>');
//    $('#wave-counting').attr("id", "waveform" + waveCounter);
//    var wavesurfer = WaveSurfer.create({
//            container: ('#waveform' + waveCounter),
//            waveColor: '#f8f8f8',
//            progressColor: 'purple',
//            height: 37,
////            normalize: true;
////            barWidth: 3;
//    });

    var track_url = ""
    console.log('here') 
    $.post("/usertracks", {
        track_id: $(this).data("id"),
        authenticity_token: authToken()
    }).then(function(data) {
        console.log(data);
          $('#audio-player').html('');
          $('#audio-player').html('<audio id="player" autoplay="autoplay" controls="controls" src="'+data.audio+'"></audio>');
//            wavesurfer.load("${data.audio}");
//        setTimeout(function() {
//            wavesurfer.play()
//        }, 500);
    }, function(err) {
        console.warn(err);
    })
    
//    waveCounter++;
    
})

//var $playPause = $('#player');