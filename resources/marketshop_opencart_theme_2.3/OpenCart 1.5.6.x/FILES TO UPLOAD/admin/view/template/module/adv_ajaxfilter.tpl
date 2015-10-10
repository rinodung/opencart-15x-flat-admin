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
            <style type="text/css">
                .list label{
                    display: inline;
                    margin: 0 5px !important;
                }

                table{
                    width: 100%;
                }

                table tr{
                    height: 30px;
                    vertical-align: middle;
                }

                table input{
                    margin-left:10px !important;
                }
            </style>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
                <table>
                    <tr valign="top">
                        <td>
                            <table id="settings" class="list" style="width: 60% !important; float: left">
                                <thead>
                                    <tr>
                                        <td colspan="2"> Filter Settings</td>
                                        <td><input type="checkbox" onchange="expand_all(this.checked)">&nbsp;<?php echo $text_expanded?></td>
                                    </tr>
                                </thead>
                                <tr>
                                    <td><?php echo $text_price_slider?></td>
                                    <td colspan="2">
                                        <input id="price_slider_yes" type="radio" name="adv_ajaxfilter_setting[price_slider]" value="1" <?php if(!isset($setting['price_slider']) || $setting['price_slider'] == '1') echo " checked='checked'"?>>
                                        <label for="price_slider_yes"><?php echo $text_yes?></label>
                                        <input id="price_slider_no" type="radio" name="adv_ajaxfilter_setting[price_slider]" value="0" <?php if(isset($setting['price_slider']) && $setting['price_slider'] == '0') echo " checked='checked'"?>>
                                        <label for="price_slider_no"><?php echo $text_no?></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_instock; ?></td>
                                    <td colspan="2">
                                        <input id="instock_checked" type="checkbox" name="adv_ajaxfilter_setting[instock_checked]" <?php if (isset($setting['instock_checked'])) echo ' checked="checked"'; ?>>&nbsp;<label for="instock_checked"><?php echo $text_checked; ?></label>
                                        <input id="instock_visible" type="checkbox" name="adv_ajaxfilter_setting[instock_visible]" <?php if (isset($setting['instock_visible'])) echo ' checked="checked"'; ?>>&nbsp;<label for="instock_visible"><?php echo $text_visible; ?></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_manufacturer?></td>
                                    <td>
                                        <?php foreach($display_options as $display_option) { ?>
                                        <input type="radio" name="adv_ajaxfilter_setting[display_manufacturer]" value="<?php echo $display_option['value']?>" <?php if(isset($setting['display_manufacturer']) && $display_option['value'] == $setting['display_manufacturer']) echo 'checked';?> ><?php echo $display_option['name']?></input>
                                        <?php }?>
                                    </td>
                                    <td><input type="checkbox" class="expanded" name="adv_ajaxfilter_setting[expanded_manufacturer]" <?php if(isset($setting['expanded_manufacturer'])) echo ' checked="checked"';?>></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_categories?></td>
                                    <td>
                                        <?php foreach($display_categories as $display) { ?>
                                        <input type="radio" name="adv_ajaxfilter_setting[display_categories]" value="<?php echo $display['value']?>" <?php if(isset($setting['display_categories']) && $display['value'] == $setting['display_categories']) echo 'checked';?> ><?php echo $display['name']?></input>
                                        <?php }?>
                                    </td>
                                    <td><input type="checkbox" class="expanded" name="adv_ajaxfilter_setting[expanded_categories]" <?php if(isset($setting['expanded_categories'])) echo ' checked="checked"';?>></td>
                                </tr>
                                <tr style="display:none;">
                                    <td><?php echo $text_tags?></td>
                                    <td>
                                        <?php foreach($display_tags as $display) { ?>
                                        <input type="radio" name="adv_ajaxfilter_setting[display_tags]" value="<?php echo $display['value']?>" <?php if(isset($setting['display_tags']) && $display['value'] == $setting['display_tags']) echo 'checked';?> ><?php echo $display['name']?></input>
                                        <?php }?>
                                    </td>
                                    <td><input type="checkbox" class="expanded" name="adv_ajaxfilter_setting[expanded_tags]" <?php if(isset($setting['expanded_tags'])) echo ' checked="checked"';?>></td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_filters?></td>
                                    <td>
                                        <?php foreach($display_filters as $display) { ?>
                                        <input type="radio" name="adv_ajaxfilter_setting[display_filters]" value="<?php echo $display['value']?>" <?php if(isset($setting['display_filters']) && $display['value'] == $setting['display_filters']) echo 'checked';?> ><?php echo $display['name']?></input>
                                        <?php }?>
                                    </td>
                                    <td><input type="checkbox" class="expanded" name="adv_ajaxfilter_setting[expanded_filters]" <?php if(isset($setting['expanded_filters'])) echo ' checked="checked"';?>></td>
                                </tr>
                                <tr>
                                    <td colspan="3">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align: center;"><strong>Options</strong></td>
                                </tr>
                                <?php foreach($options as $option){ ?>
                                <tr>
                                    <td><?php echo $option['name']?></td>
                                    <td>
                                        <?php foreach($display_options as $display_option) { ?>
                                        <input type="radio" name="adv_ajaxfilter_setting[display_option_<?php echo $option['option_id']?>]" value="<?php echo $display_option['value']?>" <?php if(isset($setting['display_option_' . $option['option_id']]) && $display_option['value'] == $setting['display_option_' . $option['option_id']]) echo 'checked';?> ><?php echo $display_option['name']?></input>
                                        <?php }?>
                                    </td>
                                    <td><input type="checkbox" class="expanded" name="adv_ajaxfilter_setting[expanded_option_<?php echo $option['option_id']?>]" <?php if(isset($setting['expanded_option_' . $option['option_id']])) echo ' checked="checked"';?>></td>
                                </tr>
                                <?php }?>
                                <tr>
                                    <td colspan="3">&nbsp;</td>
                                </tr>
                                <?php $attribute_group = false;?>
                                <?php foreach($attributes as $attribute){ ?>
                                <?php if ($attribute_group !=$attribute['attribute_group']) { ?>
                                    <?php $attribute_group = $attribute['attribute_group'];?>
                                    <tr>
                                        <td colspan="3" style="text-align: center;"><strong><?php echo $attribute['attribute_group']. ' (Attribute Group)'?></strong></td>
                                    </tr>
                                <?php }	?>
                                <tr>
                                    <td><?php echo $attribute['name']?></td>
                                    <td>
                                        <?php foreach($display_options_attr as $display_option) { ?>
                                        <input type="radio" name="adv_ajaxfilter_setting[display_attribute_<?php echo $attribute['attribute_id']?>]" value="<?php echo $display_option['value']?>" <?php if(isset($setting['display_attribute_' . $attribute['attribute_id']]) && $display_option['value'] == $setting['display_attribute_' . $attribute['attribute_id']]) echo 'checked';?> ><?php echo $display_option['name']?></input>
                                        <?php }?>
                                    </td>
                                    <td><input type="checkbox" class="expanded" name="adv_ajaxfilter_setting[expanded_attribute_<?php echo $attribute['attribute_id']?>]" <?php if(isset($setting['expanded_attribute_' . $attribute['attribute_id']])) echo ' checked="checked"';?>></td>
                                </tr>
                                <?php }?>
                            </table>
                            <table class="list" style="margin-left:20px; width: 35% !important; float: left">
                                <thead>
                                <tr>
                                    <td colspan="2">Search Settings</td>
                                </tr>
                                </thead>
                                <tr>
                                    <td><?php echo $text_attr_delimeter?></td>
                                    <td><input id="attr_delimeter" type="text" name="adv_ajaxfilter_setting[attr_delimeter]" size="3"
                                               value="<?php if(isset($setting['attr_delimeter'])) echo $setting['attr_delimeter']; else echo ':'; ?>">
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_tax?></td>
                                    <td><input id="tax" type="text" name="adv_ajaxfilter_setting[tax]" size="3"
                                               value="<?php if(isset($setting['tax'])) echo $setting['tax']; else echo '0'; ?>">
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_option_mode?></td>
                                    <td><input id="option_mode_or" type="radio" name="adv_ajaxfilter_setting[option_mode]"
                                               value="or" <?php if(!isset($setting['option_mode']) || $setting['option_mode'] == 'or') echo " checked='checked'"?>>
                                        <label for="option_mode_or"><?php echo $text_mode_or?></label>
                                        <input id="option_mode_and" type="radio" name="adv_ajaxfilter_setting[option_mode]"
                                               value="and" <?php if(isset($setting['option_mode']) && $setting['option_mode'] == 'and') echo " checked='checked'"?>>
                                        <label for="option_mode_and"><?php echo $text_mode_and?></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_filter_group_mode?></td>
                                    <td><input id="filter_group_mode_or" type="radio" name="adv_ajaxfilter_setting[filter_group_mode]"
                                               value="or" <?php if(!isset($setting['filter_group_mode']) || $setting['filter_group_mode'] == 'or') echo " checked='checked'"?>>
                                        <label for="filter_group_mode_or"><?php echo $text_mode_or?></label>
                                        <input id="filter_group_mode_and" type="radio" name="adv_ajaxfilter_setting[filter_group_mode]"
                                               value="and" <?php if(isset($setting['filter_group_mode']) && $setting['filter_group_mode'] == 'and') echo " checked='checked'"?>>
                                        <label for="filter_group_mode_and"><?php echo $text_mode_and?></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_attribute_mode?></td>
                                    <td><input id="attribute_mode_or" type="radio" name="adv_ajaxfilter_setting[attribute_mode]"
                                               value="or" <?php if(!isset($setting['attribute_mode']) || $setting['attribute_mode'] == 'or') echo " checked='checked'"?>>
                                        <label for="attribute_mode_or"><?php echo $text_mode_or?></label>
                                        <input id="attribute_mode_and" type="radio" name="adv_ajaxfilter_setting[attribute_mode]"
                                               value="and" <?php if(isset($setting['attribute_mode']) && $setting['attribute_mode'] == 'and') echo " checked='checked'"?>>
                                        <label for="attribute_mode_and"><?php echo $text_mode_and?></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_attribute_value_mode?></td>
                                    <td><input id="attribute_value_mode_or" type="radio" name="adv_ajaxfilter_setting[attribute_value_mode]"
                                               value="or" <?php if(!isset($setting['attribute_value_mode']) || $setting['attribute_value_mode'] == 'or') echo " checked='checked'"?>>
                                        <label for="attribute_value_mode_or"><?php echo $text_mode_or?></label>
                                        <input id="attribute_value_mode_and" type="radio" name="adv_ajaxfilter_setting[attribute_value_mode]"
                                               value="and" <?php if(isset($setting['attribute_value_mode']) && $setting['attribute_value_mode'] == 'and') echo " checked='checked'"?>>
                                        <label for="attribute_value_mode_and"><?php echo $text_mode_and?></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td><?php echo $text_attr_group?></td>
                                    <td><input id="text_attr_group_off" type="radio" name="adv_ajaxfilter_setting[attr_group]"
                                               value="0" <?php if(!isset($setting['attr_group']) || $setting['attr_group'] == '0') echo " checked='checked'"?>>
                                        <label for="text_attr_group_off"><?php echo $text_no?></label>
                                        <input id="text_attr_group_on" type="radio" name="adv_ajaxfilter_setting[attr_group]"
                                               value="1" <?php if(isset($setting['attr_group']) && $setting['attr_group'] == '1') echo " checked='checked'"?>>
                                        <label for="text_attr_group_on"><?php echo $text_yes?></label>
                                    </td>
                                </tr>
                                <tr style="display:none;">
                                    <td><?php echo $text_adv_ajaxfilter_container?></td>
                                    <td>
                                        <input type="radio" name="adv_ajaxfilter_setting[adv_ajaxfilter_container]" value="grid" <?php if ($setting['adv_ajaxfilter_container'] == 'grid') echo 'checked'; ?> />
                                        Grid
                                        <input type="radio" name="adv_ajaxfilter_setting[adv_ajaxfilter_container]" value="list" <?php if ($setting['adv_ajaxfilter_container'] == 'list') echo 'checked'; ?> />
                                        List
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    
                </table>

                <h2><?php echo $text_filter_position; ?></h2>
                <table id="module" class="list">
                    <thead>
                        <tr>
                            <td class="left"><?php echo $entry_layout; ?></td>
                            <td class="left"><?php echo $entry_module_title; ?></td>
                            <td class="left"><?php echo $entry_module_color; ?></td>
                            <td class="left"><?php echo $entry_module_border_color; ?></td>
							<td class="left"><?php echo $entry_position; ?></td>
                            <td class="left"><?php echo $entry_status; ?></td>
                            <td class="right"><?php echo $entry_sort_order; ?></td>
                            <td></td>
                        </tr>
                    </thead>
                    <?php $module_row = 0; ?>
                    <?php foreach ($modules as $module) { ?>
                    <?php if($module['type'] !=0){ continue; }?>
                    <tbody id="module-row<?php echo $module_row; ?>">
                        <tr>
                            <td class="left"><input type="hidden" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][type]" value="0">
                                <select name="adv_ajaxfilter_module[<?php echo $module_row; ?>][layout_id]">
                                <?php foreach ($layouts as $layout) { ?>
                                <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                                <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                                </select>
                            </td>

                            <td class="left"><input type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][module_title]" value="<?php echo $module['module_title']; ?>" size="30" /></td>
                            <td class="left"><input class="color" type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][module_color]" value="<?php echo $module['module_color']; ?>" size="7" /></td>
                            <td class="left"><input class="color" type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][module_border_color]" value="<?php echo $module['module_border_color']; ?>" size="7" /></td>
                            

                            <td class="left"><select name="adv_ajaxfilter_module[<?php echo $module_row; ?>][position]">
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
                                </select>
                            </td>
                            <td class="left"><select name="adv_ajaxfilter_module[<?php echo $module_row; ?>][status]">
                                <?php if ($module['status']) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                                </select>
                            </td>
                            <td class="right"><input type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
                            <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>
                        </tr>
                    </tbody>
                    <?php $module_row++; ?>
                    <?php } ?>
                    <tfoot>
                    <tr>
                        <td colspan="7"></td>
                        <td class="left"><a onclick="addModule();" class="button"><span><?php echo $button_add_module; ?></span></a></td>
                    </tr>
                </tfoot>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
    html += '    <td class="left"><input type="hidden" name="adv_ajaxfilter_module[' + module_row + '][type]" value="0">';
    html += '	    <select name="adv_ajaxfilter_module[' + module_row + '][layout_id]">';
   	                    <?php foreach ($layouts as $layout) { ?>
   	html += '           <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>';
   	                    <?php } ?>
   	html += '       </select>';
    html += '   </td>';

    html += '   <td class="left"><input type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][module_title]" value="" size="30" /></td>';
    html += '   <td class="left"><input class="color" type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][module_color]" value="000" size="7" /></td>';
    html += '   <td class="left"><input class="color" type="text" name="adv_ajaxfilter_module[<?php echo $module_row; ?>][module_border_color]" value="ddd" size="7" /></td>';

	html += '    <td class="left"><select name="adv_ajaxfilter_module[' + module_row + '][position]">';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="adv_ajaxfilter_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="adv_ajaxfilter_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';

	$('#module tfoot').before(html);

    jscolor.bind();
	module_row++;
}

function expand_all(checked){
	$('#settings input.expanded:checkbox').attr('checked', checked);
}

function apply(){
	$(".success").remove();
	$.post($("#form").attr('action'), $("#form").serialize(), function(html) {
		var $success = $(html).find(".success");
		if ($success.length > 0) {
			$(".breadcrumb").after($success);
		}
   });
}

jQuery(document).ready(function() {
	var radio_groups = {};
	$(":radio").each(function(){
		radio_groups[this.name] = true;
	});

	for(group in radio_groups){
		if_checked = !!$(":radio[name='"+group+"']:checked").length;

		if(!if_checked) {
			$('input[name="'+group+'"][value="checkbox"]').attr('checked', 'checked');
		}
	}
});
//--></script>
<?php echo $footer; ?>