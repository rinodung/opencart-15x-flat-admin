<?php 
	  //	echo '<pre>'.print_r( $layouts, 1 );die; 
?>
<?php if( !isset($rows) ){ ?>
<div class="clearfix">
<?php $rows = $layouts; $level = 1; } ?>	
 	<?php foreach ( $rows as $row) { 
 			$row->level = $level;
 			$row->attrs = '';
 	?>
	    <?php if ( $row->level==1 ){	 ?>
	        <div class="box pts-container <?php if ( isset($row->parallax)&&$row->parallax ) { ?> pts-parallax <?php } ?>" <?php echo $row->attrs?>>        
	        	<div class="pts-inner">
	    <?php } ?>  
	    <div class="row row-level-<?php echo $row->level; ?>"><div class="row-inner <?php echo $row->cls; ?> clearfix" >
	        <?php foreach( $row->cols as $col ) { ?>
	            <div class="col-lg-<?php echo $col->lgcol; ?> col-md-<?php echo $col->mdcol;?> col-sm-<?php echo $col->smcol;?> col-xs-<?php echo $col->xscol;?>"><div class="col-inner">
	                <?php foreach ( $col->widgets as $widget ){ ?>
	                	<?php if( isset($widget->image) ) { ?>
	                    <div class="banner-wrapper">
	                    	<?php if($widget->link ){ ?>
                        	<a href="<?php echo $widget->link; ?>"><img src="<?php echo $url.'/image/'.$widget->image; ?>" class="img-responsive" alt=""></a>
                        	<?php }else { ?>
                        	<img src="<?php echo $url.'/image/'.$widget->image; ?>" class="img-responsive" alt="">
                        	<?php } ?>
                   		</div>
                   		<?php } ?>
	                <?php } ?>
	                <?php if (isset($col->rows)&&$col->rows) { ?>
	                    <?php   
	                        $rows = $col->rows;
	                 
	                        $level = $level + 1;
	                        require(  $template ); 
	      
	                    ?>
	                <?php } ?>
	            </div></div>
	        <?php } ?>
	    </div></div>
	    <?php if ($row->level==1 ) { ?>
	            </div>  </div>
	        </div>
	    <?php } ?>
<?php } ?> 


<?php if( !isset($rows) ){ ?>
</div>
<?php } ?>	
