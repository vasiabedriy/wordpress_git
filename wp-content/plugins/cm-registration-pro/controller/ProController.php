<?php

namespace com\cminds\registration\controller;

use com\cminds\registration\model\User;

use com\cminds\registration\model\S2MembersLevels;

use com\cminds\registration\App;
use com\cminds\registration\model\Settings;
use com\cminds\registration\model\Labels;

class ProController extends Controller {
	
	static $filters = array(
		'cmreg_options_config' => array('priority' => 50),
		'cmreg_settings_pages' => array('priority' => 2000),
	);
	protected static $actions = array(
		'plugins_loaded',
		array('name' => 'plugins_loaded', 'method' => 'session_keeper'),
		'wp_enqueue_scripts' => array('method' => 'enqueueLogoutScript'),
		'cmreg_labels_init',
	);
	
	
	
	static function plugins_loaded() {
		if (App::TESTING) {
			if (!defined(S2MembersLevels::MEMBERSHIP_LEVELS)) {
				define(S2MembersLevels::MEMBERSHIP_LEVELS, 4);
			}
			for ($n=1; $n<=constant(S2MembersLevels::MEMBERSHIP_LEVELS); $n++) {
				$const = sprintf(S2MembersLevels::MEMBER_LEVEL_LABEL, $n);
				if (!defined($const)) {
					define($const, 'Membership Level #'. $n);
				}
			}
		}
	}
	
	
	static function cmreg_labels_init() {
		Labels::loadLabelFile(App::path('asset/labels/pro.tsv'));
	}
	
	
	static function session_keeper() {
		if (is_user_logged_in() AND $timeout = (int)Settings::getOption(Settings::OPTION_LOGOUT_INACTIVITY_TIME) AND $timeout > 0) {
			if (!session_id()) session_start();
			$lastActivity = User::getLastActivity();
// 			var_dump($timeout);var_dump($lastActivity);var_dump(time() - $lastActivity);exit;
			if ($lastActivity AND (time() - $lastActivity) > $timeout*60) {
				User::logout();
			}
			if (!defined('DOING_AJAX') OR !DOING_AJAX) {
				User::updateLastActivity();
			}
		}
		
	}
	
	
	static function enqueueLogoutScript() {
		if (is_user_logged_in() AND Settings::getOption(Settings::OPTION_RELOAD_AFTER_LOGOUT)) {
			wp_enqueue_script('cmreg-logout');
		}
	}
	
	
	
	static function cmreg_options_config($config) {
		return array_merge($config, array(
			Settings::OPTION_REGISTER_DEFAULT_ROLE => array(
				'type' => Settings::TYPE_SELECT,
				'default' => 'subscriber',
				'options' => Settings::getRolesOptions(),
				'category' => 'register',
				'subcategory' => 'register',
				'title' => 'Default role',
				'desc' => 'User\'s role granted after the registration.',
			),
			Settings::OPTION_REGISTER_BIRTH_DATE_FIELD_META_KEY => array(
				'type' => Settings::TYPE_STRING,
				'default' => 'cmreg_birth_date',
				'category' => 'register',
				'subcategory' => 'age_verification',
				'title' => 'Meta key of the birth date field',
				'desc' => 'Choose the meta key of the birth date profile field for the age verification.',
			),
			Settings::OPTION_REGISTER_MINIMUM_AGE => array(
				'type' => Settings::TYPE_INT,
				'category' => 'register',
				'subcategory' => 'age_verification',
				'title' => 'Minimum allowed age',
				'desc' => 'Choose how old a user have to be to pass the registration. You can setup a profile field '
						. '<kbd>date</kbd> with a user meta key specified in settings above and the plugin will automatically validate it. Set 0 to disable.',
			),
			Settings::OPTION_S2MEMBERS_ENABLE => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'register',
				'subcategory' => 's2member',
				'title' => 'Enable S2Members integration',
				'desc' => 'If enabled, the invitations code can be related with the S2Members Pro membership level and new users '
				. 'will be assigned to the chosen level.',
			),
			Settings::OPTION_REGISTER_S2MEMBER_DEFAULT_LEVEL => array(
				'type' => Settings::TYPE_SELECT,
				'options' => array(0 => '-- none --') + S2MembersLevels::getAll(),
				'default' => 0,
				'category' => 'register',
				'subcategory' => 's2member',
				'title' => 'S2Member Pro default level',
				'desc' => 'Assign user which is not using the invitation code to the chosen S2Members Pro membership level.',
			),
			Settings::OPTION_REGISTER_WELCOME_EMAIL_SUBJECT => array(
				'type' => Settings::TYPE_STRING,
				'category' => 'email',
				'subcategory' => 'welcome',
				'default' => 'Welcome to [blogname]',
				'title' => 'Welcome email subject',
				'desc' => 'You can use the following shortcodes:' . str_replace(' ', '<br />',
					' [blogname] [siteurl] [userdisplayname] [userlogin] [useremail] [linkurl]'),
			),
			Settings::OPTION_REGISTER_WELCOME_EMAIL_BODY => array(
				'type' => Settings::TYPE_RICH_TEXT,
				'category' => 'email',
				'subcategory' => 'welcome',
				'default' => 'Hi'. PHP_EOL .'You have been registered on the [blogname] ([siteurl]) and your account is already active.'
					. PHP_EOL .'Please visit the following website to read the additional information:'. PHP_EOL .'[linkurl]',
				'title' => 'Welcome email body template',
				'desc' => 'You can use the following shortcodes:' . str_replace(' ', '<br />',
					' [blogname] [siteurl] [userdisplayname] [userlogin] [useremail] [linkurl]'),
			),
			Settings::OPTION_OVERLAY_OPACITY => array(
				'type' => Settings::TYPE_PERCENT,
				'category' => 'general',
				'subcategory' => 'appearance',
				'default' => 80,
				'title' => 'Overlay background opacity',
				'desc' => 'Enter the opacity of the login dialog box overlay background.',
			),
			Settings::OPTION_OVERLAY_PRELOAD => array(
				'type' => Settings::TYPE_BOOL,
				'category' => 'general',
				'subcategory' => 'appearance',
				'default' => 1,
				'title' => 'Preload login form overlay',
				'desc' => 'If enabled the login form will be preloaded on the page load. Disable this option if experiencing performance issues. '
						. 'However disabling this will cause that the login form will show up after a delay.',
			),
			Settings::OPTION_LOGOUT_INACTIVITY_TIME => array(
				'type' => Settings::TYPE_INT,
				'default' => 0,
				'category' => 'general',
				'subcategory' => 'logout',
				'title' => 'Logout after inactivity time [min]',
				'desc' => 'User will be logged-out after this time of inactivity. Set 0 to disable.',
			),
			Settings::OPTION_RELOAD_AFTER_LOGOUT => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'general',
				'subcategory' => 'logout',
				'title' => 'Reload browser after logout',
				'desc' => 'If enabled, the script will be checking in background if user is still logged-in and reload the browser if not.',
			),
			Settings::OPTION_TERMS_OF_SERVICE_CHECKBOX_TEXT => array(
				'type' => Settings::TYPE_RICH_TEXT,
				'category' => 'register',
				'subcategory' => 'register',
				'title' => 'Terms of service acceptance text',
				'desc' => 'Enter text which will be displayed next to the checkbox that user has to check to accept the terms of service. '
							. 'Leave empty if you don\'t want to display the checkbox.',
			),
// 			Settings::OPTION_REGISTER_EXTRA_FIELDS => array(
// 				'type' => Settings::TYPE_EXTRA_FIELDS,
// 				'category' => 'fields',
// 				'subcategory' => 'fields',
// 				'title' => 'Extra user-meta fields',
// 				'desc' => 'Add extra user-meta fields to the registration form.<br /><br />'
// 					. 'To download all users\' extra fields in the CSV format use the following button:<br />'
// 					. '<a href="'. esc_attr(ExtraFieldsController::getExportCSVUrl()). '" class="button">Download users CSV</a>',
// 			),
// 			Settings::OPTION_EMAIL_USE_HTML => array(
// 				'type' => Settings::TYPE_BOOL,
// 				'default' => 0,
// 				'category' => 'email',
// 				'subcategory' => 'general',
// 				'title' => 'Use HTML content-type emails',
// 				'desc' => 'If enabled, the entire email content will be treated as HTML (eg. new lines won\'t work and you need to use <br> tags).',
// 			),
			
			// Social Login
			Settings::OPTION_SOCIAL_LOGIN_ENABLE => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Enable social login',
				'desc' => 'General option to enable the social login features. User will be able to login using his social service account and will be logged-in '
						. 'to a WP account with the same email address.',
			),
			Settings::OPTION_LOGIN_SHOW_SOCIAL_LOGIN_BUTTONS => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Add social login buttons to the login form',
				'desc' => 'If enabled the social login buttons will be added to the login form by default. '
						. 'If disabled you can still use the social login by using the [cmreg-social-login] shortcode.',
			),
			Settings::OPTION_SOCIAL_LOGIN_ENABLE_ALLOW_REGISTRATION => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Enable registration using social login',
				'desc' => 'If enabled a Wordpress account will be automatically created for a new user that used the social login button '
						. '(when plugin won\'t find any associated account). If disabled then user won\'t be logged if there\'s no WP account '
						. 'with the same email address.',
			),
			Settings::OPTION_REGISTER_SHOW_SOCIAL_LOGIN_BUTTONS => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Add social login buttons to the registration form',
				'desc' => 'If enabled the social login buttons will be added to the registration form by default. '
					. 'If disabled you can still use the social login by using the [cmreg-social-login] shortcode.',
			),
			Settings::OPTION_SOCIAL_LOGIN_ASK_INVITATION_CODE => array(
				'type' => Settings::TYPE_BOOL,
				'default' => 0,
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Ask for invitation code if registering with social login',
				'desc' => 'If enabled then after user will try to register with the social login feature he will be asked to enter '
				. 'an invitation code before his account will be created.',
			),
			Settings::OPTION_SOCIAL_LOGIN_FACEBOOK_APP_ID => array(
				'type' => Settings::TYPE_STRING,
				'default' => '',
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Facebook App ID',
				'desc' => 'Create a <a href="http://developers.facebook.com" target="_blank">Facebook Login App</a> and enter the following URL '
						. 'into the "Valid OAuth redirect URIs":<br><kbd>' . SocialLoginController::getFacebookValidCallbackUrl() .'</kbd><br><br>'
						. 'Then go to App Review and make your App public.',
			),
			Settings::OPTION_SOCIAL_LOGIN_FACEBOOK_APP_SECRET => array(
				'type' => Settings::TYPE_STRING,
				'default' => '',
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Facebook App Secret',
				'desc' => '',
			),
			Settings::OPTION_SOCIAL_LOGIN_GOOGLE_APP_ID => array(
				'type' => Settings::TYPE_STRING,
				'default' => '',
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Google+ App ID',
				'desc' => 'Create a <a href="https://console.developers.google.com/" target="_blank">Google project</a> and enter the following URL '
				. 'into the "Authorized redirect URIs":<br><kbd>' . SocialLoginController::getGoogleValidCallbackUrl() .'</kbd><br><br>'
				. 'More details you can read in this documentation: <a href="http://creativeminds.helpscoutdocs.com/article/990-cm-answers-cma-social-login-google">'
				.'http://creativeminds.helpscoutdocs.com/article/990-cm-answers-cma-social-login-google</a>',
			),
			Settings::OPTION_SOCIAL_LOGIN_GOOGLE_APP_SECRET => array(
				'type' => Settings::TYPE_STRING,
				'default' => '',
				'category' => 'login',
				'subcategory' => 'social-login',
				'title' => 'Google+ App Secret',
				'desc' => '',
			),
			Settings::OPTION_REGISTER_IP_ALLOW => array(
				'type' => Settings::TYPE_TEXTAREA,
				'default' => '',
				'category' => 'register',
				'subcategory' => 'ip',
				'title' => 'Allow registration only from IP',
				'desc' => 'Separate IP addresses by new lines.<br>Examples:<br><kbd>80.43.15.145</kbd><br><kbd>80.43.15.x</kbd><br><kbd>80.43.x.x</kbd>'
					. '<br><br>Your IP address is: <kbd>'. $_SERVER['REMOTE_ADDR'] .'</kbd>',
			),
			Settings::OPTION_REGISTER_IP_DENY => array(
				'type' => Settings::TYPE_TEXTAREA,
				'default' => '',
				'category' => 'register',
				'subcategory' => 'ip',
				'title' => 'Deny registration from IP',
				'desc' => 'Separate IP addresses by new lines.<br>Examples:<br><kbd>80.43.15.145</kbd><br><kbd>80.43.15.x</kbd><br><kbd>80.43.x.x</kbd>'
					. '<br><br>Your IP address is: <kbd>'. $_SERVER['REMOTE_ADDR'] .'</kbd>',
			),
			Settings::OPTION_LOGIN_IP_ALLOW => array(
				'type' => Settings::TYPE_TEXTAREA,
				'default' => '',
				'category' => 'login',
				'subcategory' => 'ip',
				'title' => 'Allow login only from IP',
				'desc' => 'Separate IP addresses by new lines.<br>Examples:<br><kbd>80.43.15.145</kbd><br><kbd>80.43.15.x</kbd><br><kbd>80.43.x.x</kbd>'
					. '<br><br>Your IP address is: <kbd>'. $_SERVER['REMOTE_ADDR'] .'</kbd>',
			),
			Settings::OPTION_LOGIN_IP_DENY => array(
				'type' => Settings::TYPE_TEXTAREA,
				'default' => '',
				'category' => 'login',
				'subcategory' => 'ip',
				'title' => 'Deny login from IP',
				'desc' => 'Separate IP addresses by new lines.<br>Examples:<br><kbd>80.43.15.145</kbd><br><kbd>80.43.15.x</kbd><br><kbd>80.43.x.x</kbd>'
					. '<br><br>Your IP address is: <kbd>'. $_SERVER['REMOTE_ADDR'] .'</kbd>',
			),
			
			Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_ACTION => array(
				'type' => Settings::TYPE_RADIO,
				'default' => Settings::LIMIT_ATTEMPTS_ACTION_DISABLED,
				'options' => array(
					Settings::LIMIT_ATTEMPTS_ACTION_DISABLED => 'Disabled (do nothing)',
					Settings::LIMIT_ATTEMPTS_ACTION_SHOW_CAPTCHA => 'Show captcha',
					Settings::LIMIT_ATTEMPTS_ACTION_WAIT => 'Let user wait',
				),
				'category' => 'login',
				'subcategory' => 'limit',
				'title' => 'Action after user exceeded the login attempts limit',
			),
			Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_NUMBER => array(
				'type' => Settings::TYPE_INT,
				'default' => 10,
				'category' => 'login',
				'subcategory' => 'limit',
				'title' => 'Number of attempts',
			),
			Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_INTERVAL_MINUTES => array(
				'type' => Settings::TYPE_INT,
				'default' => 10,
				'category' => 'login',
				'subcategory' => 'limit',
				'title' => 'Interval [minutes]',
				'desc' => 'Check the attempts number in the specified interval.',
			),
// 			Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_SEND_USER_EMAIL => array(
// 				'type' => Settings::TYPE_BOOL,
// 				'default' => 1,
// 				'category' => 'login',
// 				'subcategory' => 'limit',
// 				'title' => 'Send email to user',
// 				'desc' => 'Check the attempts number in the specified number of last minutes.',
// 			),

			Settings::OPTION_INVITE_FRIEND_EMAIL_SUBJECT => array(
				'type' => Settings::TYPE_STRING,
				'category' => 'invitations',
				'subcategory' => 'email',
				'default' => '[userdisplayname] invited you to [blogname]',
				'title' => 'Friends invitation email subject',
				'desc' => 'You can use the following shortcodes:' . str_replace(' ', '<br />',
					' [blogname] [siteurl] [userdisplayname] [userlogin] [useremail]'),
			),
			Settings::OPTION_INVITE_FRIEND_EMAIL_BODY => array(
				'type' => Settings::TYPE_RICH_TEXT,
				'category' => 'invitations',
				'subcategory' => 'email',
				'default' => 'Hello'. PHP_EOL .'[userdisplayname] just invited you to <a href="[siteurl]">[blogname]</a> at <a href="[siteurl]">[siteurl]</a><br><br>'
					.'In order to register your account please click on the following invitation link:<br><a href="[linkurl]">[linkurl]</a>',
				'title' => 'Friends invitation email template',
				'desc' => 'You can use the following shortcodes:' . str_replace(' ', '<br />',
					' [blogname] [siteurl] [userdisplayname] [userlogin] [useremail] [linkurl]'),
			),
			Settings::OPTION_INVITE_FRIEND_REGISTRATION_PAGE_URL => array(
				'type' => Settings::TYPE_STRING,
				'category' => 'invitations',
				'subcategory' => 'invitations',
				'default' => site_url(),
				'title' => 'Registration page URL',
				'desc' => 'Specify what page should be shown when the user clicks on the invitation link. Usually this should be a page with the registration shortcode.',
			),
			Settings::OPTION_INVITE_FRIEND_LIMIT_PER_USER => array(
				'type' => Settings::TYPE_INT,
				'category' => 'invitations',
				'subcategory' => 'invitations',
				'default' => 0,
				'title' => 'Limit allowed invitations per user',
				'desc' => 'Set the invitations limit per user. This won\'t apply to the users with the manage_options capability.',
			),
			Settings::OPTION_DASHBOARD_USERS_COLUMN_INVIT_CODE_ENABLE => array(
				'type' => Settings::TYPE_BOOL,
				'category' => 'invitations',
				'subcategory' => 'dashboard',
				'default' => 1,
				'title' => 'Show invitation code column for users',
				'desc' => 'If enabled then the "Invitation Code" column will be added to the Users page in the wp-admin dashboard.',
			),
			Settings::OPTION_USER_PROFILE_INVIT_CODE_SHOW => array(
				'type' => Settings::TYPE_BOOL,
				'category' => 'invitations',
				'subcategory' => 'edit_profile',
				'default' => 0,
				'title' => 'Show invitation code in Edit Profile shortcode',
				'desc' => 'If enabled then the Invitation Code will be added to the Edit Profile shortcode.',
			),
			Settings::OPTION_ACCOUNT_DELETED_USER_EMAIL_ENABLE => array(
				'type' => Settings::TYPE_BOOL,
				'category' => 'email',
				'subcategory' => 'account_deleted',
				'title' => 'Enable sending email to user after deleted his account',
				'desc' => 'If admin delete an account, the email with notification will be send to this user.'
			),
			Settings::OPTION_ACCOUNT_DELETED_USER_EMAIL_SUBJECT => array(
				'type' => Settings::TYPE_STRING,
				'category' => 'email',
				'subcategory' => 'account_deleted',
				'default' => '[[blogname]] Your account has been deleted',
				'title' => 'Deleted account notification email subject',
				'desc' => 'You can use the following shortcodes:' . str_replace(' ', '<br />',
						' [blogname] [siteurl] [userdisplayname] [userlogin] [useremail]'),
			),
			Settings::OPTION_ACCOUNT_DELETED_USER_EMAIL_BODY => array(
				'type' => Settings::TYPE_RICH_TEXT,
				'category' => 'email',
				'subcategory' => 'account_deleted',
				'default' => 'Hello'. PHP_EOL .'your account [userlogin] has been deleted from <a href="[siteurl]">[blogname]</a> at <a href="[siteurl]">[siteurl]</a><br><br>',
				'title' => 'Deleted account notification email template',
				'desc' => 'You can use the following shortcodes:' . str_replace(' ', '<br />',
						' [blogname] [siteurl] [userdisplayname] [userlogin] [useremail]'),
			),
			Settings::OPTION_LOGIN_REDIRECTION_PER_ROLE => array(
				'type' => Settings::TYPE_CUSTOM,
				'category' => 'login',
				'subcategory' => 'redirect_role',
				'title' => 'Redirection per role',
				'desc' => 'Set a custom after-login redirection URL address per user role.',
				'content' => array(App::namespaced('controller\\SettingsController'), 'displayLoginRedirectionPerRoleOption'),
			),
// 			Settings::OPTION_GRAVITY_FORMS_REGISTRATION_HOOK_ENABLE => array(
// 				'type' => Settings::TYPE_BOOL,
// 				'default' => true,
// 				'category' => 'register',
// 				'subcategory' => 'gravity_forms',
// 				'title' => 'Enable integration with Gravity Forms Registration Add-on',
// 				'desc' => 'If enabled then admin can use the invitation code field inside the registration form created by Gravity Forms.
// 							<br>Please note you must have also an additional plugin <em>Gravity Forms Registration Add-on</em>
// 							apart from the <em>Gravity Form</em> base plugin.'
// 			),
			
		));
	}
	
	
	
	
	static function cmreg_settings_pages($categories) {
// 		$categories['dashboard'] = 'Dashboard';
		$categories['invitations'] = 'Invitations';
		$categories['email'] = 'Email';
		$categories['labels'] = 'Labels';
		return $categories;
	}
	
	
	
	
	

}
