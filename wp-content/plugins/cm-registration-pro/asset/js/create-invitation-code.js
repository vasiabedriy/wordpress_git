jQuery(function($) {
	
	$('.cmreg-create-invitation-code-shortcode form').submit(function(ev) {
		
		ev.preventDefault();
		ev.stopPropagation();
		
		var form = $(this);
		var container = form.parents('.cmreg-create-invitation-code-shortcode');
		var btn = form.find('input[type=submit]');
		var loader = $('<div>', {'class': 'cmreg-loader-bar'});
		container.find('.cmreg-create-invitation-code-result').remove();
		btn.hide();
		btn.after(loader);
		var email = form.find('input[name=email]').val();
		
		var data = {action: form.data('action'), nonce: form.data('nonce'), hash: form.data('hash'), email: email};
		$.post(form.attr('action'), data, function(response) {
			loader.remove();
			if (response.success) {
				container.append(response.html);
			} else {
				CMREG.Utils.toast(response.msg);
				btn.show();
			}
		});
		
	});
	
	
});