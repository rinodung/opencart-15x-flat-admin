<style>
	
	.subcats_selected{
		float: left;
		display: block;
		width: 90%;
	}
</style>
<?php

?>
<?php echo $header; ?> 
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table id="module" class="list">
          <thead>
            <tr>
             <td class="left"><?php echo $entry_category; ?></td>
             <td class="left"><?php echo $entry_display; ?></td>
         	 <td class="left"><?php echo $entry_subcategories; ?></td>
         	  <td class="left"><?php echo $entry_limit; ?></td>
              <td class="left"><span class="required">*</span> <?php echo $entry_dimension; ?></td>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
                <td class="left">
 				      <select name="productbycategory_module[<?php echo $module_row; ?>][category_id]"  class="category" >
				        <?php 
				        $category_id=(isset($module['category_id']))?$module['category_id']:"";
			
						
				        foreach ($categories as $category_1) { ?>
				        <?php if ($category_1['category_id'] == $category_id) { ?>
				        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
				        <?php } else { ?>
				        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
				        <?php } ?>
				        <?php } ?>
				      </select>
				</td>
              <td class="left">
              	<?php 
              	$display1=$display2="";
              	if($module['display']=="slider"){
              		$display1="selected";
              	}else{
              		$display2="selected";
              	}
              	?>
              	<select name="productbycategory_module[<?php echo $module_row; ?>][display]">
                  <option value="slider" <?php echo $display1; ?> >slider</option>
                  <option value="grid" <?php echo $display2; ?> >grid</option>
                </select></td>

				<td class="left">
		              	<?php 
		              	$subcats1=$subcats2=$subcats3="";
		              	if($module['subcats']=="none"){
		              		$subcats1="selected";
		              	}elseif($module['subcats']=="filtering"){
		              		$subcats2="selected";
		              	}if($module['subcats']=="ctabs"){
		              		$subcats3="selected";
		              	}
		              	?>
					<select name="productbycategory_module[<?php echo $module_row; ?>][subcats]" style="width:150px;" class="subcats" rel="<?php echo $module_row; ?>" >
							<option value="none" <?php echo $subcats1; ?> >Nothing from subcategories</option> 
							<option value="filtering" <?php echo $subcats2; ?> >Display products from subcategories too in same module</option>
							<option value="ctabs" <?php echo $subcats3; ?> > Display tabs for each subcategory and its products </option>
					</select>
					<?php 
					
					if(($module['subcats']=="ctabs" || $module['subcats']=="filtering") && isset($module['subcatsselected']) && !empty($module['subcatsselected'])){
						$allsubcategory=$this->getCategoriesByParent($module['category_id']);
						foreach ($allsubcategory as  $valueSubcategory) {
							 $checked="";
							if(in_array($valueSubcategory['category_id'], $module['subcatsselected']))
								$checked="checked";
							?>
								<span class='subcats_selected'>
									<input type='checkbox' name='productbycategory_module[<?php echo $module_row; ?>][subcatsselected][]' value='<?php echo $valueSubcategory['category_id']; ?>'  <?php echo $checked; ?> />
	     							<?php echo $valueSubcategory['name']; ?>
	     						</span>
							<?php
						}
					}
					?>
					</td>

					<td class="left">
						<input type="text" name="productbycategory_module[<?php echo $module_row; ?>][limit]" value="<?php echo $module['limit']; ?>" size="3" />
					</td>


              <td class="left"><input type="text" name="productbycategory_module[<?php echo $module_row; ?>][width]" value="<?php echo $module['width']; ?>" size="3" />
                <input type="text" name="productbycategory_module[<?php echo $module_row; ?>][height]" value="<?php echo $module['height']; ?>" size="3" />
                <?php if (isset($error_dimension[$module_row])) { ?>
                <span class="error"><?php echo $error_dimension[$module_row]; ?></span>
                <?php } ?></td>
              <td class="left"><select name="productbycategory_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="productbycategory_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <!-- new position -->
              	  <?php if ($module['position'] == 'content_middle_1') { ?>
                       <option value="content_middle_1" selected="selected">Content Middle 2/3</option>
                    <?php } else { ?>
                       <option value="content_middle_1">Content Middle 2/3</option>
                    <?php } ?>
                  <!-- /new position -->
                  <!-- new position -->
              	  <?php if ($module['position'] == 'content_middle_2') { ?>
                       <option value="content_middle_2" selected="selected">Content Middle 1/3</option>
                    <?php } else { ?>
                       <option value="content_middle_2">Content Middle 1/3</option>
                    <?php } ?>
                  <!-- /new position -->
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <!-- new position -->
              	  <?php if ($module['position'] == 'content_bottom_2') { ?>
                       <option value="content_bottom_2" selected="selected">Content Bottom 2</option>
                    <?php } else { ?>
                       <option value="content_bottom_2">Content Bottom 2</option>
                    <?php } ?>
                  <!-- /new position -->
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
              <td class="left"><select name="productbycategory_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td class="right"><input type="text" name="productbycategory_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
              <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $module_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td colspan="9"></td>
              <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	
	html += '    <td class="left"><select name="productbycategory_module[' + module_row + '][category_id]"  class="category" >';
	<?php foreach ($categories as $category_1) { ?>
	html += '      <option value="<?php echo $category_1['category_id']; ?>"><?php echo addslashes($category_1['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	
	
	html += '    <td class="left"><select name="productbycategory_module[' + module_row + '][display]" >';
	html += '      <option value="slider">slider</option> <option value="grid">grid</option>';
	html += '    </select></td>';
	
	html += '    <td class="left"><select name="productbycategory_module[' + module_row + '][subcats]" style="width:150px;" class="subcats" rel="'+module_row+'" >';
	html += '      <option value="none">Nothing from subcategories</option> <option value="filtering">Display products from subcategories too in same module</option><option value="ctabs"> Display tabs for each subcategory and its products </option>';
	html += '    </select></td>';

	html += '    <td class="left"><input type="text" name="productbycategory_module[' + module_row + '][limit]" value="" size="3" /></td>'; 


	html += '    <td class="left"><input type="text" name="productbycategory_module[' + module_row + '][width]" value="" size="3" /> <input type="text" name="productbycategory_module[' + module_row + '][height]" value="" size="3" /></td>'; 
	html += '    <td class="left"><select name="productbycategory_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?> 
	html += '    </select></td>';
	html += '    <td class="left"><select name="productbycategory_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	// new position
	html += '      <option value="content_middle_1">Content Middle 2/3</option>';
	html += '      <option value="content_middle_2">Content Middle 1/3</option>';
	//
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	// new position
	html += '      <option value="content_bottom_2">Content Bottom 2</option>';
	//
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="productbycategory_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="productbycategory_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
$(".subcats,.category").live("change",function(e){
	e.preventDefault();
	var element=$(this).parents("tr").find(".subcats");
	if(element.val()=="ctabs" || element.val() =="filtering"){
		var parent_id=$(this).parents("tr").find("td:first").find("select").val();
		var rel=$(this).parents("tr").find(".subcats").attr("rel");
		
		jQuery.ajax({
			url: 'index.php?route=module/productbycategory/getSubCategories&token=<?php echo $token; ?>',
			data:{
				parent_id:parent_id,
				rel:rel
			},
			type:'GET',
			success:function(r){
				element.parents("td").find(".subcats_selected").remove();
				element.parents("td").append(r);
			}
		});
	}else{
		element.parents("td").find(".subcats_selected").remove();
	}

});
//--></script> 
<?php echo $footer; ?>