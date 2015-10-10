<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language">
  	<?php echo $text_language; ?>
  	<div class="langWrap">
	    <?php foreach ($languages as $language) { ?>
	    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().parent().submit();" />
	    <?php } ?>
	    <input type="hidden" name="language_code" value="" />
	    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div><!--/langWrap-->
  </div>
</form>
<?php } ?>
