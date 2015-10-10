<?php

class ControllerModulevalentino extends Controller {
    
    private $error = array(); 
    
    public function index() {   
        //Load the language file for this module
        $language = $this->load->language('module/valentino');
        $this->data = array_merge($this->data, $language);

        //Set the title from the language file $_['heading_title'] string
        $this->document->setTitle($this->language->get('heading_title'));
        
        //Load the settings model. You can also add any other models you want to load here.
        $this->load->model('setting/setting');
        
        $this->load->model('tool/image');    
        
        //Save the settings if the user has submitted the admin form (ie if someone has pressed save).
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('valentino', $this->request->post);    

                
                    
            $this->session->data['success'] = $this->language->get('text_success');
        
                        
            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
        
            $this->data['text_image_manager'] = 'Image manager';
                    $this->data['token'] = $this->session->data['token'];       
        
        $text_strings = array(
                'heading_title',
                'text_enabled',
                'text_disabled',
                'text_content_top',
                'text_content_bottom',
                'text_column_left',
                'text_column_right',
                'entry_status',
                'entry_sort_order',
                'button_save',
                'button_cancel',
        );
        
        foreach ($text_strings as $text) {
            $this->data[$text] = $this->language->get($text);
        }
        

        // store config data
        
        $config_data = array(

        'status',
        'featured_select',
        'latest_select',
        'bestseller_select',
        'special_select',
        'default_menu',
        'skin_select',
		//====================================================================================================== BODY
		//-------------------------------------------------------------- body
        'background_color',
		'pattern_overlay',		
        'custom_image',		
        'custom_pattern',		
        'image_preview',		
        'pattern_preview',	
		//====================================================================================================== CONTAINER
		//------------------------------------------------------------- container
		'background_color_cont',
		'custom_image_cont',
		'custom_pattern_cont',
		'pattern_cont',
		//-------------------------------------------------------------- top adv
        'background_color_adv',
		'pattern_overlay_adv',		
        'custom_image_adv',		
        'custom_pattern_adv',		
        'image_preview_adv',		
        'pattern_preview_adv',	
        'topAdv_height',
        'topAdv_link',
		//====================================================================================================== COLORS
		//------------------------------------------------------------- header
		'thickbar_bg',
		'thickbar_border_color',
		'welcome_text_color',
		'thickbar_links_color',
		'logo_bg',
		//------------------------------------------------------------- blocks
		'block_title_color',
		'block_title_color_hover',
		//------------------------------------------------------------- Search
		'search_bg',
		'search_border',
		'categories_select_bg',
		'categories_select_bg_hover',
		'categories_select_color',
		'livesearch_bg',
		'btn_search_color',
		//------------------------------------------------------------ cart
		'cart_title_color',
		'cart_img_bg',
		//------------------------------------------------------------- Menu
		'menu_background',
		'menu_border',
		'menu_color',
		'menu_color_hover',
		'drop_menu_bg',
		'smenu_color',
		'smenuh_color',
		//------------------------------------------------------------- PAV menu
		'pav_menu_bg',
		'pav_menu_border',
		'pav_links_color',
		'pav_links_color_hover',
		'pav_links_bg_hover',
		'pav_desc_color',
		'pav_arrow_color',
		'pav_submenu_bg',
		'pav_sub_title_color',
		'pav_sub_links_color',
		'pav_sub_links_color_hover',
		'pav_sub_desc_color',
		//------------------------------------------------------------- Category
		'category_box_bg',
		'category_box_border',
		'category_link_color',
		'category_link_color_hover',
		'categorysub_link_color',
		'categorysub_link_color_hover',
		'plus_bg',
		//------------------------------------------------------------- Box
		'heading_bg',
		'heading_border',
		'heading_color',
		'prodbcat_tab_link',
		'prodbcat_tab_link_selected',
		'heading_bg_blog_brand',
		'heading_border_blog_brand',
		'heading_color_blog_brand',
		//------------------------------------------------------------- product
		'product_box_bg',
		'product_box_border',
		'product_extra_bg',
		'product_extra_define',
		'product_extra_label',
		'product_cart_bg',
		'product_cart_color',
		'product_cart_bg_hover',
		'wish_compare_bg',
		'wish_compare_bg_hover',
		'sale_bg',
		'price_color',
		'other_oldprice_color',
		'product_name_color',
		//------------------------------------------------------------- newsletter
		'newsletter_bg_box',
		'newsletter_text_color',
		'newsletter_title',
		'newsletter_border',
		'newsletter_subscribe',
		'newsletter_unsubscribe',
		'newsletter_btn_hovers',
		//------------------------------------------------------------- latest blogs
		'latest_blogs_bg',
		'latest_blogs_box_border',
		'latest_blogs_heading',
		//------------------------------------------------------------- shop by brand
		'shop_brand_bg',
		'shop_brand_border',
		//------------------------------------------------------------- blocks
		'top_block_bg',
		'top_block_bg_hover',
		'top_block_color',
		'bottom_block_bg',
		'bottom_block_title',
		'bottom_block_text',
		//------------------------------------------------------------- general
		'title_color',
		'bodytext_color',
		'links_color',
		//------------------------------------------------------------- footer
		'footerheaders_color',	
		'footer_info_color',
		'footerlinks_color',
		'footer_bg',
		'footer_mid_bg',
		'footer_bottom_bg',
		//====================================================================================================== FONTS
		'title_font',
		'title_font_family',
		'title_font_size',
		
        'body_font',
		'body_font_family',
		'body_font_size',
		
		'button_font',
		'button_font_family',
		'button_font_size',
		
        'category_font',
		'category_font_family',
		'category_font_size',
		
		'menu_font',
		'menu_font_family',
		'menu_font_size',
		
		'product_font',
		'product_font_family',
		'product_font_size',
		
		'price_font',
		'price_font_family',
		'price_font_size',
		
		'boxheading_font',
		'boxheading_font_family',
		'boxheading_font_size',
		
		//====================================================================================================== BUTTON
		'details_addtocart',
		'details_addtocart_hover',
		'details_button_color',
		
		//======================================================================================================= CUSTOM Settings
		//top
		'custom_css',
		
		//social icons
		'facebook_link',
		'twitter_link',
		'google_link',
		'youtube_link',
		'linkedin_link',
		'dribbble_link',
		'flickr_link',
		'pinterest_link',
		'skype_link',
		'vimeo_link',
		'rss_link',
		
		//==== Top blocks
		'firstblock_img',
		//'firstblock_title',
		//'firstblock_desc',
		'firstblock_link',
		
		'secondblock_img',
		//'secondblock_title',
		//'secondblock_desc',
		'secondblock_link',
		
		'thirdblock_img',
		// 'thirdblock_title',
		// 'thirdblock_desc',
		'thirdblock_link',
		
		'fourthblock_img',
		//'fourthblock_title',
		//'fourthblock_desc',
		'fourthblock_link',
		
		'fifthblock_img',
		//'fifthblock_title',
		//'fifthblock_desc',
		'fifthblock_link',
		
		//==== Middle blocks
		'firstmblock_img',
		'firstmblock_link',
		//'firstmblock_title',
		//'firstmblock_desc',
		
		'secondmblock_img',
		'secondmblock_link',
		//'secondmblock_title',
		//'secondmblock_desc',
		
		'thirdmblock_img',
		'thirdmblock_link',
		//'thirdmblock_title',
		//'thirdmblock_desc',
		
		'fourthmblock_img',
		'fourthmblock_link',
		//'fourthmblock_title',
		//'fourthmblock_desc',
		
		//==== contact
		//'address',
		//'address_second',
		'phone',
		'phone_second',
		'fax',
		'email',
		'email_second',
		'time',
		
		//==== social widgets
		'facebook_id',
		'flickr_user',
        'twitter_username',
		'twitter_id',
		
		//====custom links
		'first_link_dir',
		'second_link_dir',
		'third_link_dir',
		'fourth_link_dir',
		'fifth_link_dir',
		'sixth_link_dir',
		
		//====company info
		'firstcompanyinfo_img',
		'secondcompanyinfo_img',
		'thirdcompanyinfo_img',
		'fourthcompanyinfo_img',
		'fifthcompanyinfo_img',
		'sixthcompanyinfo_img',
		
		'footer_image',
		'footer_preview',
		
		//====payment
		'pay1_img',
		'pay2_img',
		'pay3_img',
		'pay4_img',
		'pay5_img',
		'pay6_img',
		'pay7_img',
		'pay8_img',
		'pay9_img',
		'pay10_img',
		'pay1_name',
		'pay2_name',
		'pay3_name',
		'pay4_name',
		'pay5_name',
		'pay6_name',
		'pay7_name',
		'pay8_name',
		'pay9_name',
		'pay10_name',
		'pay1_link',
		'pay2_link',
		'pay3_link',
		'pay4_link',
		'pay5_link',
		'pay6_link',
		'pay7_link',
		'pay8_link',
		'pay9_link',
		'pay10_link',
		'pay1_preview',
		'pay2_preview',
		'pay3_preview',
		'pay4_preview',
		'pay5_preview',
		'pay6_preview',
		'pay7_preview',
		'pay8_preview',
		'pay9_preview',
		'pay10_preview',
		
		//Slideshow
		'option_slideshow',
		'amazon_slideshow_width',
		'amazon_slideshow_height',
		
		// Contact Page
		'cont_map',
		'cont_title',
		'cont_desc',
     
		'title_color_hover',
        'lighttext_color',		
		'cart_text_color',	
		'all_addtocart',
		'all_addtocart_hover',
		'language_text_color',
		'currency_text_color',
		'all_buttons_color',
		'heading_bgcolor',
        'copyright',
		
		//
		'widgetimage_img',
		'customwidget_link',
		// other options
		'swap_product_image',
		'display_image_search',
		'category_list',
		'default_display_featured',
		'default_display_recent',
		'default_display_special',
		'default_display_bestseller',
		'percentage_sale_price',
		'enable_default_menu',
		'min_shop_price',
		'max_shop_price',
		'skin_selected',
		'header_select'
        );
        
		$this->load->model('localisation/language');
		$languages = $this->model_localisation_language->getLanguages();
		
		
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }
		
		//langauges
		foreach ($languages as $language) {
			
		if (isset($this->request->post['firstblock_title_' . $language['language_id']])) {
		$this->data['firstblock_title_'. $language['language_id']] = $this->request->post['firstblock_title_'. $language['language_id']];
		} else {
		$this->data['firstblock_title_'. $language['language_id']] = $this->config->get('firstblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['firstblock_desc_' . $language['language_id']])) {
		$this->data['firstblock_desc_'. $language['language_id']] = $this->request->post['firstblock_desc_'. $language['language_id']];
		} else {
		$this->data['firstblock_desc_'. $language['language_id']] = $this->config->get('firstblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['secondblock_title_' . $language['language_id']])) {
		$this->data['secondblock_title_'. $language['language_id']] = $this->request->post['secondblock_title_'. $language['language_id']];
		} else {
		$this->data['secondblock_title_'. $language['language_id']] = $this->config->get('secondblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['secondblock_desc_' . $language['language_id']])) {
		$this->data['secondblock_desc_'. $language['language_id']] = $this->request->post['secondblock_desc_'. $language['language_id']];
		} else {
		$this->data['secondblock_desc_'. $language['language_id']] = $this->config->get('secondblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['thirdblock_title_' . $language['language_id']])) {
		$this->data['thirdblock_title_'. $language['language_id']] = $this->request->post['thirdblock_title_'. $language['language_id']];
		} else {
		$this->data['thirdblock_title_'. $language['language_id']] = $this->config->get('thirdblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['thirdblock_desc_' . $language['language_id']])) {
		$this->data['thirdblock_desc_'. $language['language_id']] = $this->request->post['thirdblock_desc_'. $language['language_id']];
		} else {
		$this->data['thirdblock_desc_'. $language['language_id']] = $this->config->get('thirdblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['fourthblock_title_' . $language['language_id']])) {
		$this->data['fourthblock_title_'. $language['language_id']] = $this->request->post['fourthblock_title_'. $language['language_id']];
		} else {
		$this->data['fourthblock_title_'. $language['language_id']] = $this->config->get('fourthblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['fourthblock_desc_' . $language['language_id']])) {
		$this->data['fourthblock_desc_'. $language['language_id']] = $this->request->post['fourthblock_desc_'. $language['language_id']];
		} else {
		$this->data['fourthblock_desc_'. $language['language_id']] = $this->config->get('fourthblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['fifthblock_title_' . $language['language_id']])) {
		$this->data['fifthblock_title_'. $language['language_id']] = $this->request->post['fifthblock_title_'. $language['language_id']];
		} else {
		$this->data['fifthblock_title_'. $language['language_id']] = $this->config->get('fifthblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['fifthblock_desc_' . $language['language_id']])) {
		$this->data['fifthblock_desc_'. $language['language_id']] = $this->request->post['fifthblock_desc_'. $language['language_id']];
		} else {
		$this->data['fifthblock_desc_'. $language['language_id']] = $this->config->get('fifthblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['firstmblock_title_' . $language['language_id']])) {
		$this->data['firstmblock_title_'. $language['language_id']] = $this->request->post['firstmblock_title_'. $language['language_id']];
		} else {
		$this->data['firstmblock_title_'. $language['language_id']] = $this->config->get('firstmblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['firstmblock_desc_' . $language['language_id']])) {
		$this->data['firstmblock_desc_'. $language['language_id']] = $this->request->post['firstmblock_desc_'. $language['language_id']];
		} else {
		$this->data['firstmblock_desc_'. $language['language_id']] = $this->config->get('firstmblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['secondmblock_title_' . $language['language_id']])) {
		$this->data['secondmblock_title_'. $language['language_id']] = $this->request->post['secondmblock_title_'. $language['language_id']];
		} else {
		$this->data['secondmblock_title_'. $language['language_id']] = $this->config->get('secondmblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['secondmblock_desc_' . $language['language_id']])) {
		$this->data['secondmblock_desc_'. $language['language_id']] = $this->request->post['secondmblock_desc_'. $language['language_id']];
		} else {
		$this->data['secondmblock_desc_'. $language['language_id']] = $this->config->get('secondmblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['thirdmblock_title_' . $language['language_id']])) {
		$this->data['thirdmblock_title_'. $language['language_id']] = $this->request->post['thirdmblock_title_'. $language['language_id']];
		} else {
		$this->data['thirdmblock_title_'. $language['language_id']] = $this->config->get('thirdmblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['thirdmblock_desc_' . $language['language_id']])) {
		$this->data['thirdmblock_desc_'. $language['language_id']] = $this->request->post['thirdmblock_desc_'. $language['language_id']];
		} else {
		$this->data['thirdmblock_desc_'. $language['language_id']] = $this->config->get('thirdmblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['fourthmblock_title_' . $language['language_id']])) {
		$this->data['fourthmblock_title_'. $language['language_id']] = $this->request->post['fourthmblock_title_'. $language['language_id']];
		} else {
		$this->data['fourthmblock_title_'. $language['language_id']] = $this->config->get('fourthmblock_title_'. $language['language_id']);
		}
		if (isset($this->request->post['fourthmblock_desc_' . $language['language_id']])) {
		$this->data['fourthmblock_desc_'. $language['language_id']] = $this->request->post['fourthmblock_desc_'. $language['language_id']];
		} else {
		$this->data['fourthmblock_desc_'. $language['language_id']] = $this->config->get('fourthmblock_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['address_' . $language['language_id']])) {
		$this->data['address_'. $language['language_id']] = $this->request->post['address_'. $language['language_id']];
		} else {
		$this->data['address_'. $language['language_id']] = $this->config->get('address_'. $language['language_id']);
		}
		
		if (isset($this->request->post['address_second_' . $language['language_id']])) {
		$this->data['address_second_'. $language['language_id']] = $this->request->post['address_second_'. $language['language_id']];
		} else {
		$this->data['address_second_'. $language['language_id']] = $this->config->get('address_second_'. $language['language_id']);
		}
		
	
		
		if (isset($this->request->post['custom_widget_title_' . $language['language_id']])) {
		$this->data['custom_widget_title_'. $language['language_id']] = $this->request->post['custom_widget_title_'. $language['language_id']];
		} else {
		$this->data['custom_widget_title_'. $language['language_id']] = $this->config->get('custom_widget_title_'. $language['language_id']);
		}
		if (isset($this->request->post['custom_widget_desc_' . $language['language_id']])) {
		$this->data['custom_widget_desc_'. $language['language_id']] = $this->request->post['custom_widget_desc_'. $language['language_id']];
		} else {
		$this->data['custom_widget_desc_'. $language['language_id']] = $this->config->get('custom_widget_desc_'. $language['language_id']);
		}
		
		if (isset($this->request->post['second_custom_widget_title_' . $language['language_id']])) {
		$this->data['second_custom_widget_title_'. $language['language_id']] = $this->request->post['second_custom_widget_title_'. $language['language_id']];
		} else {
		$this->data['second_custom_widget_title_'. $language['language_id']] = $this->config->get('second_custom_widget_title_'. $language['language_id']);
		}

		if (isset($this->request->post['first_custom_link_' . $language['language_id']])) {
		$this->data['first_custom_link_'. $language['language_id']] = $this->request->post['first_custom_link_'. $language['language_id']];
		} else {
		$this->data['first_custom_link_'. $language['language_id']] = $this->config->get('first_custom_link_'. $language['language_id']);
		}
		
		if (isset($this->request->post['second_custom_link_' . $language['language_id']])) {
		$this->data['second_custom_link_'. $language['language_id']] = $this->request->post['second_custom_link_'. $language['language_id']];
		} else {
		$this->data['second_custom_link_'. $language['language_id']] = $this->config->get('second_custom_link_'. $language['language_id']);
		}
		
		if (isset($this->request->post['third_custom_link_' . $language['language_id']])) {
		$this->data['third_custom_link_'. $language['language_id']] = $this->request->post['third_custom_link_'. $language['language_id']];
		} else {
		$this->data['third_custom_link_'. $language['language_id']] = $this->config->get('third_custom_link_'. $language['language_id']);
		}
		
		if (isset($this->request->post['fourth_custom_link_' . $language['language_id']])) {
		$this->data['fourth_custom_link_'. $language['language_id']] = $this->request->post['fourth_custom_link_'. $language['language_id']];
		} else {
		$this->data['fourth_custom_link_'. $language['language_id']] = $this->config->get('fourth_custom_link_'. $language['language_id']);
		}
		
		if (isset($this->request->post['fifth_custom_link_' . $language['language_id']])) {
		$this->data['fifth_custom_link_'. $language['language_id']] = $this->request->post['fifth_custom_link_'. $language['language_id']];
		} else {
		$this->data['fifth_custom_link_'. $language['language_id']] = $this->config->get('fifth_custom_link_'. $language['language_id']);
		}
		
		if (isset($this->request->post['sixth_custom_link_' . $language['language_id']])) {
		$this->data['sixth_custom_link_'. $language['language_id']] = $this->request->post['sixth_custom_link_'. $language['language_id']];
		} else {
		$this->data['sixth_custom_link_'. $language['language_id']] = $this->config->get('sixth_custom_link_'. $language['language_id']);
		}
		
		if (isset($this->request->post['cont_title_' . $language['language_id']])) {
		$this->data['cont_title_'. $language['language_id']] = $this->request->post['cont_title_'. $language['language_id']];
		} else {
		$this->data['cont_title_'. $language['language_id']] = $this->config->get('cont_title_'. $language['language_id']);
		}
		if (isset($this->request->post['cont_desc_' . $language['language_id']])) {
		$this->data['cont_desc_'. $language['language_id']] = $this->request->post['cont_desc_'. $language['language_id']];
		} else {
		$this->data['cont_desc_'. $language['language_id']] = $this->config->get('cont_desc_'. $language['language_id']);
		}

		//************************** company info
		// title
		if (isset($this->request->post['third_custom_widget_title_' . $language['language_id']])) {
		$this->data['third_custom_widget_title_'. $language['language_id']] = $this->request->post['third_custom_widget_title_'. $language['language_id']];
		} else {
		$this->data['third_custom_widget_title_'. $language['language_id']] = $this->config->get('third_custom_widget_title_'. $language['language_id']);
		}
		// first
		if (isset($this->request->post['first_company_info_' . $language['language_id']])) {
		$this->data['first_company_info_'. $language['language_id']] = $this->request->post['first_company_info_'. $language['language_id']];
		} else {
		$this->data['first_company_info_'. $language['language_id']] = $this->config->get('first_company_info_'. $language['language_id']);
		}
		// second
		if (isset($this->request->post['second_company_info_' . $language['language_id']])) {
		$this->data['second_company_info_'. $language['language_id']] = $this->request->post['second_company_info_'. $language['language_id']];
		} else {
		$this->data['second_company_info_'. $language['language_id']] = $this->config->get('second_company_info_'. $language['language_id']);
		}
		// third
		if (isset($this->request->post['third_company_info_' . $language['language_id']])) {
		$this->data['third_company_info_'. $language['language_id']] = $this->request->post['third_company_info_'. $language['language_id']];
		} else {
		$this->data['third_company_info_'. $language['language_id']] = $this->config->get('third_company_info_'. $language['language_id']);
		}
		// fourth
		if (isset($this->request->post['fourth_company_info_' . $language['language_id']])) {
		$this->data['fourth_company_info_'. $language['language_id']] = $this->request->post['fourth_company_info_'. $language['language_id']];
		} else {
		$this->data['fourth_company_info_'. $language['language_id']] = $this->config->get('fourth_company_info_'. $language['language_id']);
		}
		// fifth
		if (isset($this->request->post['fifth_company_info_' . $language['language_id']])) {
		$this->data['fifth_company_info_'. $language['language_id']] = $this->request->post['fifth_company_info_'. $language['language_id']];
		} else {
		$this->data['fifth_company_info_'. $language['language_id']] = $this->config->get('fifth_company_info_'. $language['language_id']);
		}
		// sixth
		if (isset($this->request->post['sixth_company_info_' . $language['language_id']])) {
		$this->data['sixth_company_info_'. $language['language_id']] = $this->request->post['sixth_company_info_'. $language['language_id']];
		} else {
		$this->data['sixth_company_info_'. $language['language_id']] = $this->config->get('sixth_company_info_'. $language['language_id']);
		}
		
		}

        //This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
        
        //SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/valentino', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['action'] = $this->url->link('module/valentino', 'token=' . $this->session->data['token'], 'SSL');
        
        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

    
        //This code handles the situation where you have multiple instances of this module, for different layouts.
        if (isset($this->request->post['module'])) {
            $modules = explode(',', $this->request->post['module']);
        } elseif ($this->config->get('module') != '') {
            $modules = explode(',', $this->config->get('module'));
        } else {
            $modules = array();
        }           
                
        $this->load->model('design/layout');
        
        $this->data['layouts'] = $this->model_design_layout->getLayouts();
                
        foreach ($modules as $module) {
            if (isset($this->request->post['' . $module . '_layout_id'])) {
                $this->data['' . $module . '_layout_id'] = $this->request->post['' . $module . '_layout_id'];
            } else {
                $this->data['' . $module . '_layout_id'] = $this->config->get('' . $module . '_layout_id');
            }   
            
            if (isset($this->request->post['' . $module . '_position'])) {
                $this->data['' . $module . '_position'] = $this->request->post['' . $module . '_position'];
            } else {
                $this->data['' . $module . '_position'] = $this->config->get('' . $module . '_position');
            }   
            
            if (isset($this->request->post['' . $module . '_status'])) {
                $this->data['' . $module . '_status'] = $this->request->post['' . $module . '_status'];
            } else {
                $this->data['' . $module . '_status'] = $this->config->get('' . $module . '_status');
            }   
                        
            if (isset($this->request->post['' . $module . '_sort_order'])) {
                $this->data['' . $module . '_sort_order'] = $this->request->post['' . $module . '_sort_order'];
            } else {
                $this->data['' . $module . '_sort_order'] = $this->config->get('' . $module . '_sort_order');
            }               
        }
        

        
        $this->data['modules'] = $modules;
        
        if (isset($this->request->post['module'])) {
            $this->data['module'] = $this->request->post['module'];
        } else {
            $this->data['module'] = $this->config->get('module');
        }

        //Choose which template file will be used to display this request.
        $this->data['languages'] = $languages;
        $this->template = 'module/valentino.tpl';
        $this->children = array(
            'common/header',
            'common/footer',
        );
		
		/////////////////// body //////////////////
        if (isset($this->data['custom_pattern']) && $this->data['custom_pattern'] != "" && file_exists(DIR_IMAGE . $this->data['custom_pattern'])) {
            $this->data['pattern_preview'] = $this->model_tool_image->resize($this->data['custom_pattern'], 70, 70);
        } else {
            $this->data['pattern_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        if (isset($this->data['custom_image']) && $this->data['custom_image'] != "" && file_exists(DIR_IMAGE . $this->data['custom_image'])) {
            $this->data['image_preview'] = $this->model_tool_image->resize($this->data['custom_image'], 70, 70);
        } else {
            $this->data['image_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
			
		/////////////////// container //////////////////		
		 if (isset($this->data['custom_pattern_cont']) && $this->data['custom_pattern_cont'] != "" && file_exists(DIR_IMAGE . $this->data['custom_pattern_cont'])) {
            $this->data['pattern_preview_cont'] = $this->model_tool_image->resize($this->data['custom_pattern_cont'], 70, 70);
        } else {
            $this->data['pattern_preview_cont'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        if (isset($this->data['custom_image_cont']) && $this->data['custom_image_cont'] != "" && file_exists(DIR_IMAGE . $this->data['custom_image'])) {
            $this->data['image_preview_cont'] = $this->model_tool_image->resize($this->data['custom_image_cont'], 70, 70);
        } else {
            $this->data['image_preview_cont'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		/////////////////// topadv //////////////////
        if (isset($this->data['custom_pattern_adv']) && $this->data['custom_pattern_adv'] != "" && file_exists(DIR_IMAGE . $this->data['custom_pattern_adv'])) {
            $this->data['pattern_preview_adv'] = $this->model_tool_image->resize($this->data['custom_pattern_adv'], 70, 70);
        } else {
            $this->data['pattern_preview_adv'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        if (isset($this->data['custom_image_adv']) && $this->data['custom_image_adv'] != "" && file_exists(DIR_IMAGE . $this->data['custom_image'])) {
            $this->data['image_preview_adv'] = $this->model_tool_image->resize($this->data['custom_image_adv'], 70, 70);
        } else {
            $this->data['image_preview_adv'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== 5 top blocks
		//first block img
		if (isset($this->data['firstblock_img']) && $this->data['firstblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['firstblock_img'])) {
            $this->data['firstblock_preview'] = $this->model_tool_image->resize($this->data['firstblock_img'], 70, 70);
        } else {
            $this->data['firstblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//second block img
		if (isset($this->data['secondblock_img']) && $this->data['secondblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['secondblock_img'])) {
            $this->data['secondblock_preview'] = $this->model_tool_image->resize($this->data['secondblock_img'], 70, 70);
        } else {
            $this->data['secondblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//third block img
		if (isset($this->data['thirdblock_img']) && $this->data['thirdblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['thirdblock_img'])) {
            $this->data['thirdblock_preview'] = $this->model_tool_image->resize($this->data['thirdblock_img'], 70, 70);
        } else {
            $this->data['thirdblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//fourth block img
		if (isset($this->data['fourthblock_img']) && $this->data['fourthblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['fourthblock_img'])) {
            $this->data['fourthblock_preview'] = $this->model_tool_image->resize($this->data['fourthblock_img'], 70, 70);
        } else {
            $this->data['fourthblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//fifth block img
		if (isset($this->data['fifthblock_img']) && $this->data['fifthblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['fifthblock_img'])) {
            $this->data['fifthblock_preview'] = $this->model_tool_image->resize($this->data['fifthblock_img'], 70, 70);
        } else {
            $this->data['fifthblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		
		//================== 4 middle blocks
		//first block img
		if (isset($this->data['firstmblock_img']) && $this->data['firstmblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['firstmblock_img'])) {
            $this->data['firstmblock_preview'] = $this->model_tool_image->resize($this->data['firstmblock_img'], 70, 70);
        } else {
            $this->data['firstmblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//second block img
		if (isset($this->data['secondmblock_img']) && $this->data['secondmblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['secondmblock_img'])) {
            $this->data['secondmblock_preview'] = $this->model_tool_image->resize($this->data['secondmblock_img'], 70, 70);
        } else {
            $this->data['secondmblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//third block img
		if (isset($this->data['thirdmblock_img']) && $this->data['thirdmblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['thirdmblock_img'])) {
            $this->data['thirdmblock_preview'] = $this->model_tool_image->resize($this->data['thirdmblock_img'], 70, 70);
        } else {
            $this->data['thirdmblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//fourth block img
		if (isset($this->data['fourthmblock_img']) && $this->data['fourthmblock_img'] != "" && file_exists(DIR_IMAGE . $this->data['fourthmblock_img'])) {
            $this->data['fourthmblock_preview'] = $this->model_tool_image->resize($this->data['fourthmblock_img'], 70, 70);
        } else {
            $this->data['fourthmblock_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		
		//================== contact img
		if (isset($this->data['contact_img']) && $this->data['contact_img'] != "" && file_exists(DIR_IMAGE . $this->data['contact_img'])) {
            $this->data['contact_preview'] = $this->model_tool_image->resize($this->data['contact_img'], 70, 70);
        } else {
            $this->data['contact_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		
		//================== cus img
		if (isset($this->data['cus_img']) && $this->data['cus_img'] != "" && file_exists(DIR_IMAGE . $this->data['cus_img'])) {
            $this->data['cus_preview'] = $this->model_tool_image->resize($this->data['cus_img'], 70, 70);
        } else {
            $this->data['cus_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);

		
		//================== pay1
		if (isset($this->data['pay1_img']) && $this->data['pay1_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay1_img'])) {
            $this->data['pay1_preview'] = $this->model_tool_image->resize($this->data['pay1_img'], 70, 70);
        } else {
            $this->data['pay1_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay2
		if (isset($this->data['pay2_img']) && $this->data['pay2_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay2_img'])) {
            $this->data['pay2_preview'] = $this->model_tool_image->resize($this->data['pay2_img'], 70, 70);
        } else {
            $this->data['pay2_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }

        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay3
		if (isset($this->data['pay3_img']) && $this->data['pay3_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay3_img'])) {
            $this->data['pay3_preview'] = $this->model_tool_image->resize($this->data['pay3_img'], 70, 70);
        } else {
            $this->data['pay3_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay4
		if (isset($this->data['pay4_img']) && $this->data['pay4_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay4_img'])) {
            $this->data['pay4_preview'] = $this->model_tool_image->resize($this->data['pay4_img'], 70, 70);
        } else {
            $this->data['pay4_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay5
		if (isset($this->data['pay5_img']) && $this->data['pay5_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay5_img'])) {
            $this->data['pay5_preview'] = $this->model_tool_image->resize($this->data['pay5_img'], 70, 70);
        } else {
            $this->data['pay5_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay6
		if (isset($this->data['pay6_img']) && $this->data['pay6_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay6_img'])) {
            $this->data['pay6_preview'] = $this->model_tool_image->resize($this->data['pay6_img'], 70, 70);
        } else {
            $this->data['pay6_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay7
		if (isset($this->data['pay7_img']) && $this->data['pay7_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay7_img'])) {
            $this->data['pay7_preview'] = $this->model_tool_image->resize($this->data['pay7_img'], 70, 70);
        } else {
            $this->data['pay7_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay8
		if (isset($this->data['pay8_img']) && $this->data['pay8_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay8_img'])) {
            $this->data['pay8_preview'] = $this->model_tool_image->resize($this->data['pay8_img'], 70, 70);
        } else {
            $this->data['pay8_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay9
		if (isset($this->data['pay9_img']) && $this->data['pay9_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay9_img'])) {
            $this->data['pay9_preview'] = $this->model_tool_image->resize($this->data['pay9_img'], 70, 70);
        } else {
            $this->data['pay9_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== pay10
		if (isset($this->data['pay10_img']) && $this->data['pay10_img'] != "" && file_exists(DIR_IMAGE . $this->data['pay10_img'])) {
            $this->data['pay10_preview'] = $this->model_tool_image->resize($this->data['pay10_img'], 70, 70);
        } else {
            $this->data['pay10_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		//================== company info imgs
		//first img
		if (isset($this->data['firstcompanyinfo_img']) && $this->data['firstcompanyinfo_img'] != "" && file_exists(DIR_IMAGE . $this->data['firstcompanyinfo_img'])) {
            $this->data['firstcompanyinfo_preview'] = $this->model_tool_image->resize($this->data['firstcompanyinfo_img'], 70, 70);
        } else {
            $this->data['firstcompanyinfo_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//second img
		if (isset($this->data['secondcompanyinfo_img']) && $this->data['secondcompanyinfo_img'] != "" && file_exists(DIR_IMAGE . $this->data['secondcompanyinfo_img'])) {
            $this->data['secondcompanyinfo_preview'] = $this->model_tool_image->resize($this->data['secondcompanyinfo_img'], 70, 70);
        } else {
            $this->data['secondcompanyinfo_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//third img
		if (isset($this->data['thirdcompanyinfo_img']) && $this->data['thirdcompanyinfo_img'] != "" && file_exists(DIR_IMAGE . $this->data['thirdcompanyinfo_img'])) {
            $this->data['thirdcompanyinfo_preview'] = $this->model_tool_image->resize($this->data['thirdcompanyinfo_img'], 70, 70);
        } else {
            $this->data['thirdcompanyinfo_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//fourth img
		if (isset($this->data['fourthcompanyinfo_img']) && $this->data['fourthcompanyinfo_img'] != "" && file_exists(DIR_IMAGE . $this->data['fourthcompanyinfo_img'])) {
            $this->data['fourthcompanyinfo_preview'] = $this->model_tool_image->resize($this->data['fourthcompanyinfo_img'], 70, 70);
        } else {
            $this->data['fourthcompanyinfo_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//fifth img
		if (isset($this->data['fifthcompanyinfo_img']) && $this->data['fifthcompanyinfo_img'] != "" && file_exists(DIR_IMAGE . $this->data['fifthcompanyinfo_img'])) {
            $this->data['fifthcompanyinfo_preview'] = $this->model_tool_image->resize($this->data['fifthcompanyinfo_img'], 70, 70);
        } else {
            $this->data['fifthcompanyinfo_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		//sixth img
		if (isset($this->data['sixthcompanyinfo_img']) && $this->data['sixthcompanyinfo_img'] != "" && file_exists(DIR_IMAGE . $this->data['sixthcompanyinfo_img'])) {
            $this->data['sixthcompanyinfo_preview'] = $this->model_tool_image->resize($this->data['sixthcompanyinfo_img'], 70, 70);
        } else {
            $this->data['sixthcompanyinfo_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		
		//================== widget image
		if (isset($this->data['widgetimage_img']) && $this->data['widgetimage_img'] != "" && file_exists(DIR_IMAGE . $this->data['widgetimage_img'])) {
            $this->data['widgetimage_preview'] = $this->model_tool_image->resize($this->data['widgetimage_img'], 70, 70);
        } else {
            $this->data['widgetimage_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		
		//================== footer image
		if (isset($this->data['footer_image']) && $this->data['footer_image'] != "" && file_exists(DIR_IMAGE . $this->data['footer_image'])) {
            $this->data['footer_preview'] = $this->model_tool_image->resize($this->data['footer_image'], 70, 70);
        } else {
            $this->data['footer_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
		
		
		
		
        //Send the output.
        $this->response->setOutput($this->render());
    }
    
    /*
     * 
     * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
     * You can add checks in here of your own.
     * 
     */
    
    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/valentino')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        
        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }   
    }


}
?>