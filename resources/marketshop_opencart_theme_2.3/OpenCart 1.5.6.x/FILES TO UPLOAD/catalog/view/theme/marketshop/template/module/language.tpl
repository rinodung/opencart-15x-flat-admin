<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" id="language_form" enctype="multipart/form-data">
  <div id="language">
 <span><?php if($this->config->get('marketshop_language_currency_title')== 1) {?><?php echo $text_language; ?>: <?php }  ?>
 	<?php foreach ($languages as $language){ ?>
	 <?php if ($language['code'] == $language_code) { ?>	 
	<a><img src="image/flags/<?php echo $language['image'];?>"/><?php echo $language['name']; ?></a>
	<input type="hidden" name="language_code" value="" />
	<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" /> 
	  <?php } ?>
	<?php } ?>
    <b></b>
 </span>
   <ul>
    <?php foreach ($languages as $language) { ?>
    <li>
    <a title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();" >
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
    </a>
   </li>
    <?php } ?>
    </ul>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
