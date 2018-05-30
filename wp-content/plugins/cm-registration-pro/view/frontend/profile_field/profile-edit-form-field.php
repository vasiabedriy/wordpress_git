<?php

use com\cminds\registration\model\Labels;
use com\cminds\registration\model\ProfileField;
use com\cminds\registration\helper\FormBuilderRender;

/* @var $field ProfileField */

$label = $field->getLabel();
if ($field->isRequired()) {
	$label .= ' ' . Labels::getLocalized('field_required');
}

?>

<div class="cmreg-registration-field">
	<?php echo FormBuilderRender::render('cmreg_extra_field', $field, $userId); ?>
</div>