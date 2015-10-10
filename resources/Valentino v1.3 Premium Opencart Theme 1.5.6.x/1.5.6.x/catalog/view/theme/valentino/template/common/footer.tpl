	</div><!--/row-->	
</div><!--/container-->
<?php if($this->config->get('firstblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
<div class="container">
	<div class="bottomBlocks">
		<div class="row">
			<div class="span3">
				<?php if($this->config->get('firstblock_title_' . $this->config->get('config_language_id')) != '') { ?> 
				<div class="oneBlock">
					<div class="tilt pic">
						<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
						 else $path_image = HTTP_IMAGE; 
						 if($this->config->get('firstblock_img')!='') { ?>
						 <img src="<?php echo $path_image . $this->config->get('firstblock_img') ?>" alt="" ><!--custom image-->
						 <?php } ?> 
				    </div>
				    <?php if($this->config->get('firstblock_title_' . $this->config->get('config_language_id')) != '') { ?>
					<h4><?php echo $this->config->get('firstblock_title_' . $this->config->get('config_language_id'))?></h4>
					<?php } ?>
					<?php if($this->config->get('firstblock_desc_' . $this->config->get('config_language_id')) != '') { ?>
					<p><?php echo $this->config->get('firstblock_desc_' . $this->config->get('config_language_id'))?></p>
					<?php } ?>
				</div>
				<?php } ?>
			</div>
			<div class="span3">
				<div class="oneBlock">
					<div class="tilt pic">
						<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
						 else $path_image = HTTP_IMAGE; 
						 if($this->config->get('secondblock_img')!='') { ?>
						 <img src="<?php echo $path_image . $this->config->get('secondblock_img') ?>" alt="" ><!--custom image-->
						 <?php } ?> 
				    </div>
				    <?php if($this->config->get('secondblock_title_' . $this->config->get('config_language_id')) != '') { ?>
					<h4><?php echo $this->config->get('secondblock_title_' . $this->config->get('config_language_id'))?></h4>
					<?php } ?>
					<?php if($this->config->get('secondblock_desc_' . $this->config->get('config_language_id')) != '') { ?>
					<p><?php echo $this->config->get('secondblock_desc_' . $this->config->get('config_language_id'))?></p>
					<?php } ?>
				</div>
			</div>
			<div class="span3">
				<div class="oneBlock">
					<div class="tilt pic">
						<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
						 else $path_image = HTTP_IMAGE; 
						 if($this->config->get('thirdblock_img')!='') { ?>
						 <img src="<?php echo $path_image . $this->config->get('thirdblock_img') ?>" alt="" ><!--custom image-->
						 <?php } ?> 
				    </div>
				    <?php if($this->config->get('thirdblock_title_' . $this->config->get('config_language_id')) != '') { ?>
					<h4><?php echo $this->config->get('thirdblock_title_' . $this->config->get('config_language_id'))?></h4>
					<?php } ?>
					<?php if($this->config->get('thirdblock_desc_' . $this->config->get('config_language_id')) != '') { ?>
					<p><?php echo $this->config->get('thirdblock_desc_' . $this->config->get('config_language_id'))?></p>
					<?php } ?>
				</div>
			</div>
			<div class="span3">
				<div class="oneBlock">
					<div class="tilt pic">
						<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
						 else $path_image = HTTP_IMAGE; 
						 if($this->config->get('fourthblock_img')!='') { ?>
						 <img src="<?php echo $path_image . $this->config->get('fourthblock_img') ?>" alt="" ><!--custom image-->
						 <?php } ?> 
				    </div>
				    <?php if($this->config->get('fourthblock_title_' . $this->config->get('config_language_id')) != '') { ?>
					<h4><?php echo $this->config->get('fourthblock_title_' . $this->config->get('config_language_id'))?></h4>
					<?php } ?>
					<?php if($this->config->get('fourthblock_desc_' . $this->config->get('config_language_id')) != '') { ?>
					<p><?php echo $this->config->get('fourthblock_desc_' . $this->config->get('config_language_id'))?></p>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php } ?>
<footer>
  	<div class="container">
  		    <div class="widgetArea">
  		    	<div class="row">
		  			<!--
		  			==== custom widget	
		  			-->
		  			<?php if($this->config->get('custom_widget_title_' . $this->config->get('config_language_id')) != '') { ?>
		  			<div class="span3">
		  				<div class="blockWrap">
			  				<h2><?php echo $this->config->get('custom_widget_title_' . $this->config->get('config_language_id'))?></h2>
			  				<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							 else $path_image = HTTP_IMAGE; 
							 if($this->config->get('widgetimage_img')!='') { ?>
							 <img class="aboutImg" src="<?php echo $path_image . $this->config->get('widgetimage_img') ?>" alt="" ><!--custom image-->
							 <?php } ?> 
			  				<p>
			  					<?php echo $this->config->get('custom_widget_desc_' . $this->config->get('config_language_id'))?>
			  				</p>
			  				
			  				<?php if($this->config->get('customwidget_link') != '') { ?>
			  				<a href="<?php echo $this->config->get('customwidget_link')?>" class="cartBtn"><?php echo $text_more ?></a>
			  				<?php } ?> 
		  				</div>
		  			</div>
		  			<?php } ?>
		  			
		  			<!--
		  			==== Flickr	
		  			-->
		  			<?php if($this->config->get('flickr_user') != '') { ?>
		  			<div class="span3">
		  				<div class="blockWrap">
			  				<h2><?php echo $text_flickr ?></h2>
			  				<style type="text/css"> 
							.flickr_badge_image {margin:0px;display:inline;}
							.flickr_badge_image img {border: 0px solid #666666 !important; padding:1px; margin: 0 6.5px 16px 6.5px;}
							#flickr_badge_wrapper {width:100%;text-align:left}
							</style><div id="flickr_badge_wrapper"><script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=9&display=latest&size=s&layout=x&source=user&user=<?php echo $this->config->get('flickr_user')?>"></script></div>
		  				</div>
		  			</div>
		  			<?php } ?>
		  			<!--
		  			==== Tweets	
		  			-->
		  			<?php if($this->config->get('twitter_username') != '') { ?>
		  			<div class="span3">
		  				<div class="blockWrap">
			  				<h2><?php echo $text_twitter ?></h2>
			  				<a class="twitter-timeline" data-tweet-limit="2" data-theme="dark" data-link-color="#d14d3b" data-chrome="nofooter noheader noborders transparent" href="https://twitter.com/<?php echo $this->config->get('twitter_username')?>" data-widget-id="<?php echo $this->config->get('twitter_id')?>">Tweets by @<?php echo $this->config->get('twitter_username')?></a>
							<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
		  				</div>
		  			</div>
		  			<?php } ?>
		  			<!--
		  			==== Contacts	
		  			-->
		  			<div class="span3">
		  				<div class="blockWrap">
		  				<h2><?php echo $this->config->get('third_custom_widget_title_' . $this->config->get('config_language_id'))?></h2>
		  				<ul class="companyInfo">
	  					<!-- First -->
	  					<?php if($this->config->get('first_company_info_' . $this->config->get('config_language_id')) != '') { ?>
	  					<li>
							<?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('firstcompanyinfo_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('firstcompanyinfo_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
	  						<?php echo $this->config->get('first_company_info_' . $this->config->get('config_language_id'))?>
	  					</li>
	  					<?php } ?>
	  					<!-- Second -->
	  					<?php if($this->config->get('second_company_info_' . $this->config->get('config_language_id')) != '') { ?>
	  					<li>
							<?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('secondcompanyinfo_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('secondcompanyinfo_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
	  						<?php echo $this->config->get('second_company_info_' . $this->config->get('config_language_id'))?>
	  					</li>
	  					<?php } ?>
	  					<!-- Third -->
	  					<?php if($this->config->get('third_company_info_' . $this->config->get('config_language_id')) != '') { ?>
	  					<li>
							<?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('thirdcompanyinfo_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('thirdcompanyinfo_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
	  						<?php echo $this->config->get('third_company_info_' . $this->config->get('config_language_id'))?>
	  					</li>
	  					<?php } ?>
	  					<!-- Fourth -->
	  					<?php if($this->config->get('fourth_company_info_' . $this->config->get('config_language_id')) != '') { ?>
	  					<li>
							<?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('fourthcompanyinfo_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('fourthcompanyinfo_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
	  						<?php echo $this->config->get('fourth_company_info_' . $this->config->get('config_language_id'))?>
	  					</li>
	  					<?php } ?>
	  					<!-- Fifth -->
	  					<?php if($this->config->get('fifth_company_info_' . $this->config->get('config_language_id')) != '') { ?>
	  					<li>
							<?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('fifthcompanyinfo_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('fifthcompanyinfo_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
	  						<?php echo $this->config->get('fifth_company_info_' . $this->config->get('config_language_id'))?>
	  					</li>
	  					<?php } ?>
	  					<!-- Sixth -->
	  					<?php if($this->config->get('sixth_company_info_' . $this->config->get('config_language_id')) != '') { ?>
	  					<li>
							<?php  if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
					         else $path_image = HTTP_IMAGE; 
					         if($this->config->get('sixthcompanyinfo_img')!='') { ?>
					         <img src="<?php echo $path_image . $this->config->get('sixthcompanyinfo_img') ?>" alt="" ><!--custom image-->
					         <?php } ?> 
	  						<?php echo $this->config->get('sixth_company_info_' . $this->config->get('config_language_id'))?>
	  					</li>
	  					<?php } ?>
	  				</ul>
		  				</div>
		  			</div>
  				</div><!--/row-->
  			</div><!--/widgetArea-->
  			
  			<div class="clearfix"></div>
  			
  			<div class="footerColumnsWrap">
	  			<div class="row">
		  			<div class="span3">
		  				<?php if ($informations) { ?>
						  <div class="column">
						    <h2><?php echo $text_information; ?></h2>
						    <ul>
						      <?php foreach ($informations as $information) { ?>
						      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
						      <?php } ?>
						    </ul>
						  </div>
						<?php } ?>
		  			</div>
		  			<div class="span3">
		  				<div class="column">
						    <h2><?php echo $text_service; ?></h2>
						    <ul>
						      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
						      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
						      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
						    </ul>
						</div>
		  			</div>
		  			<div class="span3">
		  				<div class="column">
						    <h2><?php echo $text_extra; ?></h2>
						    <ul>
						      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
						      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
						      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
						      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
						    </ul>
						</div>
		  			</div>
		  			<div class="span3">
		  				<div class="column">
						    <h2><?php echo $text_account; ?></h2>
						    <ul>
						      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
						      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
						      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
						      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
						    </ul>
						</div>
		  			</div>
	  			</div>
  			</div>
			<div class="clearfix"></div>
  
 			<div class="bottomFooter">
	 			<div class="row">
		  	 	<div class="span7">
	  	 			<?php if($this->config->get('footer_image') != '') { ?>
	  	 				<div class="blockWrap img-F">
							<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('footer_image')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('footer_image') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
						</div>
					<?php } ?>
	  	 			<div id="powered"><?php echo $powered; ?></div>
	  	 			
	  	 			<div class="clearfix"></div>
	  	 			
	  	 			<!-- Payment icons -->
	  	 			<?php if($this->config->get('pay1_img') != '') { ?>
		  	 		<div class="blockWrap">
		  	 		<ul class="payment tooltip-title">
		  	 			<?php if($this->config->get('pay1_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay1_name')?>" href="<?php echo $this->config->get('pay1_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay1_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay1_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay2_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay2_name')?>"  href="<?php echo $this->config->get('pay2_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay2_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay2_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay3_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay3_name')?>"  href="<?php echo $this->config->get('pay3_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay3_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay3_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay4_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay4_name')?>"  href="<?php echo $this->config->get('pay4_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay4_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay4_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay5_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay5_name')?>"  href="<?php echo $this->config->get('pay5_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay5_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay5_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay6_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay6_name')?>"  href="<?php echo $this->config->get('pay6_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay6_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay6_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay7_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay7_name')?>"  href="<?php echo $this->config->get('pay7_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay7_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay7_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay8_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay8_name')?>"  href="<?php echo $this->config->get('pay8_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay8_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay8_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay9_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay9_name')?>"  href="<?php echo $this->config->get('pay9_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay9_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay9_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
			            
			            <?php if($this->config->get('pay10_img') != '') { ?>
			          	<li>
			            	<a data-toggle="tooltip" title="<?php echo $this->config->get('pay10_name')?>"  href="<?php echo $this->config->get('pay10_link')?>" target="_blank">
			            	<?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
							else $path_image = HTTP_IMAGE; 
			                if($this->config->get('pay10_img')!='') { ?>
			            	<img src="<?php echo $path_image . $this->config->get('pay10_img') ?>" alt="" ><!--custom image-->
			                <?php } ?>    
			                </a>
			            </li>
			            <?php } ?>
		  	 		</ul>
		  	 		</div>
		  	 		<?php } ?>
		  	 	</div>
		  	 	
		  	 	<div class="span5">
		  	 		<ul class="followUs">
		  	 			<?php if($this->config->get('facebook_link') != '') { ?>
		  	 			<li><a href="<?php echo $this->config->get('facebook_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/facebook.png" alt="" ></a></li>
		  	 			<?php } ?>
		  	 			<?php if($this->config->get('twitter_link') != '') { ?>
							<li><a href="<?php echo $this->config->get('twitter_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/twitter.png" alt="" ></a></li>
						<?php } ?>
						<?php if($this->config->get('google_link') != '') { ?>
							<li><a href="<?php echo $this->config->get('google_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/google.png" alt="" ></a></li>
						<?php } ?>
						<?php if($this->config->get('youtube_link') != '') { ?>
							<li><a href="<?php echo $this->config->get('youtube_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/youtube.png" alt="" ></a></li>
						<?php } ?>
						<?php if($this->config->get('flickr_link') != '') { ?>
							<li><a href="<?php echo $this->config->get('flickr_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/flickr.png" alt="" ></a></li>
						<?php } ?>
						<?php if($this->config->get('pinterest_link') != '') { ?>
							<li><a href="<?php echo $this->config->get('pinterest_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/pinterest.png" alt="" ></a></li>
						<?php } ?>
						<?php if($this->config->get('vimeo_link') != '') { ?>
							<li><a href="<?php echo $this->config->get('vimeo_link'); ?>"><img src="catalog/view/theme/valentino/image/socials/vimeo.png" alt="" ></a></li>
						<?php } ?>
		  	 		</ul>
		  	 	</div>
	  	 	 </div>
  	 	 </div>
	</div><!--/container--> 	 
  <a id="scroll-top" href="#page-top"><img src="catalog/view/theme/valentino/image/totop.png" alt=""></a>
</footer>

<script src="catalog/view/javascript/jquery/totop.js"></script><!-- totop -->
<script src="catalog/view/javascript/jquery/custom.js"></script><!-- custom js -->
		
</body>
</html>