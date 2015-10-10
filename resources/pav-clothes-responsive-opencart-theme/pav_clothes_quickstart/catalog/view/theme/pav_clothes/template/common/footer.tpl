<?php 
  /*
  * @package Framework for Opencart 2.0
  * @version 2.0
  * @author http://www.pavothemes.com
  * @copyright Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
  * @license   GNU General Public License version 2
  */
  require_once(DIR_SYSTEM . 'pavothemes/loader.php');
  $config = $this->registry->get('config'); 
  $helper = ThemeControlHelper::getInstance( $this->registry, $config->get('config_template') );
  $layoutID = 1 ;

?>
 <?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>
<!-- 
  $ospans: allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 -->

<?php if( !($helper->getConfig('enable_pagebuilder') && $helper->isHomepage())  ){ ?>

<?php
  $blockid = 'mass_bottom';
  $blockcls = '';
  $modules = $helper->getModulesByPosition( $blockid ); 
  $ospans = array(1=>6, 2=>6);
  $tmcols = '';
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php } ?>
 
<footer id="footer">
 
  <?php
    $blockid = 'footer_top';
    $blockcls = '';
    $ospans = array();
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
  ?>

  <?php
    $blockid = 'footer_center';
    $blockcls = '';
    $ospans = array();
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
  ?>

  <?php
  /**
   * Footer Center Position
   * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
   */
  $blockid = 'footer_bottom';
  $blockcls = '';
  $modules = $helper->getModulesByPosition( $blockid ); 
  $ospans = array(1=>3,2=>2,3=>2,4=>3);
  if( count($modules) &&  $helper->getConfig('enable_footer_bottom') ){
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );

  } else { ?>
  <div class="footer-bottom">
    <div class="container">
      <div class="inner">
      <div class="row">

        <?php if( $content=$helper->getLangConfig('widget_contact_us') ) {?>
        <div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
          <div class="box contact-us">
            <div class="box-heading"><span><?php echo $objlang->get('text_contact_us'); ?></span></div>
            <?php echo $content; ?>
          </div>
        </div>
        <?php } ?>


        <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
          <div class="box">
            <div class="box-heading"><span><?php echo $text_service; ?></span></div>
            <ul class="list">
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
              <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
               <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
            </ul>
          </div>
        </div>

        <?php if ($informations) { ?>
          <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
            <div class="box info">
              <div class="box-heading"><span><?php echo $text_information; ?></span></div>
                <ul class="list">
                  <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                </ul>         
            </div>
          </div>
          <?php } ?>
          
        <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
          <div class="box">
            <div class="box-heading"><span><?php echo $text_account; ?></span></div>
            <ul class="list">
              <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
              <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
              <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            </ul>
          </div>
        </div>
        <div class="column col-xs-12 col-sm-6 col-md-3 col-lg-3">
        <?php
          echo $helper->renderModule('pavnewsletter');
        ?>
      </div>
    </div>
    </div>
     </div> </div> 
<?php  } ?> 

</footer>
 
<div id="powered">
  <div class="container">
    <div class="inner clearfix">
      <div class="copyright pull-left">
        <?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
          <?php echo $helper->getConfig('copyright'); ?>
        <?php } else { ?>
          <?php echo $powered; ?>. 
        <?php } ?>
        Design By <a href="http://www.pavothemes.com" title="pavothemes - opencart themes clubs">LexusThemes</a>
      </div>
      
      <?php if( $content=$helper->getLangConfig('widget_paypal') ) {?>
        <div class="paypal pull-right">
          <?php echo $content; ?>
        </div>
      <?php } ?>


    </div>   
  </div>
</div>
<?php if( $helper->getConfig('enable_paneltool',0) ){  ?>
  <?php  echo $helper->renderAddon( 'panel' );?>
<?php } ?>
</div>
<?php  echo $helper->renderAddon( 'offcanvas' );?>  
</div>
</body></html>