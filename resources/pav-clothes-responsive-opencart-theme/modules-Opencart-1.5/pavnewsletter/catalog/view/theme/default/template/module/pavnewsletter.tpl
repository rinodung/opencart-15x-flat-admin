<div class="<?php echo $prefix; ?> box newsletter_block" id="newsletter_<?php echo $position.$module;?>">
	<p class="title_block"><?php echo $this->language->get("entry_newsletter");?></p>
	<?php if( trim($description) ) { ?>
	<div class="description"><?php echo html_entity_decode( $description );?></div>
	<?php } ?>
	<div class="block_content">
			<form id="formNewLestter" method="post" action="<?php echo $action; ?>">
			<p>
				<input type="text" class="inputNew" <?php if(!isset($customer_email)): ?> onblur="javascript:if(this.value=='')this.value='<?php echo $this->language->get("default_input_text");?>';" onfocus="javascript:if(this.value=='<?php echo $this->language->get("default_input_text");?>')this.value='';"<?php endif; ?> value="<?php echo isset($customer_email)?$customer_email:$this->language->get("default_input_text");?>" size="18" name="email">
				<input type="submit" name="submitNewsletter" class="button_mini" value="<?php echo $this->language->get("button_ok");?>">
				<input type="hidden" value="1" name="action">
			</p>
		</form>
	</div>
</div>
<script type="text/javascript">
$( document ).ready(function() {
	$('#formNewLestter').on('submit', function() {
		var sbt =  '<button aria-hidden="true" data-dismiss="alert" class="close" type="button"><i class="fa fa-times-circle"></i></button>';
		var email = $('.inputNew').val();
		$(".success_inline, .warning_inline, .error").remove();
		if(!isValidEmailAddress(email)) {
			$('.inputNew').before("<div class=\"error alert alert-danger\"><?php echo $this->language->get('valid_email'); ?>"+sbt+"</div>");
			$('.inputNew').focus();
			return false;
		}
		var url = "index.php?route=module/pavnewsletter/subscribe";
		$.ajax({
			type: "post",
			url: url,
			data: $("#formNewLestter").serialize(),
			dataType: 'json',
			success: function(json)
			{
				$(".success_inline, .warning_inline, .error").remove();
				if (json['error']) {
					$('.inputNew').before("<div class=\"warning_inline alert alert-danger\">"+json['error']+sbt+"</div>");
				}
				if (json['success']) {
					$('.inputNew').before("<div class=\"success_inline alert alert-success\">"+json['success']+sbt+"</div>");
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
</script>