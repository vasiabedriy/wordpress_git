<?php
/* Template Name: Qr */

get_header(); ?>

<div class="main_container">
<?php    
echo do_shortcode('[qrcode content="'.get_post_meta(get_the_ID(), 'qr_field', $single).'" size="400" alt="ALT_TEXT" class="qr_image"]');
    ?>
</div>

<style>
    .main_container{
        width: 400px;
        position: absolute;
        left: calc(50% - 200px);
        top: 100px;
    }
    .qr_image{
        position: relative;
        left: 0;
        right: 0;
    }
</style>

<?php get_footer(); ?>
