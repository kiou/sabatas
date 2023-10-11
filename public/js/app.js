$( document ).ready(function() {
    var menu = $('.navigation');

    var checkScroll = function() {
      if ($(window).scrollTop() > 60) {
        menu.addClass('fixed');
        $('.mobilemenucontent').removeClass('active');
        $('#menu-btn').removeClass('active');
        if ($('.message').length) {
          $('.message').remove();
        }
      } else {
        menu.removeClass('fixed');
      }
    };
  
    checkScroll();
  
    $(window).scroll(checkScroll);

    $(".owl-one").owlCarousel({
      loop:false,
      items:2,
      nav:true,
      margin:30,
      navText:['<i class="fas fa-chevron-left"></i>','<i class="fas fa-chevron-right"></i>'],
      responsiveClass:true,
      responsive:{
          0:{
              items:1,
              nav:true
          },
          950:{
              items:2,
              nav:true
          }
      }
    });

    $(".owl-two").owlCarousel({
      loop:false,
      items:2,
      nav:true,
      margin:30,
      navText:['<i class="fas fa-chevron-left"></i>','<i class="fas fa-chevron-right"></i>'],
      responsiveClass:true,
      responsive:{
          0:{
              items:1,
              nav:true
          },
          950:{
              items:2,
              nav:true
          }
      }
    });

    $(".owl-three").owlCarousel({
      loop:false,
      items:1,
      nav:true,
      navText:['<i class="fas fa-chevron-left"></i>','<i class="fas fa-chevron-right"></i>'],

    });

    $(".owl-fore").owlCarousel({
      loop:false,
      items:2,
      nav:true,
      margin:30,
      navText:['<i class="fas fa-chevron-left"></i>','<i class="fas fa-chevron-right"></i>'],
      responsiveClass:true,
      responsive:{
          0:{
              items:1,
              nav:true
          },
          950:{
              items:2,
              nav:true
          }
      }
  });

  $('.linknav').on('click', function(e){
    e.preventDefault();
    
    var button = $(this);
    var url = button.attr('data-url');
    var nav = button.attr('data-nav');
    var blank = button.attr('data-blank');

    if(url != undefined){
        if(blank == undefined) window.open(url, '_blank');
        else location.href = url;
    }

    if(nav != undefined){
        $('html, body').stop().animate({
            scrollTop: $(nav).offset().top - 118
        }, 600); 
    }
  });

  $('#menu-btn').on('click', function(e){
    e.preventDefault();

    $('#menu-btn').toggleClass('active');
    $('.mobilemenucontent').toggleClass('active');
    if ($(window).scrollTop() < 60) {
      $('.navigation').toggleClass('fixed');
    }
  });

});

