$(window).scroll(function(){
   if($("#menu").offset().top>56) {
       $("#menu").addClass("bg-light navbar-light");
   }else{
       $("#menu").removeClass("bg-light navbar-light");
   }
});
