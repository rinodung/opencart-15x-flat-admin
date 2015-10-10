<!--****************************************************************************************************************-->

<!--=========================================================== THEME OPTIONS START HERE ===========================-->

<!--****************************************************************************************************************-->
<?php
// If valentino module is enabled
if($this->config->get('status')== 1) { ?>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('body_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('title_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('button_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('category_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('menu_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('product_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('price_font'); ?>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=<?php echo $this->config->get('boxheading_font'); ?>">
  
<style>			
/********************************************
*********************************************

                Background/Patterns

*********************************************
********************************************/
        
        /** Body background image/pattern/color **/
        body {
            <?php if($this->config->get('background_color')!='') { ?>
            	background: <?php echo $this->config->get('background_color'); ?>;
                background-color: <?php echo $this->config->get('background_color'); ?>;
            <?php } 

            if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
            else $path_image = HTTP_IMAGE;

            if($this->config->get('custom_image')!='') { ?>
                background-image: url("<?php echo $path_image . $this->config->get('custom_image') ?>"); ?>;
                background-position: top center;
                background-repeat: no-repeat;
                background-attachment: fixed;
            <?php } else if($this->config->get('custom_pattern')!='') { ?>
                background-image: url("<?php echo $path_image . $this->config->get('custom_pattern') ?>"); ?>;
                background-attachment: scroll;
            <?php } else if($this->config->get('pattern_overlay')!='none') { ?>
                background-image: url("catalog/view/theme/valentino/image/patterns/<?php echo $this->config->get('pattern_overlay'); ?>.png");
                background-attachment: scroll;
            <?php } else { ?>
                /*background-image: none;*/
            <?php } ?>

        }


        /** Container background image/pattern/color **/
        .container {
            <?php if($this->config->get('background_color_cont')!='') { ?>
            	background: <?php echo $this->config->get('background_color_cont'); ?>;
                background-color: <?php echo $this->config->get('background_color_cont'); ?>;
            <?php } 

            if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
            else $path_image = HTTP_IMAGE;

            if($this->config->get('custom_image_cont')!='') { ?>
                background-image: url("<?php echo $path_image . $this->config->get('custom_image_cont') ?>"); ?>;
                background-position: top center;
                background-repeat: no-repeat;
				background-attachment: fixed;
            <?php } else if($this->config->get('custom_pattern_cont')!='') { ?>
                background-image: url("<?php echo $path_image . $this->config->get('custom_pattern_cont') ?>"); ?>;
            <?php } else if($this->config->get('pattern_cont')!='none') { ?>
                background-image: url("catalog/view/theme/valentino/image/patterns/<?php echo $this->config->get('pattern_cont'); ?>.png");
            <?php } else { ?>
                /*background-image: none;*/
            <?php } ?>
        }
        
        
        /** Top Adv image/pattern/color **/
        .topAdv div {
            <?php if($this->config->get('background_color_adv')!='') { ?>
            	background: <?php echo $this->config->get('background_color_adv'); ?>;
                background-color: <?php echo $this->config->get('background_color_adv'); ?>;
            <?php } 

            if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
            else $path_image = HTTP_IMAGE;

            if($this->config->get('custom_image_adv')!='') { ?>
                background-image: url("<?php echo $path_image . $this->config->get('custom_image_adv') ?>"); ?>;
                background-position: top center;
                background-repeat: no-repeat;
                background-attachment: fixed;
            <?php } else if($this->config->get('custom_pattern_adv')!='') { ?>
                background-image: url("<?php echo $path_image . $this->config->get('custom_pattern_adv') ?>"); ?>;
                background-attachment: scroll;
            <?php } else if($this->config->get('pattern_overlay_adv')!='none') { ?>
                background-image: url("catalog/view/theme/valentino/image/patterns/<?php echo $this->config->get('pattern_overlay_adv'); ?>.png");
                background-attachment: scroll;
            <?php } else { ?>
                /*background-image: none;*/
            <?php } ?>

        }


           <?php 
/********************************************
*********************************************

		 Colors / Background colors

*********************************************
********************************************/
        /**========================================================================================================================**/
        /*//////////////////////////////////////////////////////////////////////////////////////////////////////////// Header area **/
		/**========================================================================================================================**/	
		/** Top bar bg **/
	    if($this->config->get('thickbar_bg')!='') { ?>
	        .topBar {
	            background: <?php echo $this->config->get('thickbar_bg'); ?>;
	        }
	    <?php } 	
        /** First Theme Color (Top bar) **/
        if($this->config->get('thickbar_border_color')!='') { ?>
            .topPart {
                border-bottom: 1px solid <?php echo $this->config->get('thickbar_border_color'); ?>;
            }
        <?php } 
        /** Top bar text color **/
        if($this->config->get('welcome_text_color')!='') { ?>
            #currency, #language, .links, .topBar #welcome {
                color: <?php echo $this->config->get('welcome_text_color'); ?> !important;
            }
        <?php } 
		/** Top bar links color **/
        if($this->config->get('thickbar_links_color')!='') { ?>
            .topBar #welcome a {
                color: <?php echo $this->config->get('thickbar_links_color'); ?>;
            }
        <?php }
        /** logo **/
        if($this->config->get('logo_bg')!='') { ?>
            header #logo{
                background: <?php echo $this->config->get('logo_bg'); ?>;
            }
        <?php }
		/**========================================================================================================================**/
		/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////// Search **/
		/**========================================================================================================================**/
		/** Search bar Bg **/
		if($this->config->get('search_bg')!='') { ?>
            .topBar #search {
                background: <?php echo $this->config->get('search_bg')?>;
            }
        <?php } 
		/** Advanced search color **/
		if($this->config->get('categories_select_color')!='') { ?>
            .topBar #search input {
                color: <?php echo $this->config->get('categories_select_color')?>;
            }
        <?php } 
        /** Advanced search color **/
		if($this->config->get('livesearch_bg')!='') { ?>
            #livesearch_search_results {
                background: <?php echo $this->config->get('livesearch_bg')?>;
            }
        <?php } 
        
		/**========================================================================================================================**/
		/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////// cart **/
		/**========================================================================================================================**/
        /** cart title **/
        if($this->config->get('cart_title_color')!='') { ?>
            .topBar #cart .heading, .head5 #cart .heading, .topBar #cart .heading a, .head5 #cart .heading a {
                color: <?php echo $this->config->get('cart_title_color'); ?>;
            }
        <?php } 
        /** cart img bg **/
        if($this->config->get('cart_img_bg')!='') { ?>
            .cartImgWrap {
                background: <?php echo $this->config->get('cart_img_bg'); ?>;
            }
        <?php } 
		/**========================================================================================================================**/
        /*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Menu **/
		/**========================================================================================================================**/
        /** Menu background **/
        if($this->config->get('menu_background')!='') { ?>
            header {
                background: <?php echo $this->config->get('menu_background'); ?>;
            }
        <?php } 
        /** Menu border **/
        if($this->config->get('menu_border')!='') { ?>
            #menu {
                border: 1px solid <?php echo $this->config->get('menu_border'); ?>;
            }
            <?php if ($direction == 'ltr') { ?>	
	            #menu > ul > li > a {
	            	border-right: 1px solid <?php echo $this->config->get('menu_border'); ?>;
	            }
            <?php } else { ?>
	            #menu > ul > li > a {
	            	border-left: 1px solid <?php echo $this->config->get('menu_border'); ?>;
	            }
            <?php } ?>
        <?php } 
        /** Menu Links **/
        if($this->config->get('menu_color')!='') { ?>
            #menu > ul > li > a {
                color: <?php echo $this->config->get('menu_color'); ?>;
            }
        <?php }  	
        /** Menu Links :hover **/
        if($this->config->get('menu_color_hover')!='') { ?>
            #menu > ul > li:hover > a {
                background: <?php echo $this->config->get('menu_color_hover'); ?>;
            }
        <?php }	
		/** Dropdown menu background **/
		if($this->config->get('drop_menu_bg')!='') { ?>
            #menu > ul > li > div, #menu > ul > li > div ul li:hover ul {
                background: <?php echo $this->config->get('drop_menu_bg'); ?>;
            }
        <?php }	
        /** Sub Menu Links **/
        if($this->config->get('smenu_color')!='') { ?>
            #menu > ul > li > div > ul > li > a, #menu > ul > li ul > li > a {
                color: <?php echo $this->config->get('smenu_color'); ?>;
            }
        <?php } 
        /** Sub Menu Links :hover **/
        if($this->config->get('smenuh_color')!='') { ?>
            #menu > ul > li > div > ul > li > a:hover, #menu > ul > li ul > li > a:hover {
                color: <?php echo $this->config->get('smenuh_color'); ?>;
            }
        <?php }  
        /**========================================================================================================================**/
        /*/////////////////////////////////////////////////////////////////////////////////////////////////////////////// Pav Menu **/
		/**========================================================================================================================**/
		/** Menu bg **/
        if($this->config->get('pav_menu_bg')!='') { ?>
            .navbar-inner {
                background: <?php echo $this->config->get('pav_menu_bg'); ?> !important;
                background-color: <?php echo $this->config->get('pav_menu_bg'); ?> !important;
            }
        <?php }  
        /** Menu border **/
        if($this->config->get('pav_menu_border')!='') { ?>
			.navbar-inner {
	                border: 1px solid <?php echo $this->config->get('pav_menu_border'); ?> !important;
	            }
        	<?php if ($direction == 'ltr') { ?>	
	            .navbar .nav > li > a {
	            	border-right: 1px solid <?php echo $this->config->get('pav_menu_border'); ?>;
	            }
            <?php } else { ?>
            	.navbar .nav > li > a {
	            	border-left: 1px solid <?php echo $this->config->get('pav_menu_border'); ?>;
	            }
            <?php } ?>
        <?php } 
        /** Menu links color **/
        if($this->config->get('pav_links_color')!='') { ?>
            .navbar .nav > li > a {
                color: <?php echo $this->config->get('pav_links_color'); ?> !important;
            }
        <?php }  
        /** Links color on hover **/
        if($this->config->get('pav_links_color_hover')!='') { ?>
            .navbar .nav > li > a:focus, .navbar .nav > li > a:hover {
                color: <?php echo $this->config->get('pav_links_color_hover'); ?> !important;
            }
        <?php }  
        /** Links background on hover **/
        if($this->config->get('pav_links_bg_hover')!='') { ?>
            .navbar .nav > li > a:focus, .navbar .nav > li > a:hover {
                background-color: <?php echo $this->config->get('pav_links_bg_hover'); ?> !important;
            }
        <?php }  
        /** Links description color **/
        if($this->config->get('pav_desc_color')!='') { ?>
             .megamenu .menu-desc {
                color: <?php echo $this->config->get('pav_desc_color'); ?>;
            }
        <?php }  
        /** pav arrow color **/
        if($this->config->get('pav_arrow_color')!='') { ?>
            .navbar .nav li.dropdown > .dropdown-toggle .caret {
                border-top-color: <?php echo $this->config->get('pav_arrow_color'); ?>;
				border-bottom-color: <?php echo $this->config->get('pav_arrow_color'); ?>;
            }
        <?php }  
        /** pav sub menu bg **/
        if($this->config->get('pav_submenu_bg')!='') { ?>
            .dropdown-menu {
                background-color: <?php echo $this->config->get('pav_submenu_bg'); ?>;
            }
            .navbar .nav > li > .dropdown-menu:before {
                border-bottom: 6px solid <?php echo $this->config->get('pav_submenu_bg'); ?>;
            }
            .navbar .nav > li > .dropdown-menu:after {
            	border-bottom: 6px solid <?php echo $this->config->get('pav_submenu_bg'); ?>;
            }
        <?php } 
          
        /** Sub menu internal titles **/
        if($this->config->get('pav_sub_title_color')!='') { ?>
           .megamenu .mega-group > a .menu-title, .pavo-widget .menu-title {
                color: <?php echo $this->config->get('pav_sub_title_color'); ?>;
            }
        <?php }  
        /** sub menu links color **/
        if($this->config->get('pav_sub_links_color')!='') { ?>
            .mega-col-inner a .menu-title, .mega-col-inner a {
                color: <?php echo $this->config->get('pav_sub_links_color'); ?>;
            }
        <?php }  
        /** sub menu links color on hover **/
        if($this->config->get('pav_sub_links_color_hover')!='') { ?>
            .mega-col-inner a .menu-title:hover, .mega-col-inner a:hover {
                color: <?php echo $this->config->get('pav_sub_links_color_hover'); ?>;
            }
        <?php }  
        /** sub menu description color **/
        if($this->config->get('pav_sub_desc_color')!='') { ?>
            .dropdown-menu .menu-desc {
                color: <?php echo $this->config->get('pav_sub_desc_color'); ?>;
            }
        <?php }  
		/**========================================================================================================================**/
        /*////////////////////////////////////////////////////////////////////////////////////////////////////////////////category **/
		/**========================================================================================================================**/
		/** Category box bg **/
        if($this->config->get('category_box_bg')!='') { ?>
            .box-category ul {
                background: <?php echo $this->config->get('category_box_bg'); ?>;
            }
        <?php } 
		/** Category box border **/
        if($this->config->get('category_box_border')!='') { ?>
            .box-category > ul > li {
				border-bottom: 1px solid <?php echo $this->config->get('category_box_border'); ?>;
            }
        <?php } 
        /** Category Links color **/
        if($this->config->get('category_link_color')!='') { ?>
            .box-category > ul > li > a, .box-category > ul > li a.active {
                color: <?php echo $this->config->get('category_link_color'); ?>;
            }
        <?php }
        /** Category Links color on hover **/
        if($this->config->get('category_link_color_hover')!='') { ?>
            .box-category > ul > li > a:hover {
                color: <?php echo $this->config->get('category_link_color_hover'); ?>;
            }
        <?php } 
        /** Categorysub Links color **/
        if($this->config->get('categorysub_link_color')!='') { ?>
            .box-category > ul > li ul > li > a {
                color: <?php echo $this->config->get('categorysub_link_color'); ?>;
            }
        <?php }
        /** Categorysub Links color on hover **/
        if($this->config->get('categorysub_link_color_hover')!='') { ?>
            .box-category > ul > li ul > li > a:hover {
                color: <?php echo $this->config->get('categorysub_link_color_hover'); ?>;
            }
        <?php } 
        /** plus bg **/
       	if($this->config->get('plus_bg')!='') { ?>
            a .dcjq-icon {
                background: <?php echo $this->config->get('plus_bg'); ?> url(catalog/view/theme/valentino/image/plus.png) no-repeat center center;
            }
            a.dcjq-parent.active .dcjq-icon {
            	background: <?php echo $this->config->get('plus_bg'); ?> url(catalog/view/theme/valentino/image/minus.png) no-repeat center center;
            }
        <?php } 
        
        /**========================================================================================================================**/
        /*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Box **/
		/**========================================================================================================================**/
        /** Box Heading background color **/
        if($this->config->get('heading_bg')!='') { ?>
            .box .box-heading span, #column-left .box .box-heading span, #column-right .box .box-heading span, .headForCols, .box .box-heading {
                background: <?php echo $this->config->get('heading_bg'); ?>;
            }
        <?php }
        /* box heading border */ 
        if($this->config->get('heading_border')!='') { ?>
             .headForCols, .box .box-heading {
                border: 1px solid <?php echo $this->config->get('heading_border'); ?>;
            }
            <?php if ($direction == 'ltr') { ?>	
            .nav-tabs > li + li {
            	border-left: 1px solid <?php echo $this->config->get('heading_border'); ?>;
            }
            <?php } else { ?>
            .nav-tabs > li + li {
            	border-right: 1px solid <?php echo $this->config->get('heading_border'); ?>;
            }
           <?php } ?>
        <?php }
        /** Box Heading Text color **/
        if($this->config->get('heading_color')!='') { ?>
            .box .box-heading span, #column-left .box .box-heading span, #column-right .box .box-heading span, .box .box-heading a, .headForCols, .box .box-heading {
                color: <?php echo $this->config->get('heading_color'); ?>;
            }
        <?php } 
        
        /**=============================**/
		/** Box heading for blog and brands **/
		/**=============================**/
        /** Box Heading background color **/
        if($this->config->get('heading_bg_blog_brand')!='') { ?>
            .latestBlogHeading, .brandHeading {
                background: <?php echo $this->config->get('heading_bg_blog_brand'); ?> !important;
            }
        <?php }
        /* box heading border */ 
        if($this->config->get('heading_border_blog_brand')!='') { ?>
            .latestBlogHeading, .brandHeading {
                border: 1px solid <?php echo $this->config->get('heading_border_blog_brand'); ?> !important;
            }
        <?php }
        /* box heading color */ 
        if($this->config->get('heading_color_blog_brand')!='') { ?>
            .latestBlogHeading, .brandHeading a {
                color: <?php echo $this->config->get('heading_color_blog_brand'); ?> !important;
            }
        <?php }
		
		/**=============================**/
		/** Latest products by category **/
		/**=============================**/
        /** prodbcat tab link color **/
        if($this->config->get('prodbcat_tab_link')!='') { ?>
           .nav-tabs li a {
                color: <?php echo $this->config->get('prodbcat_tab_link'); ?> !important;
            }
        <?php } 
        /** prodbcat tab selected link color **/
        if($this->config->get('prodbcat_tab_link_selected')!='') { ?>
           .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus, .box .box-heading a:hover {
                color: <?php echo $this->config->get('prodbcat_tab_link_selected'); ?> !important;
            }
        <?php } 
        /**========================================================================================================================**/
        /*//////////////////////////////////////////////////////////////////////////////////////////////////////////////// Product **/
		/**========================================================================================================================**/
		if($this->config->get('product_box_bg')!='') { ?>
            .singleProduct, .product-grid > div, .product-list > div.ifList {
                background: <?php echo $this->config->get('product_box_bg'); ?>;
            }
        <?php }
        if($this->config->get('product_box_border')!='') { ?>
            .singleProduct, .product-grid > div, .product-list > div.ifList {
                border: 1px solid <?php echo $this->config->get('product_box_border'); ?>;
            }
        <?php }
        if($this->config->get('product_extra_bg')!='') { ?>
            .extra {
                background: <?php echo $this->config->get('product_extra_bg'); ?>;
            }
        <?php }
        if($this->config->get('product_extra_define')!='') { ?>
            .defineSpan {
                color: <?php echo $this->config->get('product_extra_define'); ?>;
            }
        <?php }
        if($this->config->get('product_extra_label')!='') { ?>
            .extra, .extra a {
                color: <?php echo $this->config->get('product_extra_label'); ?> !important;
            }
        <?php }
		/** product cart bg **/
        if($this->config->get('product_cart_bg')!='') { ?>
            input.cartBtn, a.cartBtn {
                background: <?php echo $this->config->get('product_cart_bg'); ?>;
            }
        <?php }
		/** product cart bg on hover**/
        if($this->config->get('product_cart_bg_hover')!='') { ?>
            input.cartBtn:hover, a.cartBtn:hover {
                background: <?php echo $this->config->get('product_cart_bg_hover'); ?>;
            }
        <?php }
		/** product cart color **/
        if($this->config->get('product_cart_color')!='') { ?>
            input.cartBtn, input.cartBtn:hover, a.cartBtn, a.cartBtn:hover {
                color: <?php echo $this->config->get('product_cart_color'); ?>;
            }
        <?php }
        /** wish-compare bg **/
        if($this->config->get('wish_compare_bg')!='') { ?>
            input.wish, a.wish, input.compare, a.compare {
                background-color: <?php echo $this->config->get('wish_compare_bg'); ?>;
            }
        <?php }
        /** wish-compare bg hover **/
        if($this->config->get('wish_compare_bg_hover')!='') { ?>
            input.wish:hover, a.wish:hover, input.compare:hover, a.compare:hover {
                background-color: <?php echo $this->config->get('wish_compare_bg_hover'); ?>;
            }
        <?php }
        /** Sale bg **/
        if($this->config->get('sale_bg')!='') { ?>
            .sale {
                background: <?php echo $this->config->get('sale_bg'); ?>;
            }
        <?php } 
        /** Price color **/
        if($this->config->get('price_color')!='') { ?>
            .price, .price-new {
                color: <?php echo $this->config->get('price_color'); ?> !important;
            }
        <?php }
        /** Old Price color **/
        if($this->config->get('other_oldprice_color')!='') { ?>
            .price-old {
                color: <?php echo $this->config->get('other_oldprice_color'); ?> !important;
            }
        <?php } 
        /** Product name **/
        if($this->config->get('product_name_color')!='') { ?>
            .name a, .product-grid .name a, .product-list .name a, .box-product .name a {
                color: <?php echo $this->config->get('product_name_color'); ?> !important;
            }
        <?php } 
		/**========================================================================================================================**/
        /*///////////////////////////////////////////////////////////////////////////////////////////////////////////// Newsletter **/
		/**========================================================================================================================**/
		/*bg*/
		if($this->config->get('newsletter_bg_box')!='') { ?>
            .newsletterWrap {
                background: <?php echo $this->config->get('newsletter_bg_box'); ?>;
            }
        <?php }
        /*text color*/
		if($this->config->get('newsletter_text_color')!='') { ?>
            .newsletterWrap {
                color: <?php echo $this->config->get('newsletter_text_color'); ?>;
            }
        <?php }
        /*title*/
		if($this->config->get('newsletter_title')!='') { ?>
            .newsletterWrap h2 {
                color: <?php echo $this->config->get('newsletter_title'); ?>;
            }
        <?php }
        /*borders*/
		if($this->config->get('newsletter_border')!='') { ?>
            .newsletterWrap {
                border:1px solid <?php echo $this->config->get('newsletter_border'); ?>;
            }
            .newsletterWrap h2 {
            	border-bottom: 1px solid <?php echo $this->config->get('newsletter_border'); ?>;
            }
        <?php }
        /*subscribe*/
		if($this->config->get('newsletter_subscribe')!='') { ?>
            a.newsBtn {
                background: <?php echo $this->config->get('newsletter_subscribe'); ?>;
            }
        <?php }
        /*unsubscribe*/
		if($this->config->get('newsletter_unsubscribe')!='') { ?>
            a.newsBtn + a {
                background: <?php echo $this->config->get('newsletter_unsubscribe'); ?>;
            }
        <?php }
        /*button hover*/
		if($this->config->get('newsletter_btn_hovers')!='') { ?>
            a.newsBtn:hover {
                background: <?php echo $this->config->get('newsletter_btn_hovers'); ?>;
            }
        <?php }
        /**========================================================================================================================**/
        /*///////////////////////////////////////////////////////////////////////////////////////////////////////////// Latest Blogs **/
		/**========================================================================================================================**/
		/*bg*/
		if($this->config->get('latest_blogs_bg')!='') { ?>
            .blog-item-latest {
                background: <?php echo $this->config->get('latest_blogs_bg'); ?>;
            }
        <?php }
        /*border box*/
		if($this->config->get('latest_blogs_box_border')!='') { ?>
            .blog-item-latest {
                border: 1px solid <?php echo $this->config->get('latest_blogs_box_border'); ?>;
            }
        <?php }
        if($this->config->get('latest_blogs_heading')!='') { ?>
            .blog-item-latest h4 a {
                color: <?php echo $this->config->get('latest_blogs_heading'); ?>;
            }
        <?php }
        /**========================================================================================================================**/
        /*///////////////////////////////////////////////////////////////////////////////////////////////////////// shop by brands **/
		/**========================================================================================================================**/
		if($this->config->get('shop_brand_bg')!='') { ?>
            .itemBrandWrap {
                background: <?php echo $this->config->get('shop_brand_bg'); ?>;
            }
        <?php }
        if($this->config->get('shop_brand_border')!='') { ?>
            .itemBrandWrap {
                border-top: 1px solid <?php echo $this->config->get('shop_brand_border'); ?>;
                border-bottom: 1px solid <?php echo $this->config->get('shop_brand_border'); ?>;
            }
            .itemBrandWrap .span2 {
            	border-right: 1px solid <?php echo $this->config->get('shop_brand_border'); ?>;
                border-left: 1px solid <?php echo $this->config->get('shop_brand_border'); ?>;
                border-top: 1px solid <?php echo $this->config->get('shop_brand_border'); ?>;
            }
        <?php }
        /**========================================================================================================================**/
        /*////////////////////////////////////////////////////////////////////////////////////////////////////////// custom blocks **/
		/**========================================================================================================================**/
		if($this->config->get('top_block_bg')!='') { ?>
            .block {
                background: <?php echo $this->config->get('top_block_bg'); ?>;
            }
        <?php }
        if($this->config->get('top_block_bg_hover')!='') { ?>
            .block:hover {
                background: <?php echo $this->config->get('top_block_bg_hover'); ?>;
            }
        <?php }
        if($this->config->get('top_block_color')!='') { ?>
            .block {
                color: <?php echo $this->config->get('top_block_color'); ?>;
            }
            .block h2, .block p {
            	color: <?php echo $this->config->get('top_block_color'); ?>;
            }
        <?php }
        if($this->config->get('bottom_block_bg')!='') { ?>
            .bottomBlocks {
                background: <?php echo $this->config->get('bottom_block_bg'); ?>;
            }
        <?php }
        if($this->config->get('bottom_block_title')!='') { ?>
            .oneBlock h4 {
                color: <?php echo $this->config->get('bottom_block_title'); ?>;
            }
        <?php }
        if($this->config->get('bottom_block_text')!='') { ?>
            .oneBlock p {
                color: <?php echo $this->config->get('bottom_block_text'); ?>;
            }
        <?php }
        
        /**========================================================================================================================**/
        /*//////////////////////////////////////////////////////////////////////////////////////////////////////////////// General **/
		/**========================================================================================================================**/
        /** Titles (h1, h2, h3, h4, h5, h6) **/
        if($this->config->get('title_color')!='') { ?>
            .heading h1, .checkout-heading, table.list thead td, h1, h2, h3, h4, h5, h6  {
                color: <?php echo $this->config->get('title_color'); ?>;
            }
        <?php } 
        /** Body text color **/
        if($this->config->get('bodytext_color')!='') { ?>
            body {
                color: <?php echo $this->config->get('bodytext_color'); ?>;
            }
        <?php } 
        /** Other Links **/
        if($this->config->get('links_color')!='') { ?>
            a, .breadcrumb a + a, a:visited, a b {
                color: <?php echo $this->config->get('links_color'); ?>;
            }
        <?php } 
		/**========================================================================================================================**/
        /*///////////////////////////////////////////////////////////////////////////////////////////////////////////////// Footer **/
        /**========================================================================================================================**/
        /** Footer BG **/
        if($this->config->get('footer_bg')!='') { ?>
            footer {
                background: <?php echo $this->config->get('footer_bg'); ?>;
            }
        <?php } 
        /** Footer Headers Text color **/
        if($this->config->get('footerheaders_color')!='') { ?>
            footer h3, footer h2 {
                color: <?php echo $this->config->get('footerheaders_color'); ?>;
            }
        <?php }  
        /** Footer info text color **/
        if($this->config->get('footer_info_color')!='') { ?>
            footer p, ul.companyInfo li, #powered {
                color: <?php echo $this->config->get('footer_info_color'); ?> ;
            }
        <?php } 
        /** Footer Links Text color **/
        if($this->config->get('footerlinks_color')!='') { ?>
            footer a, ul.customLinks li a, footer .column a, #powered a {
                color: <?php echo $this->config->get('footerlinks_color'); ?> !important;
            }
        <?php }
/********************************************
*********************************************

                Buttons

*********************************************
********************************************/
        /** add to cart details **/
        if($this->config->get('details_addtocart')!='') { ?>
             .addToCart {
                background: <?php echo $this->config->get('details_addtocart'); ?>;
            }
        <?php }
        /** add to cart details : hover **/
        if($this->config->get('details_addtocart_hover')!='') { ?>
             .addToCart:hover {
                background: <?php echo $this->config->get('details_addtocart_hover'); ?>;
            }
        <?php }
        /** button text details color **/
        if($this->config->get('details_button_color')!='') { ?>
            .addToCart {
                color: <?php echo $this->config->get('details_button_color'); ?>;
            }
        <?php } 
        /** All other buttons **/
        if($this->config->get('all_addtocart')!='') { ?>
             a.button, .cart input, input.button {
                background: <?php echo $this->config->get('all_addtocart'); ?>;
            }
        <?php }
        /** All other buttons : hover **/
        if($this->config->get('all_addtocart_hover')!='') { ?>
            a.button:hover, .cart input:hover, input.button:hover {
                background: <?php echo $this->config->get('all_addtocart_hover'); ?>;
            }
        <?php }
        /** All other buttons text color **/
        if($this->config->get('all_buttons_color')!='') { ?>
            a.button, .cart input, input.button {
                color: <?php echo $this->config->get('all_buttons_color'); ?>;
            }
        <?php } 
            
/********************************************
*********************************************

                Fonts

*********************************************
********************************************/
        /** Body Fonts **/
        if ($this->config->get('body_font') != '' ) { ?>
        body, p { font-family:'<?php echo $this->config->get('body_font_family'); ?>', Tahoma, Geneva, sans-serif; 
        font-size: <?php echo $this->config->get('body_font_size'); ?>px;
        }
        <?php } 
        /** Title Fonts **/
        if($this->config->get('title_font')!='') { ?>
        h1, h2, h3, h4, .contentset, legend, .checkout-heading, .welcome {
            font-family:'<?php echo $this->config->get('title_font_family'); ?>', Tahoma, Geneva, sans-serif;
            font-size: <?php echo $this->config->get('title_font_size'); ?>px;
        }
        <?php }
        /** Button Fonts **/
        if ($this->config->get('button_font') != '') { ?>
        input, input.button, a.button, .button, ul.btnGroup li.cartBt .cartBtn, a.newsBtn, .cartBtn {
            font-family:'<?php echo $this->config->get('button_font_family'); ?>', Tahoma, Geneva, sans-serif;
            font-size: <?php echo $this->config->get('button_font_size'); ?>px;
        }
        <?php }
        /** category Fonts **/
        if ($this->config->get('category_font') != '') { ?>
         .box-category ul li a {
            font-family:'<?php echo $this->config->get('category_font_family'); ?>', Tahoma, Geneva, sans-serif;
            font-size: <?php echo $this->config->get('category_font_size'); ?>px;
        }
        <?php }
        /** menu Fonts **/
        if ($this->config->get('menu_font') != '') { ?>
         #menu ul li a, .megamenu .menu-title {
            font-family:'<?php echo $this->config->get('menu_font_family'); ?>', Tahoma, Geneva, sans-serif;
            font-size: <?php echo $this->config->get('menu_font_size'); ?>px;
        }
        <?php }
        /** product Fonts **/
        if ($this->config->get('product_font') != '') { ?>
         .name a {
            font-family:'<?php echo $this->config->get('product_font_family'); ?>', Tahoma, Geneva, sans-serif;
            font-size: <?php echo $this->config->get('product_font_size'); ?>px;
        }
        <?php }
        /** price Fonts **/
        if ($this->config->get('price_font') != '') { ?>
         .price {
            font-family:'<?php echo $this->config->get('price_font_family'); ?>', Tahoma, Geneva, sans-serif !important;
        }
        <?php }
        /** boxheading Fonts **/
        if ($this->config->get('boxheading_font') != '') { ?>
        .box-heading, .box .box-heading span, .box .box-heading a, .headForCols {
            font-family:'<?php echo $this->config->get('boxheading_font_family'); ?>', Tahoma, Geneva, sans-serif !important;
            font-size: <?php echo $this->config->get('boxheading_font_size'); ?>px;
        }
        <?php }
        
        /*IF CUSTOM CSS SO GOES HERE*/
        if ($this->config->get('custom_css') != '')  ?>
            <?php echo $this->config->get('custom_css'); ?>
        <?php ?>
		
    </style>
<?php } ?>
<!--**************************************************************************************************************-->
<!--=========================================================== THEME OPTIONS END HERE ===========================-->
<!--**************************************************************************************************************-->