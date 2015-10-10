<?php echo $header; ?>
<div class="container">
	<form class="form-signin" role="form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	<div class="panel">
		<div class="panel-heading panel-default">
		<h1 class="panel-title"><?php if ($logo) { ?><a href="<?php echo $home; ?>"><img src="../image/data/logo.png" alt="<?php echo $name; ?>" /></a><?php } else { echo $name; } ?></h1>
		</div>
		
		<div class="panel-body">
		<p><?php echo $text_login; ?></p>
			<?php if ($success) { ?>
			<div class="success alert alert-success" role="alert"><?php echo $success; ?></div>
			<?php } ?>
		  
			<?php if ($error_warning) { ?>
			<div class="warning alert alert-danger" role="alert"><?php echo $error_warning; ?></div>
			<?php } ?>
		
			<div class="input-group input-group-sm">
			<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
			<input type="text" name="username" value="<?php echo $username; ?>" class="form-control" placeholder="<?php echo $entry_username; ?>">
			</div>
			
			<div class="input-group input-group-sm">
			<span class="input-group-addon"><span class=" glyphicon glyphicon-asterisk"></span></span>
			<input type="password" name="password" value="<?php echo $password; ?>" class="form-control" placeholder="<?php echo $entry_password; ?>">
			</div>
			
			<div class="btn-group btn-group-justified">
			<a onclick="$('#form').submit();" class="btn btn-success"><?php echo $button_login; ?> <span class="glyphicon glyphicon-log-in"></span></a>
			</div>
				
			<div class="btn-group btn-group-justified">
			<p>
			<?php if ($forgotten) { ?>
			<a class="btn btn-default" href="<?php echo $forgotten; ?>"><span class="glyphicon glyphicon-info-sign"></span> <?php echo $text_forgotten; ?></a>
			<?php } ?>
			<a class="btn btn-default" href="<?php echo $home; ?>"><?php echo $name; ?> <span class="glyphicon glyphicon-chevron-right"></span></a>
			</p>
			</div>
		
			<?php if ($redirect) { ?>
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			<?php } ?>
			
		</div>
		
		<div class="panel-footer">
		<?php echo $text_footer; ?>
		</div>
	</div>
	</form>	
</div>

<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#form').submit();
	}
});
//--></script> 

<?php echo $footer; ?>