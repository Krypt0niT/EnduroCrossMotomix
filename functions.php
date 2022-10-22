<?php

function load_stylesheets()
{
    wp_register_style('stylesheet',get_template_directory_uri() . '/style.css','', 1, 'all');
    wp_enqueue_style('stylesheet');

    wp_register_style('custom',get_template_directory_uri() . '/app.css','', 1, 'all');
    wp_enqueue_style('custom');
}
add_action('wp_enqueue_scripts', 'load_stylesheets');




function load_javascript()
{
    wp_register_script('custom', get_template_directory_uri() . '/app.js', 'jquery',1,true);
    wp_enqueue_script('custom');
}
add_action('wp_enqueue_scripts', 'load_javascript');

add_theme_support('menus');
add_theme_support('post-thumbnails');


register_nav_menus(

    array(


        'top-menu'=> 'Top Menu', 
    )

);

add_image_size('post_image',1100,550,false);


register_sidebar(

    array(

        'name' => 'Page Sidebar',
        'id' => 'page-sidebar',
        'class' => '',
        'before_title' => '<h4>',
        'after_title' => '</h4>'
    )
);


    function mytheme_add_woocommerce_support() {
        add_theme_support( 'woocommerce' );
    }
    
    add_action( 'after_setup_theme', 'mytheme_add_woocommerce_support' );


    add_filter( 'yith_wcas_submit_as_input', '__return_false' );
    add_filter( 'yith_wcas_submit_label', 'my_yith_wcas_submit_label' );
    function my_yith_wcas_submit_label( $label ) { 
        return '<i class="fa-solid fa-magnifying-glass"></i>' . $label; 
    }