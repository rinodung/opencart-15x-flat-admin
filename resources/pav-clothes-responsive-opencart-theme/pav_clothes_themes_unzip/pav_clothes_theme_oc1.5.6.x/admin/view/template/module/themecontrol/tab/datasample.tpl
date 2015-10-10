
<div class="alert alert-success">
		<i><?php echo $this->language->get('text_message_datasample_modules');?></i>
</div>
	<h3>A. <?php echo $this->language->get('text_installation');?></h3>
	<p class="alert alert-success">
				   <span><a rel="install" class="label badge button bgreen" href="<?php echo $this->url->link('module/themecontrol/storesample', 'theme='.$module['default_theme'].'&token=' . $this->session->data['token'], 'SSL');?>">
						<?php echo $this->language->get('text_install_store_sample');?>
						<i><?php echo $this->language->get('text_install_store_sample_explain'); ?></i>
					</a></span>

				
				|
				 <span><a href="<?php echo $this->url->link('module/themecontrol','backup=1&token='. $this->session->data['token'], 'SSL') ;?>" class="button  green">
					<?php echo $this->language->get('text_backup_data_now');?>
				</a></span>
				-  <span><a href="<?php echo $ajax_massinstall;?>"  id="btnmassinstall"    class="button  btn-save"><span class="fa fa-save"></span>
				 <?php echo $this->language->get('text_mass_install');?>
				 <i><?php echo $this->language->get('text_explain_massup');?> </i>
				</a></span>
		</p>	
	
	<h3>B. <?php echo $this->language->get('text_installation_from_profile');?> </h3>

	<div class="panel">
		<div class="panel-title">
			A. <?php echo $this->language->get('text_installation_profile');?> / <i><?php echo $this->language->get('text_installation_profile_explain');?></i>  </div>
		<div class="panel-content">
			<div class="storeconfig-up" style=" margin:0 30px">
				<div>Or Upload A Theme Profile (*.txt):	<input type="file" name="upload"> <span class="button button-action btn-save" rel="save-importprofile">
				<span class="fa fa-save"></span> Import Now</span> 		<span><a href="<?php echo $exportprofile_action; ?>" class="button">Export Profile</a></span>	 </div>

				 
			</div>	
		</div>
	</div>
	<h3>C. <?php echo $this->language->get('text_installation_in_manually');?> </h3>
<div class="panel-installs clearfix">
	<div class="panel ">
		<div class="panel-title ">1. <?php echo $this->language->get('text_sample_module_query');?> <i>/ <?php echo $this->language->get('text_sample_module_query_explain'); ?></i></div>
		<div class="panel-content">	
			<table class="form pavform">
				<thead>
				<tr>
					<th><b><?php echo $this->language->get('text_module_name');?></b></th>
					<th><b><?php echo $this->language->get('text_action'); ?></b></th>
				</tr>
				</thead>
			
				<?php foreach( $modulesQuery as  $qmodule => $text_mod ) { ?>
				<tr>
					<td><a target="_blank" href="<?php echo $this->url->link('module/'.$qmodule, 'token=' . $this->session->data['token'], 'SSL');?>"><?php echo $text_mod;?></a></td>
					<td>
						<a rel="install" class="label badge bgreen"  href="<?php echo $this->url->link('module/themecontrol/installsample', 'type=query&theme='.$module['default_theme'].'&module='.$qmodule.'&token=' . $this->session->data['token'], 'SSL');?>"><i class="fa fa-upload"></i>  <?php echo $this->language->get('text_install_sample');?></a> [SQL Query]
					<td>
				</tr>
				<?php } ?>
			</table>
		</div>	
	</div>
	 

		
	

	<div class="panel ">
		<div class="panel-title ">
			 <?php echo $this->language->get('text_sample_module_setting'); ?> <i>/ <?php echo $this->language->get('text_sample_module_setting_explain'); ?></i>
		</div>
		<div class="panel-content">
	 	



 

			<table class="form pavform">
				<tr>	
		 
					<th><?php echo $this->language->get('text_module_name'); ?></th>
					<th><?php echo $this->language->get('text_action'); ?></th>
				</tr>	
				<?php 
				foreach( $samples as $sample  ) { ?>
					<tr>
			 
						<td>
						<?php if( isset($sample['existed']) && !$sample['existed'] ) { ?>
						<?php echo $this->language->get('text_module_not_uploaded');?>
						<?php } ?>
						<a target="_blank" href="<?php echo $this->url->link('module/'.$sample['module'], 'token=' . $this->session->data['token'], 'SSL');?>"><?php echo $sample['moduleName'];?></a>
						<?php if( isset($sample['extension_installed']) && !$sample['extension_installed'] ) { ?>
						<?php echo $this->language->get('text_module_not_installed');?>
						<?php } ?>
						</td>
						<td>	
							<?php if( isset($sample['extension_installed']) && !$sample['extension_installed'] && (isset($sample['existed']) && $sample['existed']) ) { ?>
							 <a  rel="install-extension" class="label badge bdanger" href="<?php echo $this->url->link('extension/module/install', 'extension='.$sample['module'].'&token=' . $this->session->data['token'], 'SSL');?>"><?php echo $this->language->get('text_install_now'); ?> </a> 
							<?php } ?>

							<?php if( $sample['installed'] ) { ?>
								<a rel="override" class="label badge bred" href="<?php echo $this->url->link('module/themecontrol/installsample', 'theme='.$module['default_theme'].'&module='.$sample['module'].'&token=' . $this->session->data['token'], 'SSL');?>"><i class="fa fa-upload"></i> <?php echo $this->language->get('text_override_sample');?></a>
							<?php } else { ?>
								<a rel="install" class="label badge bgreen" href="<?php echo $this->url->link('module/themecontrol/installsample', 'theme='.$module['default_theme'].'&module='.$sample['module'].'&token=' . $this->session->data['token'], 'SSL');?>"><i class="fa fa-upload"></i> <?php echo $this->language->get('text_install_sample');?></a>
							<?php } ?>
							
							<?php if( isset($backup_restore[$sample['module']]) ) { ?> | 
							<a rel="restore" class="label badge bgreen" href="<?php echo $this->url->link('module/themecontrol/restore', 'theme='.$module['default_theme'].'&module='.$sample['module'].'&token=' . $this->session->data['token'], 'SSL');?>"><i class="fa fa-undo"></i> <?php echo $this->language->get('text_restore_setting');?></a>
							<?php } ?>
						</td>
					</tr>
				<?php } ?>
			</table>
		</div>	
	</div>

</div>

<?php if( !empty($unexpectedModules) ) { ?>

<div class="panel-installs clearfix">
	<div class="panel ">
		<div class="panel-title"> <?php echo $this->language->get('disable_expected_module_in_home_page'); ?> <i><?php echo $this->language->get('text_message_disable_expected_module_in_home_page');?></i></div>
		<div class="panel-content">
			<table class="form">
				<?php foreach(  $unexpectedModules as $umodule )  { ?>
				<tr>
					<td>
						<a href="<?php echo $this->url->link('module/'.$umodule['code'], 'token=' . $this->session->data['token'], 'SSL');?>"><?php echo $umodule['title']; ?></a>
					</td>
					<td>
						<a  rel="install-extension" class="label badge bdanger" href="<?php echo $this->url->link('extension/module/uninstall', 'extension='.$umodule['code'].'&token=' . $this->session->data['token'], 'SSL');?>">
							<?php echo $this->language->get('text_uninstall_now'); ?> </a>
					</td>
				</tr>
				<?php } ?>
			</table>
		</div>	
	</div>
</div>

<?php } ?>
<script type="text/javascript">

$("#btnmassinstall").click( function(){
	var $this = $(this);
	var flag = confirm( '<?php echo $this->language->get('text_message_install_sample'); ?>' );
	if( flag ){
		$.ajax( {url: $(this).attr('href'),'type':'GET', complete:function(  ){
		 	$this.parent().html('<?php echo $this->language->get("text_install_done");?>');	
		} }  );
	}
	return false;
} );

$("#tab-datasample a").click( function(){
var flag = false; 
if( $(this).attr('rel') == 'override' ){
	var flag = confirm( '<?php echo $this->language->get('text_message_override_sample'); ?>' );
}else if( $(this).attr('rel') == 'install' ){
	var flag = confirm( '<?php echo $this->language->get('text_message_install_sample'); ?>' );
}else if( $(this).attr('rel') == 'restore' ){
	var flag = confirm( '<?php echo $this->language->get('text_message_restore_sample'); ?>' );
}else if(  $(this).attr('rel') == 'install-extension' ){
	flag = 1;
}else {
	return true; 
}
if( flag ){
	var $this = $( this );
	$this.html('processing');	
	$.post( $(this).attr('href'), function(data) {
		// $('.result').html(data);
		if( $this.attr("rel") == "install-extension" ){
			$this.remove();
		}else {
			$this.parent().html('<?php echo $this->language->get("text_install_done");?>');	
		}
	});
	return false;
}
return false; 
} );		
</script>
				