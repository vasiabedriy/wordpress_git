<?php

namespace com\cminds\registration\controller;

use com\cminds\registration\model\Labels;

use com\cminds\registration\model\User;

use com\cminds\registration\model\Settings;

use com\cminds\registration\App;
use com\cminds\registration\model\ProfileField;

class ProfileFieldController extends Controller {
	
	const POST_FIELDS_ARR = 'cmreg_extra_field';
	const FILTER_PROCESSING_ENABLED = 'cmreg_profile_fields_processing_enabled';
	
	
	static $actions = array(
		'register_form' => array('args' => 1, 'priority' => 100),
		'cmreg_register_form' => array('args' => 2, 'method' => 'register_form', 'priority' => 100),
		'register_post' => array('args' => 3),
		'age_verification' => array('name' => 'register_post', 'method' => 'age_verification', 'args' => 3),
		'register_new_user' => array('args' => 1),
		'cmreg_profile_edit_form' => array('args' => 1),
		'cmreg_user_profile_edit_save' => array('args' => 1),
	);

	/**
	 * Display extra fields on the registration form.
	 *
	 * @param string $place
	 */
	static function register_form($place = null, $atts = array()) {
		if (!App::isLicenseOk()) return;
		
		if (!isset($atts['role'])) $atts['role'] = null;
		
// 		$fields = ProfileField::getJSData();
// 		echo '<div id="cmreg-register-profile-fields-wrap"></div>';
// 		echo '<script>
// 		window.$ = jQuery;
// 		jQuery(function($) {
// 			$("#cmreg-register-profile-fields-wrap").formRender({
// 			    dataType: "json",
// 			    formData: '. json_encode(json_encode($fields)) .'
// 			  });
// 			});
// 		</script>';

		// Extra fields
// 		$fields = Settings::getOption(Settings::OPTION_REGISTER_EXTRA_FIELDS);
		$fields = ProfileField::getAll();
		if (is_array($fields)) foreach ($fields as $i => $field) {
			/** @var $field ProfileField */
			if ($field->canShow(ProfileField::CONTEXT_REGISTRATION_FORM, $atts['role'])) {
				
				echo static::loadFrontendView('registration', compact('field', 'atts'));
				
			}
		}
		
		// ToS
		$toc = Settings::getOption(Settings::OPTION_TERMS_OF_SERVICE_CHECKBOX_TEXT);
		if (strlen(strip_tags($toc)) > 0) {
			echo static::loadFrontendView('toc', compact('toc'));
		}
		
	}
	
	
	/**
	 * Check if processing of the profile fields (validation + saving data) is enabled
	 * @return boolean
	 */
	static function isProcessingEnabled() {
		return apply_filters(static::FILTER_PROCESSING_ENABLED, true);
	}
	
	
	/**
	 * Validate required fields.
	 * 
	 * @param string $sanitized_user_login
	 * @param string $user_email
	 * @param \WP_Error $errors
	 */
	static function register_post($sanitized_user_login, $user_email, \WP_Error $errors) {
		
		if (!App::isLicenseOk()) return;
		if (!static::isProcessingEnabled()) return;
		
		$fields = ProfileField::getAll();
		$role = filter_input(INPUT_POST, 'role');
		if (is_array($fields)) foreach ($fields as $i => $field) {
			
			/* @var $field ProfileField */
			
			$metaName = $field->getUserMetaKey();
			
			// Don't validate fields for other roles or context
// 			$fieldRoles = $field->getRoles();
// 			if (!empty($fieldRoles) AND is_array($fieldRoles) AND !in_array($role, $fieldRoles)) continue;
			if (!$field->canShow(ProfileField::CONTEXT_REGISTRATION_FORM, $role)) continue;
			
			// Get the value
			if (!empty($_POST[static::POST_FIELDS_ARR][$metaName])) {
				$value = $_POST[static::POST_FIELDS_ARR][$metaName];
			} else {
				$value = '';
			}
			
			// Check if it's required
			if (!$field->validateValue($value)) {
				$errors->add('empty_extra_field', sprintf(Labels::getLocalized('register_empty_extra_field_error'), $field->getLabel()));
			}

		}
	}
	
	
	/**
	 * Save fields
	 * 
	 * @param int $userId
	 */
	static function register_new_user($userId) {
		
		if (!App::isLicenseOk()) return;
		if (!static::isProcessingEnabled()) return;
		
		// Save profile fields
		$fields = ProfileField::getAll();
		// 		$fields = Settings::getOption(Settings::OPTION_REGISTER_EXTRA_FIELDS);
		if (is_array($fields)) foreach ($fields as $i => $field) {
			
			/* @var $field ProfileField */
			
			// Don't save if this is a registraiton field
			if ($field->getRegistrationFormRole()) continue;
			
			$metaName = $field->getUserMetaKey();
			if (isset($_POST[static::POST_FIELDS_ARR]) AND isset($_POST[static::POST_FIELDS_ARR][$metaName])) {
				$value = $_POST[static::POST_FIELDS_ARR][$metaName];
				// 				if (!is_scalar($value)) $value = '';
				$maxlen = $field->getMaxLength();
				if (!empty($maxlen)) {
					$value = is_scalar($value) ? substr($value, 0, $maxlen) : '';
				}
				
				$field->setValueForUser($userId, $value);
				// 				User::setExtraField($userId, $metaName, $value);
				
			}
			
		}
		
	}
	
	
	/**
	 * Age verification.
	 *
	 * @param unknown $sanitized_user_login
	 * @param unknown $user_email
	 * @param \WP_Error $errors
	 */
	static function age_verification($sanitized_user_login, $user_email, \WP_Error $errors) {
		
		if (!App::isLicenseOk()) return;
		if (!static::isProcessingEnabled()) return;
		
		$minAge = Settings::getOption(Settings::OPTION_REGISTER_MINIMUM_AGE);
		if (!empty($minAge)) {
			$fields = ProfileField::getAll();
			$metaKey = Settings::getOption(Settings::OPTION_REGISTER_BIRTH_DATE_FIELD_META_KEY);
			foreach ($fields as $field) {
				if ($field->getUserMetaKey() == $metaKey) {
					
					// Get value
					if (!empty($_POST[static::POST_FIELDS_ARR][$metaKey])) {
						$birthTime = strtotime($_POST[static::POST_FIELDS_ARR][$metaKey]);
					} else {
						$birthTime = time();
					}
					
					// Verify
					if ($birthTime > strtotime("midnight $minAge years ago")) {
						$errors->add('age_verification_error', sprintf(Labels::getLocalized('register_age_verification_error'), $field->getLabel()));
					}
					
				}
			}
		}
		
	}
	
	
	static function cmreg_profile_edit_form($userId) {
		$fields = ProfileField::getAll();
		if (is_array($fields)) foreach ($fields as $i => $field) {
			if ($field->canShow(ProfileField::CONTEXT_USER_PROFILE, User::getUserRoles($userId))) {
				echo static::loadFrontendView('profile-edit-form-field', compact('field', 'atts', 'userId'));
			}
		}
	}
	
	
	static function cmreg_user_profile_edit_save($userId) {
		$extraFieldsValues = (isset($_POST[static::POST_FIELDS_ARR]) ? $_POST[static::POST_FIELDS_ARR] : array());
		$fields = ProfileField::getAll();
		if (is_array($fields)) {
			foreach ($fields as $i => &$field) {
				if ($field->canShow(ProfileField::CONTEXT_USER_PROFILE, User::getUserROles($userId))) {
					/* @var $field ProfileField */
					$metaName = $field->getUserMetaKey();
					$value = (isset($extraFieldsValues[$metaName]) ? $extraFieldsValues[$metaName] : '');
					if ($field->validateValue($value)) {
						$field->setValueForUser($userId, $value);
					}
				}
			}
		}
	}
	
		
}
