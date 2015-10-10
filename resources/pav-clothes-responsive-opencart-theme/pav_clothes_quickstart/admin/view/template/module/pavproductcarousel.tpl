<?php 
	echo $header; 
	echo $column_left;
?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-banner" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="fa fa-save"></i></button>
				<a class="btn btn-danger" href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>"><i class="fa fa-reply"></i></a>
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
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-latest" class="form-horizontal">
					<div class="tab-pane">
						<ul class="nav nav-tabs" id="language">
							<?php $i=0; foreach ($languages as $language) { $i++;?>
							<?php $active = ($i==1)?"class='active'":''; ?>
							<li <?php echo $active; ?>><a href="#tab-module-language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
							<?php } ?>
						</ul>
						<div class="tab-content">
							<?php $i=0; foreach ($languages as $language) { $i++;?>
							<?php $active = ($i==1)?"active":''; ?>
							<div class="tab-pane <?php echo $active; ?>" id="tab-module-language<?php echo $language['language_id']; ?>">
								<table class="table">
									<tr class="noborder">
										<td class="col-sm-2 control-label"><?php echo $entry_description; ?></td>
										<td class="col-sm-10"><textarea name="description[<?php echo $language['language_id']; ?>]" id="description-<?php echo $language['language_id']; ?>"><?php echo isset($description[$language['language_id']])?$description[$language['language_id']]:''; ?></textarea></td>
									</tr>
								</table>
							</div>
							<?php } ?>
							<table class="table">
								<tr>
									<td class="col-sm-2 control-label"><?php echo $objlang->get('entry_module_name'); ?></td>
									<td class="col-sm-10"><input class="form-control" style="width:55%;" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $objlang->get('entry_module_name'); ?>"/></td>
								</tr>
								<tr>
									<td class="col-sm-2 control-label"><?php echo $entry_status; ?></td>
									<td class="col-sm-10">
										<select class="form-control nostyle" name="status" id="input-status" class="form-control">
											<?php if ($status) { ?>
											<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
											<option value="0"><?php echo $text_disabled; ?></option>
											<?php } else { ?>
											<option value="1"><?php echo $text_enabled; ?></option>
											<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
											<?php } ?>
										</select>
									</td>
								</tr>
								<tr>
									<td class="col-sm-2 control-label"><?php echo $objlang->get('entry_module_additional_class'); ?></td>
									<td class="col-sm-10"><input class="form-control" style="width:55%;" name="prefix" value="<?php echo $prefix; ?>"/></td>
								</tr>
								<tr>
									<td class="col-sm-2 control-label"><?php echo $objlang->get('entry_module_fontawesome_class'); ?></td>
									<td class="col-sm-10"><input class="form-control" style="width:55%;" name="fontawesome" value="<?php if($fontawesome){echo $fontawesome;} ?>"/></td>
								</tr>
								<tr>
									<td class="col-sm-2 control-label">
									<?php echo $entry_tabs;?>
									</td>
									<td class="col-sm-10">
										<select class="form-control nostyle" name="tabs[]" size="10">
											<?php foreach ($tmptabs as $tab => $tabName) { ?>
											<?php if ( in_array($tab,(array)$tabs) ) { ?>
											<option value="<?php echo $tab; ?>" selected="selected"><?php echo $tabName; ?></option>
											<?php } else { ?>
											<option value="<?php echo $tab; ?>"><?php echo $tabName; ?></option>
											<?php } ?>
											<?php } ?>
										</select>
									</td>
								</tr>

								<tr>
									<td class="col-sm-2 control-label"><?php echo $entry_product;?></td>
									<td class="col-sm-10">
										<input type="text" name="product" value="" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control" />
										<div id="featured-product" class="well well-sm" style="height: 150px; overflow: auto;">
											<?php foreach ($products as $product) { ?>
											<div id="featured-product<?php echo $product['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product['name']; ?>
												<input type="hidden" name="product[]" value="<?php echo $product['product_id']; ?>" />
											</div>
											<?php } ?>
										</div>
									</td>
								</tr>

								<tr>
									<td class="col-sm-2 control-label"><?php echo $entry_dimension; ?></td>
									<td class="col-sm-10">
										<input class="form-control" style="width:15%;" name="width" value="<?php echo $width; ?>" size="3" /> - 
										<input class="form-control" style="width:15%;" name="height" value="<?php echo $height; ?>" size="3"/>
									</td>
								</tr>
								<tr>
									<td class="col-sm-2 control-label"><?php echo $entry_carousel; ?></td>
									<td class="col-sm-10">
										<input class="form-control" style="width:15%;" name="itemsperpage" value="<?php echo $itemsperpage; ?>" size="3" /> -
										<input class="form-control" style="width:15%;" name="cols" value="<?php echo $cols; ?>" size="3"/> -
										<input class="form-control" style="width:15%;" name="limit" value="<?php echo $limit; ?>" size="3"/>
									</td>
								</tr>
								
							</table>
						</div>
					</div>
				</form>
			</div>
		</div><!-- end div content form -->

		</div>
	</div><!-- End div#page-content -->

</div><!-- End div#content -->
<style type="text/css">
	.nostyle { width: 36%; }
</style>
<script type="text/javascript">
	<?php foreach ($languages as $language) { ?>
		$("#description-<?php echo $language['language_id']; ?>").summernote({ height: 150 });
	<?php } ?>
</script>
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	select: function(item) {
		$('input[name=\'product\']').val('');
		
		$('#featured-product' + item['value']).remove();
		
		$('#featured-product').append('<div id="featured-product' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product[]" value="' + item['value'] + '" /></div>');	
	}
});
	
$('#featured-product').delegate('.fa-minus-circle', 'click', function() {
	$(this).parent().remove();
});
//--></script>
<?php echo $footer; ?>