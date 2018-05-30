<?php

namespace com\cminds\registration\controller;

use com\cminds\registration\model\Labels;
use com\cminds\registration\App;
use com\cminds\registration\model\Settings;
use com\cminds\registration\model\LoginAttempt;
use com\cminds\registration\helper\Recaptcha;


class LoginAttemptsController extends Controller {
	
	static $actions = array(
		'login_form' => array('args' => 1, 'priority' => 10000),
// 		'register_post' => array('args' => 3),
	);
	static $filters = array(
		'authenticate' => array('args' => 3, 'priority' => PHP_INT_MAX),
		'cmreg_captcha_enabled',
		'cmreg_login_ajax_response',
	);
	
	
	
	static function login_form($place = null) {
		
		$action = Settings::getOption(Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_ACTION);
		if ($action != Settings::LIMIT_ATTEMPTS_ACTION_DISABLED) {
			if (LoginAttempt::isLimitExceeded()) {
// 				echo Labels::getLocalized('login_error_limit_attempts_exceeded');
			}
			switch ($action) {
				case Settings::LIMIT_ATTEMPTS_ACTION_SHOW_CAPTCHA:
// 					CaptchaController::login_form($place);
					break;
				case Settings::LIMIT_ATTEMPTS_ACTION_WAIT:
// 					echo Labels::getLocalized('login_error_limit_attempts_wait');
					break;
			}
		}
		
	}
	
	
	static function authenticate($user, $username, $password) {
	
		if (!App::isLicenseOk()) return $user;
		
		$action = Settings::getOption(Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_ACTION);
		
		if ($_SERVER['REQUEST_METHOD'] === 'POST' AND $action != Settings::LIMIT_ATTEMPTS_ACTION_DISABLED) {
			
			if (is_wp_error($user)) {
				
				// Log invalid login attempt
				LoginAttempt::create();
				
				// Show message about attempts left
				$count = LoginAttempt::getCurrentAttemptsNumber();
				$max = Settings::getOption(Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_NUMBER);
				$left = $max - $count;
				if ($left > 0) {
					LoginController::authenticateAddError('cmreg_login_limit_attempts_msg', sprintf(Labels::getLocalized('login_limit_attempts_msg'), $left), $user);
				}
				
			} else {
				// Login is valid
				
			}
			
			if (LoginAttempt::isLimitExceeded()) {
				// Limit has been exceeded
				if ($action == Settings::LIMIT_ATTEMPTS_ACTION_WAIT) {
					LoginController::authenticateAddError('cmreg_login_error_limit_attempts_exceeded', Labels::getLocalized('login_error_limit_attempts_exceeded'), $user);
					
					$waitMinutes = LoginAttempt::whenTryAgainMinutes();
					LoginController::authenticateAddError('cmreg_login_error_limit_attempts_wait',
							sprintf(Labels::getLocalized('login_error_limit_attempts_wait'), $waitMinutes), $user);
				}
				else if ($action == Settings::LIMIT_ATTEMPTS_ACTION_SHOW_CAPTCHA) {
					$code = filter_input(INPUT_POST, Recaptcha::POST_RESPONSE);
					if (empty($code)) {
						// Show message that user now have to enter the captcha
						LoginController::authenticateAddError('cmreg_login_error_limit_attempts_captcha', Labels::getLocalized('login_error_limit_attempts_captcha'), $user);
					}
				}
			}
			
		}
		
		return $user;
		
	}
	
	
	
	static function cmreg_captcha_enabled($enabled) {
		$action = Settings::getOption(Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_ACTION);
		if ($action == Settings::LIMIT_ATTEMPTS_ACTION_SHOW_CAPTCHA AND LoginAttempt::isLimitExceeded()) {
			$enabled = true;
		}
		return $enabled;
	}
	
	
	static function cmreg_login_ajax_response($response) {
		$action = Settings::getOption(Settings::OPTION_LOGIN_LIMIT_ATTEMPTS_ACTION);
		if ($action == Settings::LIMIT_ATTEMPTS_ACTION_SHOW_CAPTCHA AND LoginAttempt::isLimitExceeded()) {
			$response['showCaptcha'] = CaptchaController::getCaptchaBlock();
		}
		return $response;
	}
	
	
}