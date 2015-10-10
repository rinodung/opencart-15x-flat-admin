<?php 
	echo $header; 
	echo $column_left;
?>

<div id="content">

	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">

				<a class="btn btn-primary" onclick="$('#form').submit();"><?php echo $button_save; ?></a>
				<a class="btn btn-success" onclick="$('#action').val('save_stay');$('#form').submit();"><?php echo $button_save_stay; ?></a>
				<a class="btn btn-danger" href="<?php echo $cancel; ?>"><?php echo $button_cancel; ?></a>

			</div>
			<h1><?php echo $heading_title; ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div><!-- End div#page-header -->



 	<div id="page-content" class="container-fluid">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>
			<?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<?php if (isset($success) && !empty($success)) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>

		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h3>
			</div>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<input type="hidden" name="pavbannerbuilder_module[action]" id="action" value=""/>
				<input type="hidden" value="<?php echo $store_id;?>" name="pavbannerbuilder_module[store_id]"/>

				<div class="panel-body">
 
					<!-- Multiple Store -->
					<div class="form-group row">
						<label class="col-sm-2 control-label" for="pavstores"><?php echo $objlang->get('entry_default_store'); ?></label>
						<div class="col-sm-10">
							<select class="form-control no-width" class="form-control" name="pavbannerbuilder_module[stores]" id="pavstores" class="form-control">
								<?php foreach($stores as $store):?>
								<?php if($store['store_id'] == $store_id):?>
								<option value="<?php echo $store['store_id'];?>" selected="selected"><?php echo $store['name'];?></option>
								<?php else:?>
								<option value="<?php echo $store['store_id'];?>"><?php echo $store['name'];?></option>
								<?php endif;?>
								<?php endforeach;?>
							</select><br>
						</div>
					</div>
					


        <div id="screenview" class=""><div class="row">

             
               <div class="col-lg-3"> <div class="screenview-title">Design In</div>
                 <div class="btn-group button-alignments">
                    <button  class="btn btn-default active ptstooltip" data-option="large-screen" type="button"  data-placement="top" title="Large Devices, Wide Screens"><span class="fa fa-desktop"></span></button>
                    <button  class="btn btn-default ptstooltip" data-option="medium-screen" type="button"  data-placement="top" title="Medium Devices, Desktops"><span class="fa fa-laptop"></span></button>
                    <button   class="btn btn-default ptstooltip"  data-option="tablet-screen" type="button"  data-placement="top" title="Small Devices, Tablets"> <span class="fa fa-tablet"></span></button>
                    <button  class="btn btn-default ptstooltip"  data-option="mobile-screen"  type="button"  data-placement="top" title="Extra Small Devices, Phones"><span class="fa fa-mobile"></span> </button>
                  </div> 
                </div>
              
                  

           </div></div>
           	<hr>
						<div role="tabpanel" id="bannermodule-tab">
							<?php if( $selectedid ){ ?>
							 <div class="pull-right">
			           			<a href="<?php echo $action;?>&delete=1" class="remove btn btn-danger" ><span><i class="fa fa-remove"></i> Delete This</span></a>
			           		</div>	
			           		<?php } ?>
							
							  <!-- Nav tabs -->
							  <div class="row">
								  <ul class="nav nav-tabs" role="tablist">
								    <li <?php if( $selectedid ==0 ) { ?>class="active" <?php } ?>> <a href="<?php echo $link; ?>"> <span class="fa fa-plus"></span> <?php echo $olang->get('button_add_module');?></a></li>
								    <?php $i=1; foreach( $moduletabs as $key => $module ){ ?>
								    <li role="presentation" <?php if( $module['module_id']==$selectedid ) {?>class="active"<?php } ?>>
								    	<a href="<?php echo $link; ?>&module_id=<?php echo $module['module_id']?>" aria-controls="bannermodule-<?php echo $key; ?>"  >
								    		<span class="fa fa-pencil"></span> <?php echo $module['name']?>
								    	 </a>
								    	</li>
								    <?php $i++ ;} ?>
							 		
								  </ul>
							  </div>
							  <!-- Tab panes -->
							  <div class="tab-content">
							  	<?php $i=1; foreach( $modules as $key => $module ){ $module_row=$i; ?>
							    <div role="tabpanel" class="tab-pane<?php if( $i==1){?> active<?php } ?>" id="bannermodule-<?php echo $key; $i++; ?>">
								<div class="module-class form-group row">
							    		<label class="col-sm-2">Module Name</label>
							    		<div class="col-sm-10"><input class="form-control" name="pavbannerbuilder_module[<?php echo $key;?>][name]" value="<?php if(isset($module['name'])){ echo $module['name']; }?>"></div>
							    	</div>			
								<div   id="languages-tabs">	
			
									<ul class="nav nav-tabs" id="language<?php echo $key ;?>">
										<?php foreach ($languages as $language) { ?>
										<li>
											<a href="#tab-module-<?php echo $key ;?>-language-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
										</li>
										<?php } ?>
									</ul>

									<div class="tab-content" id="tab-content-lang">
										<?php foreach ($languages as $language) { ?>
							<?php 
								$mod_title = isset( $module['module_title'][$language['language_id']])? $module['module_title'][$language['language_id']]:"" ;
							 	$mod_description = isset( $module['description'][$language['language_id']])? $module['module_title'][$language['language_id']]:"";
							  ?>
										<div class="tab-pane" id="tab-module-<?php echo $key ;?>-language-<?php echo $language['language_id']; ?>">
										
										<div class="module-class form-group ">
								    		<label class="col-sm-2"><?php echo $entry_module_title; ?></label>
								    		<div class="col-sm-10">
								    			
								    			<input class="form-control" name="pavbannerbuilder_module[<?php echo $key ;?>][module_title][<?php echo $language['language_id']; ?>]" value="<?php echo $mod_title;?>"/>
												<hr>
								    		</div>
						    			</div>	
									
										</div>
										<?php } ?>
									</div>

								</div>

									<div class="form-group row">
											<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
											<div class="col-sm-10">
												<select class="form-control no-width" class="form-control" name="pavbannerbuilder_module[<?php echo $key;?>][status]" id="input-status" class="form-control">
													<?php if ( isset($module['status']) && $module['status'] ) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select><br>
											</div>

										</div>

									
							    		<hr>
							    	<div class="module-class form-group row">
							    		<label class="col-sm-2"><?php echo $objlang->get('text_classname');?></label>
							    		<div class="col-sm-10"><input class="form-control" name="pavbannerbuilder_module[<?php echo $key;?>][class]" value="<?php if(isset($module['class'])){ echo $module['class']; }?>"></div>
							    	</div>	

							    	<hr>
									<div class="module-group" id="contentbannermodule<?php echo $key; ?>">
								 		<div class="layout-builder-wrapper">
								 			<div id="layout-builder<?php echo $key; ?>" class="layout-builder"></div>
								 			<div><textarea name="pavbannerbuilder_module[<?php echo $key; ?>][layout]" class="hidden-content-layout hide"><?php echo $module['layout'];?></textarea></div>
								 		</div> 
									</div>	


							    </div>
	 							<?php } ?>


							  </div>

						</div>

					
						

					
				</div><!-- End div .panel-body -->
			</form>
		</div>
	</div><!-- End div#page-content -->

</div><!-- End div#content -->
 
<script type="text/javascript">  

$('#languages-tabs .nav-tabs a:first').tab('show');

$(".layout-builder-wrapper").each( function(){
	var config = { 
      	  urlwidgets:'',
          urlwidget:'',
          urlwidgetdata:'',
          imageurl : '<?php echo HTTP_CATALOG;?>/image/',
          placeholder:'<?php echo $placeholder; ?>'
      };

     
      $( $(".layout-builder", this) ).WPO_Layout( config, $(".hidden-content-layout",this).val() );

} );
$('#pavstores').bind('change', function () {
	url = 'index.php?route=module/pavbannerbuilder&token=<?php echo $token; ?>';
	var id = $(this).val();
	if (id) {
		url += '&store_id=' + encodeURIComponent(id);
	}
	window.location = url;
});

 
 $(".remove").click( function(){
	 if( confirm('Are you sure to remove this?') ){
	 	$(this).parent().parent().remove();
 		$($(this).parent().attr('href')).remove();
 		return true; 
	 }
	 return false; 
} );
 

 
$("#bannermodule-tab").delegate(".btn-banner-action",'click', function(){ 
	
	var url = $(this).attr('href');

	if( $(this).data('action') == 'edit' ){
		url = url + '&banner_id='+$("#pavbannergroup").val();
	}

	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialogeditmodule" style="padding: 3px 0px 0px 0px;"><iframe src="'+url+'" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	

	$('#dialogeditmodule').dialog({
		title: '<?php echo "Banners Management"; ?>',
		close: function (event, ui) {  
			window.location.reload(); 
		},	
		open: function(){
			 $("#dialogeditmodule iframe").load( function(){  
			 	  $('body', $('#dialogeditmodule iframe').contents() ).find("#menu").remove();
			 	  $('body', $('#dialogeditmodule iframe').contents() ).find("#header").remove();
			 	  $('body', $('#dialogeditmodule iframe').contents() ).find("#footer,#column-left").remove();
		 	      $('body', $('#dialogeditmodule iframe').contents() ).find(".breadcrumb").remove();
			 } );
		},			
		bgiframe: false,
		width: 1000,
		height: 600,
		resizable: true,
		modal: true
	});

 
	return false;
});

</script>