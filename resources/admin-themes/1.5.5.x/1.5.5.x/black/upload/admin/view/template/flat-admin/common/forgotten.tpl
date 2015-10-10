<?php echo $header; ?>

<div class="container">
	<form class="form-signin" role="form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">
    <div class="panel">
		<div class="panel-heading panel-default" id="forgotten-title">
		<h1 class="panel-title"><span class="glyphicon glyphicon-user"></span> <?php echo $heading_title; ?></h1>
		</div>
		
		<div class="panel-body">
		<p><?php echo $text_email; ?></p>
		
			<?php if ($error_warning) { ?>
			<div class="warning  alert alert-danger"><?php echo $error_warning; ?></div>
			<?php } ?>
		
			<div class="input-group input-group-sm">
			<span class="input-group-addon">@&nbsp;</span>
			<input type="text" name="email" value="<?php echo $email; ?>" class="form-control" placeholder="<?php echo $entry_email; ?>">
			</div>
		
			<div class="btn-group btn-group-justified">
				<a onclick="$('#forgotten').submit();" class="btn btn-primary"><span class="glyphicon glyphicon-ok-circle"></span>  <?php echo $button_reset; ?></a>
				<a href="<?php echo $cancel; ?>" class="btn btn-default"><span class="glyphicon glyphicon-chevron-left"></span> <?php echo $button_cancel; ?></a>
			</div>
		</div>
  
	</div>
	</form>

</div>
<?php echo $footer; ?>