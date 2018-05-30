=== Plugin Name ===
Name: CM Registration Pro
Contributors: CreativeMindsSolutions
Donate link: https://www.cminds.com/store/cm-registration-and-invitation-codes-plugin-for-wordpress/
Requires at least: 4.0
Tested up to: 4.9.5
Stable tag: 2.5.0

Add AJAX-based login and registration forms with captcha, email verification, invitation codes and more.

== Description ==

Add AJAX-based login and registration forms with captcha, email verification, invitation codes and more.


> #### Plugin Site
> * [Plugin Site](https://www.cminds.com/store/cm-registration-and-invitation-codes-plugin-for-wordpress/)
> * [Pro Version Detailed Features List](https://www.cminds.com/store/cm-registration-and-invitation-codes-plugin-for-wordpress/)

---
 
 
> #### Follow Us
> [Blog](http://plugin.cminds.com/blog/) | [Twitter](http://twitter.com/cmplugins)  | [Google+](https://plus.google.com/108513627228464018583/) | [LinkedIn](https://www.linkedin.com/company/creativeminds) | [YouTube](https://www.youtube.com/user/cmindschannel) | [Pinterest](http://www.pinterest.com/cmplugins/) | [FaceBook](https://www.facebook.com/cmplugins/)


**More Plugins by CreativeMinds**

* [CM Ad Changer](http://wordpress.org/plugins/cm-ad-changer/) - Manage, Track and Report Advertising Campaigns Across Sites. Can turn your Turn your WP into an Ad Server
* [CM Super ToolTip Glossary](http://wordpress.org/extend/plugins/enhanced-tooltipglossary/) - Easily creates a Glossary, Encyclopaedia or Dictionary of your website's terms and shows them as a tooltip in posts and pages when hovering. With many more powerful features.
* [CM Download Manager](http://wordpress.org/extend/plugins/cm-download-manager) - Allows users to upload, manage, track and support documents or files in a download directory listing database for others to contribute, use and comment upon.
* [CM MicroPayments](https://plugins.cminds.com/cm-micropayment-platform/) - Adds the in-site support for your own "virtual currency". The purpose of this plugin is to allow in-site transactions without the necessity of processing the external payments each time (quicker & easier). Developers can use it as a platform to integrate with their own plugins.
* [CM Video Tutorials](https://wordpress.org/plugins/cm-plugins-video-tutorials/) - Video Tutorials showing how to use WordPress and CM Plugins like Q&A Discussion Forum, Glossary, Download Manager, Ad Changer and more.
* [CM OnBoarding](https://wordpress.org/plugins/cm-onboarding/) - Superb Guidance tool which improves the online experience and the user satisfaction.


== Installation ==

1. Upload the plugin folder to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress

== Frequently Asked Questions ==

> [More FAQ's](https://www.cminds.com/store/cm-registration-and-invitation-codes-plugin-for-wordpress/)
>



== Changelog ==
= 2.5.0 =
* Added support for invitation codes when registering with social login.
* Fixed bug with not showing the invitation codes custom post columns in the wp-admin dashboard.
* Fixed problem with recreating the registration fields.
* Added logout button shortcode.
* CSS and labels improvements.

= 2.4.0 =
* Included the registration fields into the Profile fields so it can be reordered now.
* Fixed issue with Wordpress requiring to reauthenticate when going to wp-admin from the front-end.
* Added support for a logout URL #cmreg-logout-click
* Updated the shortcodes page.

= 2.3.3 =
* Fixed fatal error in PHP code.

= 2.3.2 =
* Fixed bug with the email verification - logging in as user with ID=1.

= 2.3.1 =
* Fixed issue with login button showing up when user has been logged-in after the email verification.

= 2.3.0 =
* Added an option to resend the email verification link to a registered user.

= 2.2.2 =
* Fixed loading recaptcha JavaScript.

= 2.2.1 =
* Fixed bug with profile fields validation when registering with social login.

= 2.2.0 =
* Added age verification with the birth date profile field and new settings to set the allowed age.
* Added searching invitation code by the code field in wp-admin.
* Removed unused controls in the form builder.
* Fixed redirection issues.
* Fixed issue with captcha not showing.
* Fixed PHP error.
* Fixed issue with shortcode.

= 2.1.2 =
* Fixed PHP error in Gravity Forms integration.
* Changes related to the access restriction plugin.

= 2.1.1 =
* Fixed issue with captcha.

= 2.1.0 =
* Added integration with Gravity Form Registration Add-on: added invitation code to the registration feed.

= 2.0.2 =
* Changes related with adding WooCommerce support in the payments addon.
* Updated licensing library.

= 2.0.1 =
* Fixed typo in labels.

= 2.0.0 =
* Added change password shortcode.
* Added email notification for deleted user accounts.
* Updated shortcodes page.
* Added auto-login option after successful registration.
* Add Google+ registration and login integration.
* Added login redirection based on role and for each invitation code.
* Integrated invitation codes with CMDM users groups.
* Added options in profile fields where to show the field: in registration form, in user profile.

= 1.12.0 =
* Added invitation code column and show code in the user profile.
* Fixed issue with sending the welcome email.
* Fixed CSS issue on the license page.
* CSS enhancements.

= 1.11.1 =
* Fixed issue with invitation code limitations not checked.
* Fixed displaying terms of service after the custom fields.
* Added new labels.

= 1.11.0 =
* Added "Export invited users" button which generates CSV file with users and used invitation codes.
* Added "Edit profile fields" link on the Users page in wp-admin dashboard to allow admin to edit the user's custom profile fields.

= 1.10.2 =
* Fixed issue with role-based profile fields not showing in the registration form.

= 1.10.1 =
* Added option to prevent calling the Wordpress action `login_footer` when showing the login form on the front-end to fix some plugin conflicts.

= 1.10.0 =
* Added shortcode to create the invitation codes by user and send it by email.
* Added shortcode to list the user's invitation codes.
* Added a wp filter to allow disabling unique email restriction by some external tools.

= 1.9.3 =
* Fixed PHP error.

= 1.9.2 =
* Fixed PHP error on the edit post pages.

= 1.9.1 =
* Fixed issue with captcha during the registration.

= 1.9.0 =
* Introducing the new Profile Fields that replace the custom fields.
* Added login attempts limit feature.
* Added IP restrictions.
* Added the change password shortcode.
* Confirmed that plugin and the payments addon work with the multisite network.
* Updated the licensing library.

= 1.8.6 =
* Fixed issue with social login after Facebook updated its API version.

= 1.8.5 =
* Fixed issue with saving settings.

= 1.8.4 =
* Fixed issue with login screen not showing up on mobile browsers.
* Fixed WishList Member conflict.
* Showing captcha after extra fields.

= 1.8.3 =
* Fixed issue with reCaptcha not showing.

= 1.8.2 =
* Fixed conflict with Avada theme.
* Fixed issue with including JavaScript twice.

= 1.8.1 =
* Changes related to the new version of the Bulk Invitation Addon.

= 1.8.0 =
* Added option to allow registration only with specified email address for a specific invitation code.
* Fixed conflict with themes that cause a JavaScript bug with using jQuery.fadeIn and jQuery.fadeOut.

= 1.7.2 =
* Fixed conflict with the WP Limit Login Attempts plugin.

= 1.7.1 =
* Added option to add the social login buttons also to the registration form.

= 1.7.0 =
* Added Facebook login button and related settings.

= 1.6.3 =
* Fixed bug with the login.

= 1.6.2 =
* Added information about addons.
* Updated shortcode information.

= 1.6.1 =
* Fixed labels in the user profile edit shortcode.

= 1.6.0 =
* Added new shortcode to edit user's profile and his extra fields defined in the plugin settings.
* Integration with new addon "CM Registration Bulk Invitation".

= 1.5.2 =
* Initially filling the user's first name during the registration field.

= 1.5.1 =
* Fixed issue with redirection after the registration.

= 1.5.0 =
* Added option to disable the standard wp-login.php page and redirect to other URL.
* Added option to disable the standard WP registration page and redirect to other URL.
* Added new parameters to display the login link in the cmreg-registration-form shortcode.
* Added new parameters to display the registration link in the cmreg-login-form shortcode.
* Added support to display text for not-logged-in users in the cmreg-registration-form shortcode.
* Added support to display text for not-logged-in users in the cmreg-login-form shortcode.

= 1.4.0 =
* Added sidebar widget "Login form".
* Added sidebar widget "Registration form".
* Added new shortcode cmreg-registration-btn.
* Added option to display the Terms of Service acceptance checkbox.
* Made the invitation codes manually editable by admin.
* CSS improvements.

= 1.3.2 =
* Fixed bug with setting user role by invitation code.

= 1.3.1 =
* Updated licensing support.

= 1.3.0 =
* Added separate CSS class for buttons to display only the login form and another to display only the registration form.
* Added option to include username to the redirection URL after login.

= 1.2.0 =
* Added option to add the extra fields to the registration form.
* Displaying extra fields on the user's profile page in Dashboard.
* Added option to export users with its extra fields values to the CSV file.
* Added parameter role=some to the registration shortcode.

= 1.1.2 =
* Added option to enable the admin email notification after user's registration.
* CSS improvements for small screens.

= 1.1.1 =
* Fixed issue with Invalid captcha (double captcha validation) during the registration.

= 1.1.0 =
* Added new shortcode: cmreg-login-form
* Added new shortcode: cmreg-registration-form
* Added new shortcode: cmreg-lost-password

= 1.0.8 =
* Updated licensing support.

= 1.0.7 =
* Fixed PHP error.

= 1.0.6 =
* Fixed issues related to new Wordpress version.

= 1.0.5 =
* Added option to logout after time of inactivity.
* Added option to reload browser after user has been logged-out.

= 1.0.4 =
* Updated licensing api support.

= 1.0.3 =
* Fixed issue with email verification.
* Fixed issue with login when using S2Member Pro.
* Added default user role setting.
* Added login dialog opacity background setting.
* Added Custom CSS setting.

= 1.0.2 =
* Fixed issue related to Jetpack.

= 1.0.1 =
* Updated licensing api support.

= 1.0.0 =
* Initial release
