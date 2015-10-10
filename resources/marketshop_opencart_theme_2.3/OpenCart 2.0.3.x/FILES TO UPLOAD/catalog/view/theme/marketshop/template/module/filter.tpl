<h3><?php echo $heading_title; ?></h3>
  <ul class="box-filter">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <li><span><?php echo $filter_group['name']; ?></span>
    
    <ul id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
        
        <li><label class="checkbox">
          <input name="filter[]" type="checkbox" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
          <?php echo $filter['name']; ?></label></li>
        <?php } else { ?>
        <li><label class="checkbox">
          <input name="filter[]" type="checkbox" value="<?php echo $filter['filter_id']; ?>" />
          <?php echo $filter['name']; ?></label></li>
        <?php } ?>
        <?php } ?>
    </ul>
    <?php } ?>
  </ul>
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
