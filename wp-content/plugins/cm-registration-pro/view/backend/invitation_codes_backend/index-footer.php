<?php

?>
<div class="alignleft actions cmreg-download-csv"><a href="<?php echo esc_attr($downloadCSVUrl); ?>" class="button">Download CSV</a></div>
<script>
jQuery(function($) {
	$(".cmreg-download-csv").insertBefore($(".tablenav.top .tablenav-pages"));
});
</script>

<div class="alignleft actions cmreg-download-invited-users-csv"><a href="<?php echo esc_attr($downloadInvitedUsersCSV); ?>" class="button">Export invited users</a></div>
<script>
jQuery(function($) {
	$(".cmreg-download-invited-users-csv").insertBefore($(".tablenav.top .tablenav-pages"));
});
</script>