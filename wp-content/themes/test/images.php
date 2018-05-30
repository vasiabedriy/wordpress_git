<?php
/* Template Name: Images */

get_header(); ?>

<div class="container">
    <h3 class="title_photo">Фотографії</h3>
    <div class="photo">
        <a href="<?php echo get_template_directory_uri();?>/images/img1.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img1_blur.jpg" class="preview" alt="landscape1" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img2.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img2_blur.jpg" class="preview" alt="landscape2" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img3.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img3_blur.jpg" class="preview" alt="landscape3" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img4.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img4_blur.jpg" class="preview" alt="landscape4" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img5.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img5_blur.jpg" class="preview" alt="landscape5" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img6.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img6_blur.jpg" class="preview" alt="landscape6" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img7.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img7_blur.jpg" class="preview" alt="landscape7" />
        </a>
        <a href="<?php echo get_template_directory_uri();?>/images/img8.jpg" class="progressive replace">
          <img src="<?php echo get_template_directory_uri();?>/images/img8_blur.jpg" class="preview" alt="landscape8" />
        </a>
<!--
        <img src="<?php echo get_template_directory_uri();?>/images/img1.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img2.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img3.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img4.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img5.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img6.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img7.jpg">
        <img src="<?php echo get_template_directory_uri();?>/images/img8.jpg">
-->
    </div>
</div>

<script>
    history.pushState('','','/test/image-opacity/');
    window.onbeforeunload = function() {
        
        alert('reload');
    }

</script>
<?php get_footer(); ?>
