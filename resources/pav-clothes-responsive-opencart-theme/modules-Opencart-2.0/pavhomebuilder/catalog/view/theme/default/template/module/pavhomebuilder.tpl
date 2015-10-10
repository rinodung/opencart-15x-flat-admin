<?php 

$objlang = $this->registry->get('language');
?>

<?php if( !isset($rows) ){ ?>
<div id="pav-homebuilder<?php echo rand(); ?>" class="homebuilder clearfix">
<?php $rows = $layouts; $level = 1; } ?>	
 	<?php foreach ( $rows as $row) { 
 			$row->level = $level;
 	?>
	    <?php if ( $row->level==1 ){	 ?>
	        <div class="pav-container <?php if ( isset($row->parallax)&&$row->parallax ) { ?> pts-parallax <?php } ?>" <?php echo $row->attrs?>>
	        	<div class="pav-inner">
	    <?php } ?>  
	    <div class="row row-level-<?php echo $row->level; ?> <?php echo $row->sfxcls?>"><div class="row-inner <?php echo $row->cls; ?> clearfix" >
	        <?php foreach( $row->cols as $col ) { ?>
	            <div class="col-lg-<?php echo $col->lgcol; ?> col-md-<?php echo $col->mdcol;?> col-sm-<?php echo $col->smcol;?> col-xs-<?php echo $col->xscol;?> <?php echo $col->sfxcls?>"><div class="col-inner  <?php echo $col->cls;?>">
	                <?php foreach ( $col->widgets as $widget ){ ?>
	                	<?php if( isset($widget->content) ) { ?>
	                     		<?php echo $widget->content; ?>
                   		<?php } ?>
	                <?php } ?>
	                <?php if (isset($col->rows)&&$col->rows) { ?>
	                    <?php   
	                        $rows = $col->rows;
	                        $level = $level + 1;
	                        require(  DIR_TEMPLATE.$template ); 
	                    ?>
	                <?php } ?>
	            </div></div>
	        <?php } ?>
	    </div></div>
	    <?php if ($row->level==1 ) { ?>
	            </div>
	        </div>
	    <?php } ?>
<?php } ?> 


<?php if( $level == 1 ){ ?>
</div>
<?php } ?>	
