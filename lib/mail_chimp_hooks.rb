class MailChimpHooks < Spree::ThemeSupport::HookListener
	insert_after :signup_below_password_fields, 'users/subscribe_to_newsletter_field'
	insert_after :footer_left, 'shared/newsletter_subscribe_form'

	# Add js for ajaxy subscriptions from footer or wherever
	insert_after :inside_head, 'shared/head_mail_chimp_hook'

    insert_after :admin_configurations_menu do
        %[
          <tr>
            <td><%= link_to t("mailchimp_settings"), admin_mail_chimp_settings_path %></td>
            <td><%= t("mailchimp_settings_description") %></td>
          </tr>
        ] 
    end

end
