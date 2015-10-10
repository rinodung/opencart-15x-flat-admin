<ul id="menu">
	<li id="dashboard"><a href="<?php echo $home; ?>" class="top"><span class="glyphicon glyphicon-dashboard"></span> <?php echo $text_dashboard; ?></a></li>
    
	<li id="catalog"><a class="parent"><span class="glyphicon glyphicon-list-alt"></span> <?php echo $text_catalog; ?></a>
        <ul>
			<li><a href="<?php echo $category; ?>"><i class="ion-android-sort"></i> <?php echo $text_category; ?></a></li>
			<li><a href="<?php echo $product; ?>"><i class="ion-grid"></i> <?php echo $text_product; ?></a></li>
			<li><a href="<?php echo $filter; ?>"><i class="ion-funnel"></i> <?php echo $text_filter; ?></a></li>
			<li><a class="parent"><i class="ion-ios7-star-outline"></i> <?php echo $text_attribute; ?></a>
				<ul>
				<li><a href="<?php echo $attribute; ?>"><i class="ion-navicon"></i> <?php echo $text_attribute; ?></a></li>
				<li><a href="<?php echo $attribute_group; ?>"><i class="ion-android-developer"></i> <?php echo $text_attribute_group; ?></a></li>
				</ul>
			</li>
			<li><a href="<?php echo $option; ?>"><i class="ion-ios7-plus-outline"></i> <?php echo $text_option; ?></a></li>
			<li><a href="<?php echo $manufacturer; ?>"><i class="ion-hammer"></i> <?php echo $text_manufacturer; ?></a></li>
			<li><a href="<?php echo $download; ?>"><i class="ion-code-download"></i> <?php echo $text_download; ?></a></li>
			<li><a href="<?php echo $review; ?>"><i class="ion-android-forums"></i> <?php echo $text_review; ?></a></li>
			<li><a href="<?php echo $information; ?>"><i class="ion-android-information"></i> <?php echo $text_information; ?></a></li>
		</ul>
    </li>
	
	<li id="extension"><a class="parent"><span class="glyphicon glyphicon-cog"></span> <?php echo $text_extension; ?></a>
        <ul>
			<li><a href="<?php echo $module; ?>"><i class="ion-ios7-gear"></i> <?php echo $text_module; ?></a></li>
			<li><a href="<?php echo $shipping; ?>"><i class="ion-plane"></i> <?php echo $text_shipping; ?></a></li>
			<li><a href="<?php echo $payment; ?>"><i class="ion-card"></i> <?php echo $text_payment; ?></a></li>
			<li><a href="<?php echo $total; ?>"><i class="ion-android-sort"></i> <?php echo $text_total; ?></a></li>
			<li><a href="<?php echo $feed; ?>"><i class="ion-social-google-outline"></i> <?php echo $text_feed; ?></a></li>
		</ul>
	</li>
	
	<li id="sale"><a class="parent"><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo $text_sale; ?></a>
        <ul>
			<li><a href="<?php echo $order; ?>"><i class="ion-bag"></i> <?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $return; ?>"><i class="ion-arrow-return-left"></i> <?php echo $text_return; ?></a></li>
			<li><a class="parent"><i class="ion-android-social"></i> <?php echo $text_customer; ?></a>
				<ul>
					<li><a href="<?php echo $customer; ?>"><i class="ion-android-social-user"></i> <?php echo $text_customer; ?></a></li>
					<li><a href="<?php echo $customer_group; ?>"><i class="ion-ios7-people"></i> <?php echo $text_customer_group; ?></a></li>
					<li><a href="<?php echo $customer_ban_ip; ?>"><i class="ion-android-close"></i> <?php echo $text_customer_ban_ip; ?></a></li>
				</ul>
			</li>
			<li><a href="<?php echo $affiliate; ?>"><i class="ion-ios7-briefcase"></i> <?php echo $text_affiliate; ?></a></li>
			<li><a href="<?php echo $coupon; ?>"><i class="ion-cash"></i> <?php echo $text_coupon; ?></a></li>
			<li><a class="parent"><i class="ion-ios7-photos"></i> <?php echo $text_voucher; ?></a>
				<ul>
					<li><a href="<?php echo $voucher; ?>"><i class="ion-ios7-pricetag-outline"></i> <?php echo $text_voucher; ?></a></li>
					<li><a href="<?php echo $voucher_theme; ?>"><i class="ion-images"></i> <?php echo $text_voucher_theme; ?></a></li>
				</ul>
			</li>
			<li><a href="<?php echo $contact; ?>"><i class="ion-email"></i> <?php echo $text_contact; ?></a></li>
		</ul>
	</li>
	
	<li id="system"><a class="parent"><span class="glyphicon glyphicon-saved"></span> <?php echo $text_system; ?></a>
		<ul>
			<li><a href="<?php echo $setting; ?>"><i class="ion-gear-b"></i> <?php echo $text_setting; ?></a></li>
			<li><a class="parent"><i class="ion-android-image"></i> <?php echo $text_design; ?></a>
				<ul>
					<li><a href="<?php echo $layout; ?>"><i class="ion-eye"></i> <?php echo $text_layout; ?></a></li>
					<li><a href="<?php echo $banner; ?>"><i class="ion-images"></i> <?php echo $text_banner; ?></a></li>
				</ul>
			</li>
			<li><a class="parent"><i class="ion-android-social"></i> <?php echo $text_users; ?></a>
				<ul>
					<li><a href="<?php echo $user; ?>"><i class="ion-android-social-user"></i> <?php echo $text_user; ?></a></li>
					<li><a href="<?php echo $user_group; ?>"><i class="ion-ios7-people"></i> <?php echo $text_user_group; ?></a></li>
				</ul>
			</li>
			<li><a class="parent"><i class="ion-android-earth"></i> <?php echo $text_localisation; ?></a>
				<ul>
					<li><a href="<?php echo $language; ?>"><i class="ion-flag"></i> <?php echo $text_language; ?></a></li>
					<li><a href="<?php echo $currency; ?>"><i class="ion-cash"></i> <?php echo $text_currency; ?></a></li>
					<li><a href="<?php echo $stock_status; ?>"><i class="ion-battery-empty"></i> <?php echo $text_stock_status; ?></a></li>
					<li><a href="<?php echo $order_status; ?>"><i class="ion-android-clock"></i> <?php echo $text_order_status; ?></a></li>
					<li><a class="parent"><i class="ion-arrow-return-left"></i> <?php echo $text_return; ?></a>
						<ul>
							<li><a href="<?php echo $return_status; ?>"><i class="ion-ios7-settings-strong"></i> <?php echo $text_return_status; ?></a></li>
							<li><a href="<?php echo $return_action; ?>"><i class="ion-ios7-more-outline"></i> <?php echo $text_return_action; ?></a></li>
							<li><a href="<?php echo $return_reason; ?>"><i class="ion-help"></i> <?php echo $text_return_reason; ?></a></li>
						</ul>
					</li>
					<li><a href="<?php echo $country; ?>"><i class="ion-android-earth"></i> <?php echo $text_country; ?></a></li>
					<li><a href="<?php echo $zone; ?>"><i class="ion-android-location"></i> <?php echo $text_zone; ?></a></li>
					<li><a href="<?php echo $geo_zone; ?>"><i class="ion-compass"></i> <?php echo $text_geo_zone; ?></a></li>
					<li><a class="parent"><i class="ion-calculator"></i> <?php echo $text_tax; ?></a>
						<ul>
							<li><a href="<?php echo $tax_class; ?>"><i class="ion-ios7-browsers-outline"></i> <?php echo $text_tax_class; ?></a></li>
							<li><a href="<?php echo $tax_rate; ?>"><i class="ion-cash"></i> <?php echo $text_tax_rate; ?></a></li>
						</ul>
					</li>
					<li><a href="<?php echo $length_class; ?>"><i class="ion-ios7-barcode-outline"></i> <?php echo $text_length_class; ?></a></li>
					<li><a href="<?php echo $weight_class; ?>"><i class="ion-cube"></i> <?php echo $text_weight_class; ?></a></li>
				</ul>
			</li>
			<li><a href="<?php echo $error_log; ?>"><i class="ion-alert-circled"></i> <?php echo $text_error_log; ?></a></li>
			<li><a href="<?php echo $backup; ?>"><i class="ion-medkit"></i> <?php echo $text_backup; ?></a></li>
		</ul>
	</li>

	<li id="reports"><a class="parent"><span class="glyphicon glyphicon-stats"></span> <?php echo $text_reports; ?></a>
		<ul>
			<li><a class="parent"><i class="ion-pie-graph"></i> <?php echo $text_sale; ?></a>
				<ul>
					<li><a href="<?php echo $report_sale_order; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_sale_order; ?></a></li>
					<li><a href="<?php echo $report_sale_tax; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_sale_tax; ?></a></li>
					<li><a href="<?php echo $report_sale_shipping; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_sale_shipping; ?></a></li>
					<li><a href="<?php echo $report_sale_return; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_sale_return; ?></a></li>
					<li><a href="<?php echo $report_sale_coupon; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_sale_coupon; ?></a></li>
				</ul>
			</li>
			<li><a class="parent"><i class="ion-pie-graph"></i> <?php echo $text_product; ?></a>
				<ul>
					<li><a href="<?php echo $report_product_viewed; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_product_viewed; ?></a></li>
					<li><a href="<?php echo $report_product_purchased; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_product_purchased; ?></a></li>
				</ul>
			</li>
			<li><a class="parent"><i class="ion-pie-graph"></i> <?php echo $text_customer; ?></a>
				<ul>
					<li><a href="<?php echo $report_customer_online; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_customer_online; ?></a></li>
					<li><a href="<?php echo $report_customer_order; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_customer_order; ?></a></li>
					<li><a href="<?php echo $report_customer_reward; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_customer_reward; ?></a></li>
					<li><a href="<?php echo $report_customer_credit; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_customer_credit; ?></a></li>
				</ul>
			</li>
			<li><a class="parent"><i class="ion-pie-graph"></i> <?php echo $text_affiliate; ?></a>
				<ul>
					<li><a href="<?php echo $report_affiliate_commission; ?>"><i class="ion-connection-bars"></i> <?php echo $text_report_affiliate_commission; ?></a></li>
				</ul>
			</li>
		</ul>
	</li>
						
	<li id="help"><a class="parent"><span class="glyphicon glyphicon-file"></span> <?php echo $text_help; ?></a>
		<ul>
			<li><a href="http://www.opencart.com" target="_blank"><i class="ion-link"></i> <?php echo $text_opencart; ?></a></li>
			<li><a href="http://www.opencart.com/index.php?route=documentation/introduction" target="_blank"><i class="ion-link"></i> <?php echo $text_documentation; ?></a></li>
			<li><a href="http://forum.opencart.com" target="_blank"><i class="ion-link"></i> <?php echo $text_support; ?></a></li>
		</ul>
	</li>
						
	<li id="themebooster"><a class="parent"><span class="glyphicon glyphicon-themebooster"></span> ThemeBooster.com</a>
		<ul>
			<li><a href="http://www.themebooster.com/special-offers" target="_blank"><i class="ion-star"></i> Special Offers</a></li>
			<li><a href="http://www.themebooster.com/themes/opencart-themes" target="_blank"><i class="ion-images"></i> Our Themes</a></li>
			<li><a href="http://www.themebooster.com/opencart-modules" target="_blank"><i class="ion-android-settings"></i> Our Modules</a></li>
			<li><a href="http://www.themebooster.com/web-marketing-tutorials" target="_blank"><i class="ion-navicon"></i> Our Articles</a></li>
			<li><a href="http://support.themebooster.com" target="_blank"><i class="ion-help-buoy"></i> Help Desk</a></li>
		</ul>
	</li>
</ul>
