import "bootstrap";
import "jquery";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import "select2";
import "select2/dist/css/select2.css";

var jumboHeight = $('.jumbotron').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});

var scrollWindow = function() {
  $(window).scroll(function(){
    var $w = $(this),
        st = $w.scrollTop(),
        navbar = $('.ftco_navbar'),
        sd = $('.js-scroll-wrap');

    if (st > 150) {
      if ( !navbar.hasClass('scrolled') ) {
        navbar.addClass('scrolled');
      }
    }
    if (st < 150) {
      if ( navbar.hasClass('scrolled') ) {
        navbar.removeClass('scrolled sleep');
      }
    }
    if ( st > 350 ) {
      if ( !navbar.hasClass('awake') ) {
        navbar.addClass('awake');
      }

      if(sd.length > 0) {
        sd.addClass('sleep');
      }
    }
    if ( st < 350 ) {
      if ( navbar.hasClass('awake') ) {
        navbar.removeClass('awake');
        navbar.addClass('sleep');
      }
      if(sd.length > 0) {
        sd.removeClass('sleep');
      }
    }
  });
};
scrollWindow();
var OnePageNav = function() {
  $(".smoothscroll[href^='#'], #ftco-nav ul li a[href^='#']").on('click', function(e) {
     e.preventDefault();

     var hash = this.hash,
         navToggler = $('.navbar-toggler');
     $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 700, 'easeInOutExpo', function(){
      window.location.hash = hash;
    });
    if ( navToggler.is(':visible') ) {
      navToggler.click();
    }
  });
  $('body').on('activate.bs.scrollspy', function () {
    console.log('nice');
  })
};
OnePageNav();
initMapbox();


document.querySelectorAll(".advanced_search").forEach((inputField) => {
  $(inputField).select2({width: "140px"});
})

$(".advanced_search").select2({
    placeholder: "Select an option"
});

//set default degree (360*5)
var degree = 1800;
//number of clicks = 0
var clicks = 0;

$(document).ready(function(){

  /*WHEEL SPIN FUNCTION*/
  $('#spin').click(function(){

    //add 1 every click
    clicks ++;

    /*multiply the degree by number of clicks
    generate random number between 1 - 360,
    then add to the new degree*/
    var newDegree = degree*clicks;
    var extraDegree = Math.floor(Math.random() * (360 - 1 + 1)) + 1;
    totalDegree = newDegree+extraDegree;

    /*let's make the spin btn to tilt every
    time the edge of the section hits
    the indicator*/
    $('#wheel .sec').each(function(){
      var t = $(this);
      var noY = 0;

      var c = 0;
      var n = 700;
      var interval = setInterval(function () {
        c++;
        if (c === n) {
          clearInterval(interval);
        }

        var aoY = t.offset().top;
        $("#txt").html(aoY);
        console.log(aoY);

        /*23.7 is the minumum offset number that
        each section can get, in a 30 angle degree.
        So, if the offset reaches 23.7, then we know
        that it has a 30 degree angle and therefore,
        exactly aligned with the spin btn*/
        if(aoY < 23.89){
          console.log('<<<<<<<<');
          $('#spin').addClass('spin');
          setTimeout(function () {
            $('#spin').removeClass('spin');
          }, 100);
        }
      }, 10);

      $('#inner-wheel').css({
        'transform' : 'rotate(' + totalDegree + 'deg)'
      });

      noY = t.offset().top;

    });
  });



});//DOCUMENT READY

