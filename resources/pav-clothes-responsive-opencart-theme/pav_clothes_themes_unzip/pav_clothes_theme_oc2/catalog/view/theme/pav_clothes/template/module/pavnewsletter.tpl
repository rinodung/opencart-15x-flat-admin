<div class="<?php echo $prefix; ?> box newsletter-submit" id="newsletter_<?php echo $position.$module;?>">
	<span class="box-heading"><?php echo $objlang->get("entry_newsletter");?></span>
	<div class="description"><?php echo html_entity_decode( $description );?></div>
	<div class="block_content">		
			<form id="formNewLestter" method="post" action="<?php echo $action; ?>">
				<p>
					<input type="text" class="inputNew inputbox" <?php if(!isset($customer_email)): ?> onblur="javascript:if(this.value=='')this.value='<?php echo $objlang->get("default_input_text");?>';" onfocus="javascript:if(this.value=='<?php echo $objlang->get("default_input_text");?>')this.value='';"<?php endif; ?> value="<?php echo isset($customer_email)?$customer_email:$objlang->get("default_input_text");?>" size="18" name="email">
						<input type="submit" name="submitNewsletter" class="button button_mini" value="<?php echo $objlang->get("button_ok");?>"/>
						<input type="hidden" value="1" name="action"/>
						<span class="newlestter-message"></span>
				</p>
				<div class="valid"></div>
			</form>
	</div>


</div>

<script type="text/javascript"><!--

	$( document ).ready(function() {
		var id = 'newsletter_<?php echo $position.$module;?>';
		$('#'+id+' .box-heading').bind('click', function(){
			$('#'+id).toggleClass('active');
		});

		$('#formNewLestter').on('submit', function() {
			var email = $('.inputNew').val();
			$(".success_inline, .warning_inline, .error").remove();
			if(!isValidEmailAddress(email)) {				
			$('.valid').html("<div class=\"error alert alert-danger\"><?php echo $objlang->get('valid_email'); ?><button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div></div>");
			$('.inputNew').focus();
			return false;
		}
		var url = "<?php echo $action; ?>";
		$.ajax({
			type: "post",
			url: url,
			data: $("#formNewLestter").serialize(),
			dataType: 'json',
			success: function(json)
			{
				$(".success_inline, .warning_inline, .error").remove();
				if (json['error']) {
					$('.valid').html("<div class=\"warning_inline alert alert-danger\">"+json['error']+"<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div>");
				}
				if (json['success']) {
					$('.valid').html("<div class=\"success_inline alert alert-success\">"+json['success']+"<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div>");
				}
			}
		});
		return false;
	});
});

function isValidEmailAddress(emailAddress) {
	var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
	return pattern.test(emailAddress);
}
--></script>