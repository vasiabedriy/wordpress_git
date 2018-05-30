<?php
/* Template Name: image opacity */

get_header(); ?>

<link rel="stylesheet" media="screen" href="/wp-content/themes/test/css/p_style.css">
<style>
    .sl_containter{
        padding: 0px 100px;
    }
    .sl_large_img{
        position: absolute;
        opacity: 0.2;
        height: 60vh;
        z-index: 0;
        top: 5vh;
    }
    .sl_main_images{
/*        margin-left: 40.5%;*/
    }
    .sl_images_grid{
        width: calc(( 100% - 200px) / 2);
        margin: auto;
        position: relative;
        top: 70vh;
        z-index: 10;
    }
    .sl_small_img{
        width: calc((100% - 12%) / 6);
        padding: 0 1%;
        float: left;
        filter: grayscale(0.8) blur(1px);
    }
    .sl_small_hover{
        filter: blur(0px);
    }
    .sl_opacity_100{
        opacity: 1;
        z-index: 10;
-webkit-box-shadow: 1px 0px 30px 3px rgba(133,133,133,1);
-moz-box-shadow: 1px 0px 30px 3px rgba(133,133,133,1);
box-shadow: 1px 0px 30px 3px rgba(133,133,133,1);
    }
    .filter_none{
        filter: none;
    }
    
    .modal{
        display: block;
        width: 100vw;
        height: 100vh;
        position: fixed;
        top: 0;
        left: 0;
        background: rgba(0,0,0,0.9);
        z-index: 100;
    }
    .modal_content{
        width: 80vw;
        height: 80vh;
        padding: 10vh 10vw;
        
    }
    .modal_content img{
        display: block;
        margin: auto;
        max-height: 100%;
        max-width: 100%;
    }
    .hide{
        display: none;
    }
    .modal .prev{
        position: fixed;
        top: calc( 50% - 50px);
        left: 100px;
    }
    .modal .next{
        position: fixed;
        top: calc( 50% - 50px);
        right: 100px;
    }
     .modal .prev img, .modal .next img{
            width: 100px;
        height: 100px;
    }
    .modal .next:hover, .modal .prev:hover{
        filter: invert(1);
    }
    
    #particles-js{
      background-color: black;
    }
     #particles-js canvas{
        position: absolute;
        left: 0;
        z-index: 0;
    }
    
    @media screen and (max-width:768px){
        .sl_containter {
            padding: 0px 0px;
        }
        .sl_main_images {
            display: none;
        }
        .sl_images_grid{
            width: 80%;
            top: 100px;
            margin-left: 10%;
        }
        .sl_small_img{
            width: 100%;
            padding: 5% 1%;
        }
        .modal_content img {
            width: 100%;
            height: auto;
        }
        .modal .modal_nav {
            top: auto;
            bottom: 5%;
            filter: invert(1);
        }        
        .modal .prev {
            left: 10%;
        }
        .modal .next {
            right: 10%;
        }
    }
</style>
 


<div class="sl_containter">
    <div class="sl_main_images">
        <img class="sl_large_img" data-id="1" src="\wp-content\uploads\2018\04\Berlin_Germany_Temples_Cathedral_HDR_513288_720x1280.jpg" alt="bilding1">
        <img class="sl_large_img" data-id="2" src="\wp-content\uploads\2018\04\Bridges_Roads_England_511280_720x1280.jpg" alt="bilding2">
        <img class="sl_large_img" data-id="3" src="\wp-content\uploads\2018\04\Italy_Houses_Resorts_Coast_Waves_Camogli_Clouds_512781_720x1280.jpg" alt="bilding3">
        <img class="sl_large_img" data-id="4" src="\wp-content\uploads\2018\04\tokyo-tower-720x1280.jpg" alt="bilding4">
        <img class="sl_large_img" data-id="5" src="\wp-content\uploads\2018\04\Ukraine_Odessa_Houses_Roads_National_Academic_542431_720x1280.jpg" alt="bilding5">
        <img class="sl_large_img" data-id="6" src="\wp-content\uploads\2018\04\Japan_Parks_Mountains_Autumn_Nara_Park_535679_1280x720 (1).jpg" alt="bilding6">
    </div>
    
    <div class="sl_images_grid">
        <div class="sl_small_block">
            <img class="sl_small_img" data-id="1" src="\wp-content\uploads\2018\04\Berlin_Germany_Temples_Cathedral_HDR_513288_720x1280.jpg" alt="bilding1">
        </div>        
        <div class="sl_small_block">
            <img class="sl_small_img" data-id="2" src="\wp-content\uploads\2018\04\Bridges_Roads_England_511280_720x1280.jpg" alt="bilding2">
        </div>        
        <div class="sl_small_block">
            <img class="sl_small_img" data-id="3" src="\wp-content\uploads\2018\04\Italy_Houses_Resorts_Coast_Waves_Camogli_Clouds_512781_720x1280.jpg" alt="bilding3">
        </div>        
        <div class="sl_small_block">
             <img class="sl_small_img" data-id="4" src="\wp-content\uploads\2018\04\tokyo-tower-720x1280.jpg" alt="bilding4">
        </div>        
        <div class="sl_small_block">
            <img class="sl_small_img" data-id="5" src="\wp-content\uploads\2018\04\Ukraine_Odessa_Houses_Roads_National_Academic_542431_720x1280.jpg" alt="bilding5">
        </div>        
        <div class="sl_small_block">
            <img class="sl_small_img" data-id="6" src="\wp-content\uploads\2018\04\Japan_Parks_Mountains_Autumn_Nara_Park_535679_1280x720 (1).jpg" alt="bilding6">
        </div>
    
    </div>
</div>


<!-- particles.js container -->
<div id="particles-js"></div>

<div class="modal hide">
    <div class="modal_content">
        <img id="menucontainer" src="">
    </div>
    <div class="modal_nav prev"> <img src="\wp-content\uploads\2018\04\prev.png"></div>
    <div class="modal_nav next"> <img src="\wp-content\uploads\2018\04\next.png"></div>
</div>


<script>
    
//    !function(t){var i=t(window);t.fn.visible=function(t,e,o){if(!(this.length<1)){var r=this.length>1?this.eq(0):this,n=r.get(0),f=i.width(),h=i.height(),o=o?o:"both",l=e===!0?n.offsetWidth*n.offsetHeight:!0;if("function"==typeof n.getBoundingClientRect){var g=n.getBoundingClientRect(),u=g.top>=0&&g.top<h,s=g.bottom>0&&g.bottom<=h,c=g.left>=0&&g.left<f,a=g.right>0&&g.right<=f,v=t?u||s:u&&s,b=t?c||a:c&&a;if("both"===o)return l&&v&&b;if("vertical"===o)return l&&v;if("horizontal"===o)return l&&b}else{var d=i.scrollTop(),p=d+h,w=i.scrollLeft(),m=w+f,y=r.offset(),z=y.top,B=z+r.height(),C=y.left,R=C+r.width(),j=t===!0?B:z,q=t===!0?z:B,H=t===!0?R:C,L=t===!0?C:R;if("both"===o)return!!l&&p>=q&&j>=d&&m>=L&&H>=w;if("vertical"===o)return!!l&&p>=q&&j>=d;if("horizontal"===o)return!!l&&m>=L&&H>=w}}}}(jQuery);
//					
//
//    document.addEventListener('scroll', function (event) {
//            console.log('scroll');
//
//					// Loop over each container, and check if it's visible.
//					$('.sl_small_img').each(function(){
//						
//						// Is this element visible onscreen?
//						var visible = $(this).visible( "complete" );
//						
//						// Set the visible status into the span.
//						$(this).toggleClass('filter_none',visible);
//					});
//
//}, true /*Capture event*/);

    function back(){
                 var min_id = $('.sl_main_images .sl_large_img:first-child').attr('data-id');
             var max_id = $('.sl_main_images .sl_large_img:last-child').attr('data-id');
             var data_id = $('.modal .modal_content img').attr('data-id');
             if(data_id > min_id){ data_id--;}else{ data_id = max_id;}

             $('.modal .modal_content img').attr('data-id', data_id);
             $('.modal .modal_content img').attr('src', $('.sl_main_images .sl_large_img[data-id='+data_id+']').attr('src'));
    }
   
    function forward(){
        var min_id = $('.sl_main_images .sl_large_img:first-child').attr('data-id');
         var max_id = $('.sl_main_images .sl_large_img:last-child').attr('data-id');
         var data_id = $('.modal .modal_content img').attr('data-id');
         if(data_id < max_id){ data_id++;}else{ data_id = min_id;}
        
         $('.modal .modal_content img').attr('data-id', data_id);
         $('.modal .modal_content img').attr('src', $('.sl_main_images .sl_large_img[data-id='+data_id+']').attr('src'));
    }
    var img_left = 0;
    $('.sl_large_img').each(function(){
        img_left = ($(window).width() - $(this).width()) / 2;
        console.log(img_left);
        $(this).css('left', img_left + 'px');
    });
    
        $('.modal').on('click', function(){
        var box = $('.modal .modal_content img');
        var modal_nav = $('.modal .modal_nav');
        if ( box.has(event.target).length == 0 && !box.is(event.target) && modal_nav.has(event.target).length == 0 && !modal_nav.is(event.target)){
            $(this).toggleClass('hide');
            clearTimeout(repeatHandle);
        }
    });
    
        
    $("body").keydown(function(e) {
            if(e.keyCode == 37) {
                 back();
            }
    });
    $("body").keydown(function(e) {
            if(e.keyCode == 39) {
                 forward();
            }
    });    
    $("body").keydown(function(e) {
            if(e.keyCode == 38) {
                 repeatHandle = setInterval(forward, 5000);
            }
    });    
    $("body").keydown(function(e) {
            if(e.keyCode == 40) {
                 clearTimeout(repeatHandle);
            }
    });
    
    $('.modal .prev').on('click', function(){
            back();
     });
    
    
     $('.modal .next').on('click', function(){
        forward();
     });
    

    
    
    
    
    $('.sl_images_grid .sl_small_block .sl_small_img').mouseenter( function() {
        $( this ).addClass('sl_small_hover') ;
        var id = $( this ).attr('data-id');
        $('.sl_main_images .sl_large_img').each(function(){
            if($( this ).attr('data-id') == id){
                $( this ).addClass('sl_opacity_100');
            }
        });
    });
    $('.sl_images_grid .sl_small_block .sl_small_img').mouseleave( function() {
        $( this ).removeClass('sl_small_hover') ;
        $('.sl_main_images .sl_large_img').removeClass('sl_opacity_100');
    });
    
    $('.sl_images_grid .sl_small_block .sl_small_img').on('click', function() {
        $('.modal .modal_content img').attr('src', $(this).attr('src'));
        $('.modal .modal_content img').attr('data-id', $(this).attr('data-id'));
        $('.modal').toggleClass('hide');
    });

</script>

<script src="/wp-content/themes/test/js/particles.min.js"></script>
<script src="/wp-content/themes/test/js/app.js"></script>

<?php get_footer(); ?>
