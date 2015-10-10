<?php echo $header; ?>
<div class="container">
  
	<form class="form-signin" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="reset">
	<div class="panel">
		<div class="panel-heading panel-default">
		<h1 class="panel-title"><?php echo $heading_title; ?></h1>
		</div>
		
		<div class="panel-body">
		<p><?php echo $text_password; ?></p>
		<?php if ($error_confirm) { ?>
              <span class="error"><?php echo $error_confirm; ?></span>
        <?php } ?>
		
		<?php if ($error_confirm) { ?>
              <span class="error"><?php echo $error_confirm; ?></span>
        <?php } ?>
		
			<div class="input-group input-group-sm">
			<span class="input-group-addon"><span class=" glyphicon glyphicon-asterisk"></span></span>
			<input type="password" name="password" value="<?php echo $password; ?>" class="form-control" placeholder="<?php echo $entry_password; ?>">
			</div>
			
			<div class="input-group input-group-sm">
			<span class="input-group-addon"><span class=" glyphicon glyphicon-asterisk"></span></span>
			<input type="password" name="confirm" value="<?php echo $confirm; ?>" class="form-control" placeholder="<?php echo $entry_confirm; ?>">
			</div>
			
			<div class="btn-group btn-group-justified">
			<a onclick="$('#reset').submit();" class="btn btn-info"><?php echo $button_save; ?></a>
			</div>
			
			<div class="btn-group btn-group-justified">
			<a href="<?php echo $cancel; ?>" class="btn btn-default"><?php echo $button_cancel; ?></a>
			</div>
		</div>
		
		<div class="panel-footer">

		</div>
	</div>
	</form>	
</div>
 
<?php echo $footer; ?>