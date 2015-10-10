<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/javascript/flat-admin/flat-admin.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var h = $(window).height();
		$(".right-side").css("min-height", h);
		$(window).resize(function() {
        var xh = $(window).height();
        $(".right-side").css("min-height", xh);
	});
});
</script>
</body>
</html>