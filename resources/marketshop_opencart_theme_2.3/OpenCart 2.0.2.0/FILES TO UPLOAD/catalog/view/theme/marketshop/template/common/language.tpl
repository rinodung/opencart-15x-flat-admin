<?php if (count($languages) > 1) { ?>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
  <div class="btn-group">
    <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span>
    <?php global $config; if($config->get('marketshop_language_currency_title')== 1) {?>
    <?php echo $text_language; ?>:
    <?php }  ?>
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"><?php echo $language['name']; ?>
    <?php } ?>
    <?php } ?>
    <i class="fa fa-caret-down"></i></span></button>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
      <li><a href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
