<?php

use com\cminds\registration\model\Labels;
use com\cminds\registration\model\InvitationCode;

/**
 * @var $code InvitationCode
 */

?>
<div class="cmreg-registration-field cmreg-invitation-code">
	<span class="cmreg-field-label"><?php echo Labels::getLocalized('user_profile_invit_code'); ?></span>
	<?php if ($code): ?>
		<input type="text" readonly value="<?php echo esc_attr($code->getCodeString()); ?>" />
		<span class="cmreg-field-description"><?php echo esc_html($code->getTitle()); ?></span>
	<?php else: ?>
		<p><?php echo Labels::getLocalized('user_profile_no_invit_code'); ?>
	<?php endif; ?>
</div>