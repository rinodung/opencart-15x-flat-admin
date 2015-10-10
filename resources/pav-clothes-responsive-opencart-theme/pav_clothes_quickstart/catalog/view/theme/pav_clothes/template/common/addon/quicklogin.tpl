<script type="text/javascript">
	$(".login a").first().attr('href','#quicklogin');
	$(".login a").first().colorbox({inline:true, width:"680px"});
</script>
<?php 
$objlang = $this->registry->get('language');
?>
<?php $this->load->model('account/customer'); $objlang->load('account/login'); ?>
<div class="hide">
	<div id="quicklogin">
		 <div class="login-content wrapper white">
		<div class="row">
			<div class="col-lg-6 col-sm-6 col-xs-12">
				<div class="inner no-margin">
					<h3>	<?php echo $objlang->get('text_new_customer'); ?> </h3>
					<div class="content">
						<p>
							<?php echo $objlang->get('text_register'); ?> 
						</p>
						<p><?php echo $objlang->get('text_register_account'); ?>  </p>
						<a href="<?php // echo $register; ?>" class="button btn btn-outline-black"><?php echo $objlang->get('button_continue'); ?>  </a>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-sm-6 col-xs-12">
				<div class="inner underline no-margin">
					<h3><?php echo $objlang->get('text_returning_customer'); ?></h3>
					<p>
						<?php echo $objlang->get('text_i_am_returning_customer'); ?>
					</p>
					<form action="<?php echo  $this->url->link('account/login', '', 'SSL'); ?>" method="post" enctype="multipart/form-data" role="form">									
						<div class="content">					  
							<div class="form-group">														  	
								<label class="control-label"><?php echo $objlang->get('entry_email'); ?> </label>	
								<input type="text" name="email" value="" class="form-control" />									
							</div>
							<div class="form-group">				      						  	
								<label class="control-label"><?php echo $objlang->get('entry_password'); ?></label>							
								<input type="password" name="password" value="" class="form-control" /><br/>
								<a href="<?php echo  $this->url->link('account/forgotten', '', 'SSL'); ?>"><?php echo $objlang->get('text_forgotten'); ?></a>		
							</div>
							<input type="submit" value="<?php echo $objlang->get('button_login'); ?>" class="button btn btn-outline-black" />
						 										  
						</div>			
					</form>
				</div>
			</div>	
		</div>	
	</div>
</div>
<div>	