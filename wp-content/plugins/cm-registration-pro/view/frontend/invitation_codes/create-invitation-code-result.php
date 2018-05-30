<?php

use com\cminds\registration\model\InvitationCode;
use com\cminds\registration\model\Labels;

?>
<div class="cmreg-create-invitation-code-result">
	<p>Invitation code:</p>
	<div class="cmreg-invitation-code-string"><?php echo $codeString; ?></div>
	<?php if ($sentByEmail): ?>
		<p>The invitation link has been send to the specified email address.</p>
	<?php endif; ?>
</div>