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
 
console.log('scirp');
console.log($('#track-list .song-row').length);

if ($('#track-list .song-row').length >= 20 ) {
    $('body').append("<p id='load-more'><span>LOAD MORE</span></p>");
}
if ($('#users-index .user-image').length >= 20 ) {
    $('body').append("<p id='load-more'><span>LOAD MORE</span></p>");
}

// wavesurfer dance

var waveCounter = 0;
var wavez = "wavesurfer"+waveCounter

$('.song-row').click(function(){
    $(this).fadeOut(100);
    $('.footer').html(
        `<div id="wave-counting" >
            <progress id="progress" class="progress progress-striped" value="100" max="100" style="display: none;"></progress>
            <wave style="position: absolute; z-index: 2; left: 0px; top: 0px; bottom: 0px; overflow: hidden; width: 0px; display: block; box-sizing: border-box; border-right: 1px solid rgb(255, 255, 255);">
                <canvas width="1820" height="256" style="width: 910px;"></canvas>
            </wave>
        </div>`);
    $('#wave-counting').attr("id", "waveform" + waveCounter);
    var wavesurfer = WaveSurfer.create({
            container: ('#waveform' + waveCounter),
            waveColor: 'violet',
            progressColor: 'purple',
            height: 37
    });
    wavesurfer.load('http://ia902606.us.archive.org/35/items/shortpoetry_047_librivox/song_cjrg_teasdale_64kb.mp3');
    wavecounter++
})





//var wavesurfer = WaveSurfer.create({
//    container: ('#waveform' + wavecounter),
//    waveColor: 'violet',
//    progressColor: 'purple',
//    height: 37
//});
// increment 

//wavesurfer.load('http://ia902606.us.archive.org/35/items/shortpoetry_047_librivox/song_cjrg_teasdale_64kb.mp3');



//  on click: 
//      replace '.song-row' HTML with waveform html (store in var, include td-colspan=7)
//          play/pause button only
//      wavesurfer+i.load('#url#')
//      wavesurfer+i.play


