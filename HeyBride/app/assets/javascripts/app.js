var main=function(){
    $('.dropdown-toggle').click(function(){
        $('.dropdown-menu').toggle()
    });
   
    $('.arrow-next').click(function(e){
      e.preventDefault();
        var currentSlide = $('.active-slide');
        var nextSlide = currentSlide.next();
        
        var currentDot = $('.active-dot');
    var nextDot=currentDot.next();
        
         if(nextSlide.length==0){
        nextSlide=$('.slide').first();
         nextDot = $('.dot').first();

    }
        
        currentSlide.fadeOut(800).removeClass('active-slide');
    nextSlide.fadeIn(600).addClass('active-slide');
    
    currentDot.removeClass('active-dot');
  nextDot.addClass('active-dot');
        
    });
      $('.arrow-prev').click(function(e) {
        e.preventDefault();
  var currentSlide = $('.active-slide');
  var prevSlide = currentSlide.prev();

  var currentDot = $('.active-dot');
  var prevDot = currentDot.prev();

  if(prevSlide.length === 0) {
    prevSlide = $('.slide').last();
  prevDot = $('.dot').last();
}

  currentSlide.fadeOut(600).removeClass('active-slide');
  prevSlide.fadeIn(600).addClass('active-slide');

  currentDot.removeClass('active-dot');
  prevDot.addClass('active-dot');
  $(".slide").first().addClass('active-slide');
    });
}
$(document).ready(main);
function popupCenter(url, width, height, name) {
  var left = (screen.width/2)-(width/2);
  var top = (screen.height/2)-(height/2);
  return window.open(url, name, "menubar=no,toolbar=no,status=no,width="+width+",height="+height+",toolbar=no,left="+left+",top="+top);
}

$("a.popup").click(function(e) {
  popupCenter($(this).attr("href"), $(this).attr("data-width"), $(this).attr("data-height"), "authPopup");
  e.stopPropagation(); return false;
});
