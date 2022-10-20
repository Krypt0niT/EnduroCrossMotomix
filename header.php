<!DOCTYPE html>
<html>
<head>
    <title></title>
    <?php wp_head();?>
    <script src="https://kit.fontawesome.com/6340ace071.js" crossorigin="anonymous"></script>
</head>
<body <?php body_class('test');?>>

<header>
    <div class="container   py-2 d-flex align-items-center justify-content-between  h-100 ">
        <a href="<?php echo home_url(); ?>"><img src="<?php bloginfo('template_directory');?>/images/logo.png" class="logo img-fluid "></a>

        <?php
        
        wp_nav_menu(

            array(
                'theme_location' => 'top-menu',
                'menu_class' => 'top-menu'
            )
        );
        
        ?>
    </div>
</header>