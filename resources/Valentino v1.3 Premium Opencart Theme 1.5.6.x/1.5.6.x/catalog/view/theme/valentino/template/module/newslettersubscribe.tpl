<div class="box marLeft30" style="float: none; overflow: visible">
  <div class="newsletterWrap">
  <h2><?php echo $heading_title; ?></h2>
  <p>
  	<?php echo $text_newsletter; ?>
  </p>
  <div class="box-content"> 
  <?php 
   if($thickbox) { ?>
	<a href="#frm_subscribe" title="Newsletter Subscribe" class="fancybox_sub"> <?php echo($text_subscribe); ?> </a>
  <?php }  ?>
  <?php if($thickbox) { ?> <div id="frm_subscribe_hidden" style="display:none;"> <?php } ?>
  <div id="frm_subscribe">
	  <form name="subscribe" id="subscribe"   >	  
	    <!--inputs-->
	    <input type="text" placeholder="<?php echo $entry_email; ?> *" name="subscribe_email" id="subscribe_email">
	   	<input type="text" placeholder="<?php echo $entry_name; ?>" name="subscribe_name" id="subscribe_name">
	    <?php for($ns=1;$ns<=$option_fields;$ns++) {
	     $ns_var= "option_fields".$ns; ?>
	      <?php if($$ns_var!="") {
	         echo($$ns_var."&nbsp;<br/>");
	         echo('<input type="text" value="" name="option'.$ns.'" id="option'.$ns.'">');
	       }?>
	    <?php } ?>
	    <!--buttons-->
	    <a class="newsBtn" onclick="email_subscribe()"><?php echo $entry_button; ?></a>
	    <?php if($option_unsubscribe) { ?>
	    <a class="newsBtn" onclick="email_unsubscribe()"><?php echo $entry_unbutton; ?></a>
	    <?php } ?>    
	    <!--result-->
		<div id="subscribe_result"></div>
	  </form>
  </div>
  <?php if($thickbox) { ?> </div> <?php } ?>
  </div>

<script language="javascript">
	<?php 
  		if(!$thickbox) { 
	?>	
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php }else{ ?>
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php } ?>
   
$('.fancybox_sub').fancybox({
	width: 180,
	height: 180,
	autoDimensions: false
});
</script>
</div><!--/newsletterWrap-->
</div>
