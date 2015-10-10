</div>
<?php $lang = (int)$this->config->get('config_language_id');?>

<?php if($this->config->get('marketshop_feature_box_per_row')== 'pr1') { ?>
    <?php $class_fbox = 'col-xs-12'; ?>
    <?php } elseif($this->config->get('marketshop_feature_box_per_row')== 'pr2') { ?>
    <?php $class_fbox = 'col-sm-6 col-xs-12'; ?>
    <?php } elseif($this->config->get('marketshop_feature_box_per_row')== 'pr3') { ?>
    <?php $class_fbox = 'col-sm-4 col-xs-12'; ?>
    <?php } elseif($this->config->get('marketshop_feature_box_per_row')== 'pr4') { ?>
    <?php $class_fbox = 'col-md-3 col-sm-6 col-xs-12'; ?>
    <?php } ?>
<?php if($this->config->get('marketshop_feature_box_homepage_only')== 1) { ?>
<?php if (!isset($this->request->get['route']) || $this->request->get['route'] == 'common/home') {?>    

<?php if($this->config->get('marketshop_feature_box_show_header_footer')== 2) {
$marketshop_feature_box_per_row = $this->config->get('marketshop_feature_box_per_row');
$marketshop_feature_box1_title = $this->config->get('marketshop_feature_box1_title');
$marketshop_feature_box1_subtitle = $this->config->get('marketshop_feature_box1_subtitle');
$marketshop_feature_box2_title = $this->config->get('marketshop_feature_box2_title');
$marketshop_feature_box2_subtitle = $this->config->get('marketshop_feature_box2_subtitle');
$marketshop_feature_box3_title = $this->config->get('marketshop_feature_box3_title');
$marketshop_feature_box3_subtitle = $this->config->get('marketshop_feature_box3_subtitle');
$marketshop_feature_box4_title = $this->config->get('marketshop_feature_box4_title');
$marketshop_feature_box4_subtitle = $this->config->get('marketshop_feature_box4_subtitle');

if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '') || (isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '') || (isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '') || (isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
<div class="container">
<div class="custom-feature-box row">
<?php if($this->config->get('marketshop_feature_box1_status')== 1) { if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_1">
  <h3><?php echo $marketshop_feature_box1_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box1_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  
  <?php if($this->config->get('marketshop_feature_box2_status')== 1) { if((isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '')) { ?>
<div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_2">
  <h3><?php echo $marketshop_feature_box2_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box2_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box3_status')== 1) { if((isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_3">
  <h3><?php echo $marketshop_feature_box3_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box3_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box4_status')== 1) { if((isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_4">
  <h3><?php echo $marketshop_feature_box4_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box4_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  </div>
  </div>
  <?php } ?><?php } ?>
  
  <?php } ?><?php } else { ?>
  
<?php if($this->config->get('marketshop_feature_box_show_header_footer')== 2) {
$marketshop_feature_box_per_row = $this->config->get('marketshop_feature_box_per_row');
$marketshop_feature_box1_title = $this->config->get('marketshop_feature_box1_title');
$marketshop_feature_box1_subtitle = $this->config->get('marketshop_feature_box1_subtitle');
$marketshop_feature_box2_title = $this->config->get('marketshop_feature_box2_title');
$marketshop_feature_box2_subtitle = $this->config->get('marketshop_feature_box2_subtitle');
$marketshop_feature_box3_title = $this->config->get('marketshop_feature_box3_title');
$marketshop_feature_box3_subtitle = $this->config->get('marketshop_feature_box3_subtitle');
$marketshop_feature_box4_title = $this->config->get('marketshop_feature_box4_title');
$marketshop_feature_box4_subtitle = $this->config->get('marketshop_feature_box4_subtitle');

if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '') || (isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '') || (isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '') || (isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
<div class="container">
<div class="custom-feature-box row">
<?php if($this->config->get('marketshop_feature_box1_status')== 1) { if((isset($marketshop_feature_box1_title[$lang]) && $marketshop_feature_box1_title[$lang] != '') || (isset($marketshop_feature_box1_subtitle[$lang]) && $marketshop_feature_box1_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_1">
  <h3><?php echo $marketshop_feature_box1_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box1_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  
  <?php if($this->config->get('marketshop_feature_box2_status')== 1) { if((isset($marketshop_feature_box2_title[$lang]) && $marketshop_feature_box2_title[$lang] != '') || (isset($marketshop_feature_box2_subtitle[$lang]) && $marketshop_feature_box2_subtitle[$lang] != '')) { ?>
<div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_2">
  <h3><?php echo $marketshop_feature_box2_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box2_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box3_status')== 1) { if((isset($marketshop_feature_box3_title[$lang]) && $marketshop_feature_box3_title[$lang] != '') || (isset($marketshop_feature_box3_subtitle[$lang]) && $marketshop_feature_box3_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_3">
  <h3><?php echo $marketshop_feature_box3_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box3_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  <?php if($this->config->get('marketshop_feature_box4_status')== 1) { if((isset($marketshop_feature_box4_title[$lang]) && $marketshop_feature_box4_title[$lang] != '') || (isset($marketshop_feature_box4_subtitle[$lang]) && $marketshop_feature_box4_subtitle[$lang] != '')) { ?>
  <div class="<?php echo $class_fbox; ?>">
  <div class="feature-box fbox_4">
  <h3><?php echo $marketshop_feature_box4_title[$lang]; ?></h3>
  <p><?php echo $marketshop_feature_box4_subtitle[$lang]; ?></p>
  </div></div><?php } ?><?php } ?>
  </div>
  </div>
  <?php } ?><?php } ?>
  <?php } ?>
  
  


<footer id="footer">
<div class="fpart-first">
<div class="container">
<div class="row">
<!-- Contact Details Start-->
<?php if($this->config->get('marketshop_about_contact_details')== 1) {
$marketshop_contact = $this->config->get('marketshop_contact');
$marketshop_address = $this->config->get('marketshop_address');
$marketshop_mobile = $this->config->get('marketshop_mobile');
$marketshop_email = $this->config->get('marketshop_email');

if((isset($marketshop_address[$lang]) && $marketshop_address[$lang] != '') || (isset($marketshop_contact[$lang]) && $marketshop_contact[$lang] != '') || (isset($marketshop_mobile[$lang]) && $marketshop_mobile[$lang] != '') || (isset($marketshop_email[$lang]) && $marketshop_email[$lang] != '')) { ?>
<div class="contact col-lg-4 col-md-4 col-sm-12 col-xs-12 <?php echo $this->config->get('marketshop_contact_icon'); ?>">
      <?php if($this->config->get('marketshop_contact_status')== 1) { if(isset($marketshop_contact[$lang]) && $marketshop_contact[$lang] != '') { ?>
    <h3><?php echo $marketshop_contact[$lang]; ?></h3>
    <?php } ?><?php } ?>
    
    <?php if($this->config->get('marketshop_address_status') == 1 || $this->config->get('marketshop_mobile_status') == 1 || $this->config->get('marketshop_email_status') == 1) { ?>
    <ul>
      <?php if($this->config->get('marketshop_address_status')== 1) { if(isset($marketshop_address[$lang]) && $marketshop_address[$lang] != '') { ?>
      <li class="address"><?php echo $marketshop_address[$lang]; ?></li>
      <?php } ?><?php } ?>
      <?php if($this->config->get('marketshop_mobile_status')== 1) { if(isset($marketshop_mobile[$lang]) && $marketshop_mobile[$lang] != '') { ?>
      <li class="mobile"><?php echo $marketshop_mobile[$lang]; ?></li>
      <?php } ?><?php } ?>
      <?php if($this->config->get('marketshop_email_status')== 1) { if(isset($marketshop_email[$lang]) && $marketshop_email[$lang] != '') { ?>
      <li class="email"><?php echo $marketshop_email[$lang]; ?> <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
      <?php } ?><?php } ?>
    </ul><?php } ?>    
  </div>
  <?php } ?>
  <?php } ?>
  
<?php if($this->config->get('marketshop_about_contact_details')== 0) {
$marketshop_contact = $this->config->get('marketshop_contact');
$marketshop_about_details = $this->config->get('marketshop_about_details');

if((isset($marketshop_contact[$lang]) && $marketshop_contact[$lang] != '') || (isset($marketshop_about_details[$lang]) && $marketshop_about_details[$lang] != '')) { ?>
  <div class="about_details col-lg-4 col-md-4 col-sm-12 col-xs-12">
  <?php if($this->config->get('marketshop_contact_status')== 1) { if(isset($marketshop_contact[$lang]) && $marketshop_contact[$lang] != '') { ?>
    <h3><?php echo $marketshop_contact[$lang]; ?></h3>
    <?php } ?><?php } ?>
  
  <?php $marketshop_about_details = $this->config->get('marketshop_about_details'); if(isset($marketshop_about_details[$lang])){echo html_entity_decode($marketshop_about_details[$lang], ENT_QUOTES, 'UTF-8');} ?>
  </div>
 <?php } ?><?php } ?>
<!-- Contact Details End-->  
<?php if ($informations) { ?>
<div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
<h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <?php if($this->config->get('marketshop_affiliate_status')== 1) { ?><li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li><?php } ?>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
    <h3><?php echo $text_account; ?></h3>
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
<div class="fpart-second">
 <div class="container">
  <div id="powered" class="clearfix">
  <div class="powered_text pull-left flip"><?php $marketshop_powered = $this->config->get('marketshop_powered'); if(isset($marketshop_powered[$lang])){echo html_entity_decode($marketshop_powered[$lang], ENT_QUOTES, 'UTF-8');} ?></div>
    
    
    <?php
// If marketshop module is enabled
if($this->config->get('marketshop_status')== 1) { 
	
if($this->config->get('marketshop_facebook_id') != '' || $this->config->get('marketshop_twitter_username') != '' || $this->config->get('marketshop_gplus_id') != '' || $this->config->get('marketshop_pint_id') != '' || $this->config->get('marketshop_rss') != '' || $this->config->get('marketshop_blogger') != '' || $this->config->get('marketshop_myspace') != '' || $this->config->get('marketshop_linkedin') != '' || $this->config->get('marketshop_evernote') != '' || $this->config->get('marketshop_dopplr') != '' || $this->config->get('marketshop_ember') != '' || $this->config->get('marketshop_flickr') != '' || $this->config->get('marketshop_picasa_web') != '' || $this->config->get('marketshop_youtube') != '' || $this->config->get('marketshop_technorati') != '' || $this->config->get('marketshop_grooveshark') != '' || $this->config->get('marketshop_vimeo') != '' || $this->config->get('marketshop_sharethis') != '' || $this->config->get('marketshop_yahoobuzz') != '' || $this->config->get('marketshop_viddler') != '' || $this->config->get('marketshop_skype') != '' || $this->config->get('marketshop_google_googletalk') != '' || $this->config->get('marketshop_digg') != '' || $this->config->get('marketshop_reddit') != '' || $this->config->get('marketshop_delicious') != '' || $this->config->get('marketshop_stumbleupon') != '' || $this->config->get('marketshop_friendfeed') != '' || $this->config->get('marketshop_tumblr') != '' || $this->config->get('marketshop_yelp') != '' || $this->config->get('marketshop_posterous') != '' || $this->config->get('marketshop_bebo') != '' || $this->config->get('marketshop_virb') != '' || $this->config->get('marketshop_last_fm') != '' || $this->config->get('marketshop_pandora') != '' || $this->config->get('marketshop_mixx') != '' || $this->config->get('marketshop_newsvine') != '' || $this->config->get('marketshop_openid') != '' || $this->config->get('marketshop_readernaut') != '' || $this->config->get('marketshop_xing_me') != '' || $this->config->get('marketshop_instagram') != '' || $this->config->get('marketshop_spotify') != '' || $this->config->get('marketshop_forrst') != '' || $this->config->get('marketshop_viadeo') != '' || $this->config->get('marketshop_vk_com') != '') { ?>
    <div class="social pull-right flip">
    <?php if($this->config->get('marketshop_facebook_id') != '') { ?>
        <a href="<?php echo $this->config->get('marketshop_facebook_id'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a>
        <?php } ?>
<?php if($this->config->get('marketshop_twitter_username') != '') { ?>
<a href="<?php echo $this->config->get('marketshop_twitter_username'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_gplus_id') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_gplus_id'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_pint_id') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_pint_id'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_rss') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_rss'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/rss.png" alt="RSS" title="RSS"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_blogger') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_blogger'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/blogger.png" alt="Blogger" title="Blogger"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_myspace') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_myspace'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/myspace.png" alt="myspace" title="MySpace"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_linkedin') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_linkedin'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/linkedin.png" alt="linkedin" title="LinkedIn"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_evernote') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_evernote'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/evernote.png" alt="evernote" title="evernote"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_dopplr') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_dopplr'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/dopplr.png" alt="dopplr" title="dopplr"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_ember') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_ember'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/ember.png" alt="ember" title="ember"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_flickr') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_flickr'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/flickr.png" alt="flickr" title="Flickr"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_picasa_web') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_picasa_web'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/picasa.png" alt="picasa" title="Picasa"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_youtube') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_youtube'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/youtube.png" alt="YouTube" title="YouTube"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_technorati') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_technorati'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/technorati.png" alt="technorati" title="technorati"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_grooveshark') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_grooveshark'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/grooveshark.png" alt="grooveshark" title="grooveshark"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_vimeo') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_vimeo'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/vimeo.png" alt="Vimeo" title="Vimeo"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_sharethis') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_sharethis'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/sharethis.png" alt="sharethis" title="ShareThis"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_yahoobuzz') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_yahoobuzz'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/yahoobuzz.png" alt="yahoobuzz" title="yahoobuzz"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_viddler') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_viddler'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/viddler.png" alt="viddler" title="viddler"> </a>
      <?php } ?>
      <?php if($this->config->get('marketshop_skype') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_skype'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/skype.png" alt="skype" title="Skype"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_google_googletalk') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_google_googletalk'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/googletalk.png" alt="googletalk" title="Google googletalk"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_digg') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_digg'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/digg.png" alt="digg" title="Digg"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_reddit') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_reddit'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/reddit.png" alt="reddit" title="Reddit"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_delicious') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_delicious'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/delicious.png" alt="delicious" title="Delicious"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_stumbleupon') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_stumbleupon'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/stumbleupon.png" alt="stumbleupon" title="StumbleUpon"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_friendfeed') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_friendfeed'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/friendfeed.png" alt="friendfeed" title="FriendFeed"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_tumblr') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_tumblr'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/tumblr.png" alt="tumblr" title="Tumblr"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_yelp') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_yelp'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/yelp.png" alt="yelp" title="Yelp"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_posterous') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_posterous'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/posterous.png" alt="posterous" title="posterous"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_bebo') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_bebo'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/bebo.png" alt="bebo" title="Bebo"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_virb') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_virb'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/virb.png" alt="virb" title="virb"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_last_fm') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_last_fm'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/lastfm.png" alt="lastfm" title="Last.fm"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_pandora') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_pandora'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/pandora.png" alt="pandora" title="pandora"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_mixx') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_mixx'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/mixx.png" alt="mixx" title="mixx"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_newsvine') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_newsvine'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/newsvine.png" alt="newsvine" title="Newsvine"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_openid') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_openid'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/openid.png" alt="openid" title="openid"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_readernaut') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_readernaut'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/readernaut.png" alt="readernaut" title="readernaut"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_xing_me') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_xing_me'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/xing.png" alt="xing" title="xing.me"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_instagram') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_instagram'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/instagram.png" alt="instagram" title="Instagram"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_spotify') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_spotify'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/spotify.png" alt="spotify" title="Spotify"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_forrst') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_forrst'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/forrst.png" alt="forrst" title="Forrst"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_viadeo') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_viadeo'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/viadeo.png" alt="viadeo" title="Viadeo"> </a>
      <?php } ?>
      
      <?php if($this->config->get('marketshop_vk_com') != '') { ?>
      <a href="<?php echo $this->config->get('marketshop_vk_com'); ?>" target="_blank"> <img src="catalog/view/theme/marketshop/image/socialicons/vk.png" alt="vk" title="VK.com"> </a>
      <?php } ?>
      
      
      
      
      
      
      
    </div>
    <?php } ?>
    <?php } ?>
    </div>
    
<div class="bottom-row">
    <!-- Custom Column for Footer Start-->
  <?php if($this->config->get('marketshop_custom_column_footer_status')== 1) {
    $marketshop_custom_column_footer = $this->config->get('marketshop_custom_column_footer');       
    
 	if((isset($marketshop_custom_column_footer[$lang]) && $marketshop_custom_column_footer[$lang] != '')) { ?>
<div class="custom-text text-center"> 
  <?php if((isset($marketshop_custom_column_footer[$lang]) && $marketshop_custom_column_footer[$lang] != '')) { ?>
      <?php echo html_entity_decode($marketshop_custom_column_footer[$lang], ENT_QUOTES, 'UTF-8'); ?>
    <?php } ?>
</div>
  <?php } ?>
  <?php } ?>
  <!-- Custom Column for Footer End-->
    <?php
// If marketshop module is enabled
if($this->config->get('marketshop_status')== 1) {

if($this->config->get('marketshop_paypal') != '' || $this->config->get('marketshop_american') != '' || $this->config->get('marketshop_2checkout') != '' || $this->config->get('marketshop_discover') != '' || $this->config->get('marketshop_maestro') != '' || $this->config->get('marketshop_mastercard') != '' || $this->config->get('marketshop_sagepay') != '' || $this->config->get('marketshop_visa') != '' || $this->config->get('marketshop_moneybooker') != '' || $this->config->get('marketshop_cirrus') != '' || $this->config->get('marketshop_delta') != '' || $this->config->get('marketshop_direct') != '' || $this->config->get('marketshop_google') != '' || $this->config->get('marketshop_western_union') != '' || $this->config->get('marketshop_ebay') != '' || $this->config->get('marketshop_solo') != '' || $this->config->get('marketshop_switch') != '') { ?>
    <div class="payments_types">
    
    <?php if ($this->config->get('marketshop_custom_payment_image_status') != '') { ?>
        <?php if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') {
	        $path_image = $this->config->get('config_ssl') . 'image/';
        } else {
        	$path_image = $this->config->get('config_url') . 'image/';
        }
        if ($this->config->get('marketshop_custom_payment_image') != ''){ ?>   
        <?php if($this->config->get('marketshop_custom_payment_image_url') != ''): ?> 
		<a href="<?php echo $this->config->get('marketshop_custom_payment_image_url'); ?>" target="_blank">
			<img src="<?php echo $path_image . $this->config->get('marketshop_custom_payment_image') ?>" alt="Payment" title="Payment"></a>
        <?php else: ?>         
			<img src="<?php echo $path_image . $this->config->get('marketshop_custom_payment_image') ?>" alt="Payment" title="Payment">
        <?php endif; ?>
		<?php } ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_paypal') != '') { ?>
        <?php if($this->config->get('marketshop_paypal_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_paypal_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_paypal.png" alt="paypal" title="PayPal"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_paypal.png" alt="paypal" title="PayPal">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_american') != '') { ?>
        <?php if($this->config->get('marketshop_american_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_american_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_american.png" alt="american-express" title="American Express"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_american.png" alt="american-express" title="American Express">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_2checkout') != '') { ?>
        <?php if($this->config->get('marketshop_2checkout_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_2checkout_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_2checkout.png" alt="2checkout" title="2checkout"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_2checkout.png" alt="2checkout" title="2checkout">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_maestro') != '') { ?>
        <?php if($this->config->get('marketshop_maestro_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_maestro_url'); ?>" target="_blank">
			 <img src="catalog/view/theme/marketshop/image/payment_maestro.png" alt="maestro" title="Maestro"></a>
        <?php else: ?>
             <img src="catalog/view/theme/marketshop/image/payment_maestro.png" alt="maestro" title="Maestro">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_discover') != '') { ?>
        <?php if($this->config->get('marketshop_discover_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_discover_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_discover.png" alt="discover" title="Discover"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_discover.png" alt="discover" title="Discover">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_mastercard') != '') { ?>
        <?php if($this->config->get('marketshop_mastercard_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_mastercard_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_mastercard.png" alt="mastercard" title="MasterCard"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_mastercard.png" alt="mastercard" title="MasterCard">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_visa') != '') { ?>
        <?php if($this->config->get('marketshop_visa_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_visa_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_visa.png" alt="visa" title="Visa"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_visa.png" alt="visa" title="Visa">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_sagepay') != '') { ?>
        <?php if($this->config->get('marketshop_sagepay_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_sagepay_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_sagepay.png" alt="sagepay" title="sagepay"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_sagepay.png" alt="sagepay" title="sagepay">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_moneybookers') != '') { ?>
        <?php if($this->config->get('marketshop_moneybookers_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_moneybookers_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_moneybookers.png" alt="moneybookers" title="Moneybookers"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_moneybookers.png" alt="moneybookers" title="Moneybookers">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_cirrus') != '') { ?>
        <?php if($this->config->get('marketshop_cirrus_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_cirrus_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_cirrus.png" alt="cirrus" title="Cirrus"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_cirrus.png" alt="cirrus" title="Cirrus">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_delta') != '') { ?>
        <?php if($this->config->get('marketshop_delta_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_delta_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_delta.png" alt="delta" title="Delta"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_delta.png" alt="delta" title="Delta">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_direct') != '') { ?>
        <?php if($this->config->get('marketshop_direct_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_direct_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_direct.png" alt="direct" title="direct"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_direct.png" alt="direct" title="direct">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_google') != '') { ?>
        <?php if($this->config->get('marketshop_google_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_google_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_google.png" alt="google" title="google"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_google.png" alt="google" title="google">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_solo') != '') { ?>
        <?php if($this->config->get('marketshop_solo_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_solo_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_solo.png" alt="solo" title="solo"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_solo.png" alt="solo" title="solo">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_switch') != '') { ?>
        <?php if($this->config->get('marketshop_switch_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_switch_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_switch.png" alt="switch" title="switch"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_switch.png" alt="switch" title="switch">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_western_union') != '') { ?>
        <?php if($this->config->get('marketshop_western_union_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_western_union_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_western_union.png" alt="western_union" title="western union"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_western_union.png" alt="western_union" title="western union">
        <?php endif; ?>
		<?php } ?>
        
        <?php if ($this->config->get('marketshop_ebay') != '') { ?>
        <?php if($this->config->get('marketshop_ebay_url') != ''): ?>
			<a href="<?php echo $this->config->get('marketshop_ebay_url'); ?>" target="_blank">
			<img src="catalog/view/theme/marketshop/image/payment_ebay.png" alt="ebay" title="ebay"></a>
        <?php else: ?>
            <img src="catalog/view/theme/marketshop/image/payment_ebay.png" alt="ebay" title="ebay">
        <?php endif; ?>
		<?php } ?>
    
    </div>
    <?php } ?>
    <?php } ?>
</div></div>
</div>
<?php if($this->config->get('marketshop_back_to_top')== 1) { ?>
<div id="back-top"><a title="Back to Top" href="javascript:void(0)" class="backtotop">Top</a></div>
<?php } ?>
</footer>
<!--Facebook Block Start-->
<?php if($this->config->get('marketshop_facebook_block_status')== 1) { ?>
<div id="facebook" class="<?php if($this->config->get('marketshop_facebook_box_align')== 1){ ?>fb-left<?php } ?><?php if($this->config->get('marketshop_facebook_box_align')== 2){ ?>fb-right<?php } ?>" style="<?php if($this->config->get('marketshop_facebook_block_sort_order')== 1){ ?>top:210px; z-index:10000;<?php } ?><?php if($this->config->get('marketshop_facebook_block_sort_order')== 2){ ?>top:270px; z-index:9999;<?php } ?><?php if($this->config->get('marketshop_facebook_block_sort_order')== 3){ ?>top:330px; z-index:9998;<?php } ?><?php if($this->config->get('marketshop_facebook_block_sort_order')== 4){ ?>top:390px; z-index:9997;<?php } ?>">
<div id="facebook_icon"></div>
<script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>
<fb:fan profile_id="<?php echo $this->config->get('marketshop_facebook_id_box'); ?>" stream="0" connections="20" logobar="0" width="235" height="284" ></fb:fan>  

<?php if($this->config->get('marketshop_facebook_box_align')== 1){ ?>
<script>
$(function(){        
        $("#facebook.fb-left").hover(function(){            
        $("#facebook.fb-left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#facebook.fb-left").stop(true, false).animate({left: "-235px" }, 800, 'easeInQuint' );        
        },1000);    
  });
	  </script>
      <?php } else { ?>
<script>
	  $(function(){        
        $("#facebook.fb-right").hover(function(){            
        $("#facebook.fb-right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#facebook.fb-right").stop(true, false).animate({right: "-235px" }, 800, 'easeInQuint' );        
        },1000);    
  });
  </script>
<?php } ?>

      
</div>   
<?php } ?>
<!--Facebook Block End-->

<!--Twitter Block Start-->
<?php if($this->config->get('marketshop_twitter_block_status')== 1) { ?>
<div id="twitter_footer" class="<?php if($this->config->get('marketshop_twitter_box_align')== 1){ ?>twit-left<?php } ?><?php if($this->config->get('marketshop_twitter_box_align')== 2){ ?>twit-right<?php } ?>" style="<?php if($this->config->get('marketshop_twitter_block_sort_order')== 1){ ?>top:210px; z-index:10000;<?php } ?><?php if($this->config->get('marketshop_twitter_block_sort_order')== 2){ ?>top:270px; z-index:9999;<?php } ?><?php if($this->config->get('marketshop_twitter_block_sort_order')== 3){ ?>top:330px; z-index:9998;<?php } ?><?php if($this->config->get('marketshop_twitter_block_sort_order')== 4){ ?>top:390px; z-index:9997;<?php } ?>">
<div class="twitter_icon"></div>
<a class="twitter-timeline" href="https://twitter.com/<?php echo $this->config->get('twitter_username'); ?>" data-chrome="nofooter noscrollbar transparent" data-theme="light" data-tweet-limit="2" data-related="twitterapi,twitter" data-aria-polite="assertive" data-widget-id="<?php echo $this->config->get('marketshop_widget_id'); ?>">Tweets by @<?php echo $this->config->get('twitter_username'); ?></a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
    </div>
    
<?php if($this->config->get('marketshop_twitter_box_align')== 1){ ?>
<script>
$(function(){        
        $("#twitter_footer.twit-left").hover(function(){            
        $("#twitter_footer.twit-left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#twitter_footer.twit-left").stop(true, false).animate({left: "-215px" }, 800, 'easeInQuint' );        
        },1000);    
  });  
	  </script>
      <?php } else { ?>
<script>
	  $(function(){        
        $("#twitter_footer.twit-right").hover(function(){            
        $("#twitter_footer.twit-right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#twitter_footer.twit-right").stop(true, false).animate({right: "-215px" }, 800, 'easeInQuint' );        
        },1000);    
  });
  </script>
<?php } ?>
  
    <?php } ?>
<!--Twitter Block End-->
<?php if($this->config->get('marketshop_video_box_status')== 1){ ?>
<div id="video_box" class="<?php if($this->config->get('marketshop_video_box_align')== 1){ ?>vb-left<?php } ?><?php if($this->config->get('marketshop_video_box_align')== 2){ ?>vb-right<?php } ?>" style="<?php if($this->config->get('marketshop_video_box_sort_order')== 1){ ?>top:210px; z-index:10000;<?php } ?><?php if($this->config->get('marketshop_video_box_sort_order')== 2){ ?>top:270px; z-index:9999;<?php } ?><?php if($this->config->get('marketshop_video_box_sort_order')== 3){ ?>top:330px; z-index:9998;<?php } ?><?php if($this->config->get('marketshop_video_box_sort_order')== 4){ ?>top:390px; z-index:9997;<?php } ?>"><div id="video_box_icon"></div>
<?php $marketshop_video_box_content = $this->config->get('marketshop_video_box_content'); if(isset($marketshop_video_box_content[$lang])){echo html_entity_decode($marketshop_video_box_content[$lang], ENT_QUOTES, 'UTF-8');} ?>
      </div>
      <?php if($this->config->get('marketshop_video_box_align')== 1){ ?>
      <script>
  $(function(){        
        $("#video_box.vb-left").hover(function(){            
        $("#video_box.vb-left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#video_box.vb-left").stop(true, false).animate({left: "-560px" }, 800, 'easeInQuint' );        
        },1000);    
  });
	  </script>
      <?php } else { ?>
	  <script>
	  $(function(){        
        $("#video_box.vb-right").hover(function(){            
        $("#video_box.vb-right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#video_box.vb-right").stop(true, false).animate({right: "-560px" }, 800, 'easeInQuint' );        
        },1000);    
  });
	  </script>
      <?php } ?>
     <?php } ?>
     
<!-- Custom Column for Footer Start-->
  <?php if($this->config->get('marketshop_custom_column_status')== 1) {
    $marketshop_custom_column = $this->config->get('marketshop_custom_column');   
    $marketshop_custom_side_block_align = $this->config->get('marketshop_custom_side_block_align');     
    
 	if((isset($marketshop_custom_column[$lang]) && $marketshop_custom_column[$lang] != '') || (isset($marketshop_custom_side_block_align[$lang]) && $marketshop_custom_side_block_align[$lang] != '')) { ?>
    <div id="custom_side_block" class="<?php if($this->config->get('marketshop_custom_side_block_align')== 1){ ?>custom_side_block_left<?php } ?><?php if($this->config->get('marketshop_custom_side_block_align')== 2){ ?>custom_side_block_right<?php } ?>" style="<?php if($this->config->get('marketshop_custom_side_block_sort_order')== 1){ ?>top:210px; z-index:10000;<?php } ?><?php if($this->config->get('marketshop_custom_side_block_sort_order')== 2){ ?>top:270px; z-index:9999;<?php } ?><?php if($this->config->get('marketshop_custom_side_block_sort_order')== 3){ ?>top:330px; z-index:9998;<?php } ?><?php if($this->config->get('marketshop_custom_side_block_sort_order')== 4){ ?>top:390px; z-index:9997;<?php } ?>">
    <div class="custom_side_block_icon"></div>
      <?php echo html_entity_decode($marketshop_custom_column[$lang], ENT_QUOTES, 'UTF-8'); ?>
    </div>
    
<?php if($this->config->get('marketshop_custom_side_block_align')== 1){ ?>
<script>
$(function(){        
        $("#custom_side_block.custom_side_block_left").hover(function(){            
        $("#custom_side_block.custom_side_block_left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#custom_side_block.custom_side_block_left").stop(true, false).animate({left: "-215px" }, 800, 'easeInQuint' );        
        },1000);    
  });  
	  </script>
<?php } else { ?>
<script>
$(function(){        
        $("#custom_side_block.custom_side_block_right").hover(function(){            
        $("#custom_side_block.custom_side_block_right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $("#custom_side_block.custom_side_block_right").stop(true, false).animate({right: "-215px" }, 800, 'easeInQuint' );        
        },1000);    
  });
  </script>
<?php } ?>

  <?php } ?>
  <?php } ?>
<!-- Custom Column for Footer End-->
</section>
</body>
</html>