<?php

use com\cminds\registration\model\ProfileField;

?>

<h3>CM Registration Profile Fields</h3>
<table class="form-table"><tbody>
	<?php foreach ($fields as $field): /* @var $field ProfileField */ ?>
		<?php if ($field->getRegistrationFormRole()) continue; ?>
		<tr class="cmreg-profile-field">
				<th valign="top"><?php echo $field->getLabel(); ?></th>
				<td><?php
					$value = $field->getValueForUser($userId);
					if (is_array($value)) $value = implode(', ', $value);
					echo esc_html($value);
				?></td>
			</tr>
	<?php endforeach; ?>
</tbody>
</table>