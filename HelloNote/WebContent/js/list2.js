


//JS needed only for demo 

$(document).ready(function(){
 //code for navbar 
 $(".btn-nav").on("click tap", function() {
 console.log(this);
  navbarMagic();
 });

 $(document).keyup(function(e) {
  if (e.keyCode == 27){
    navbarMagic();
  };   // esc
});

 function navbarMagic() {
	 console.log($(".left-side").toggleClass("showNav hideNav"));
	 console.log($(".left-side").toggleClass("showNav hideNav").removeClass("hidden"));
   $(".left-side").toggleClass("showNav hideNav").removeClass("hidden");
   $(".btn-nav").toggleClass("animated");
 }

 // toggle classes for demo main span 
 $(".item, .item a").click(function(){
    var current = $(this);
    $(current).addClass("item-active");
    $(".item, .item a").not(current).removeClass("item-active");
    var newClass = $(this).text();
    var p = $(".element");
    $(".text-con span").removeAttr("class");
    setTimeout(function(){
      $(".text-con span").addClass(newClass)
    }, 100)
  });

  // smooth scroll for nav links */
  $(function() {
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top - 100
        }, 1000);
        return false;
      }
    }
  });
});
});

$(function() {
	var siteName = 'google.com';
	

	$('#goSite').on('click', function() {
		window.open('https://www.' + siteName);
	})
	
	$('#naver').on('click', function(){
		siteName='naver.com';
	})
	
	$('#lol').on('click', function(){
		siteName='kr.leagueoflegends';
	})
	
	$('#kbstar').on('click', function(){
		siteName="kbstar.com";
	})
	
	$('#daum').on('click', function(){
		siteName="daum.net";
	})
	var temp1 = 1;
	var temp2 = 1;
	$('#listButton').on('click', function() {
		console.log(temp1);
		if(temp1 == 1){
			$('li[name=listedItem]').each(function() {
				$(this).slideDown();				
				
			})
			temp1 = 0;			
		}
	})

	$('#listButton').on('click', function() {
		console.log(temp1);
		if(temp2 == 1){
			if(temp1 == 0){
				$('li[name=listedItem]').each(function() {
					$(this).slideUp();
				})				
			}	
			
			temp1 = 1;
		}
	})
		$('#listButton1').on('mouseenter', function() {
		$('li[name=listedItem1]').each(function() {
			$(this).slideDown();
		})
	})

	$('#listButton1').on('click', function() {
		$('li[name=listedItem1]').each(function() {
			$(this).slideUp();
		})
	})
		$('#listButton2').on('mouseenter', function() {
		$('li[name=listedItem2]').each(function() {
			$(this).slideDown();
		})
	})

	$('#listButton2').on('click', function() {
		$('li[name=listedItem2]').each(function() {
			$(this).slideUp();
		})
	})
		$('#listButton3').on('mouseenter', function() {
		$('li[name=listedItem3]').each(function() {
			$(this).slideDown();
		})
	})

	$('#listButton3').on('click', function() {
		$('li[name=listedItem3]').each(function() {
			$(this).slideUp();
		})
	})
});
