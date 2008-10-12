# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false

# Open Id Registration URL
CLICKPASS_REGISTRATION_URL = "http://www.clickpass.com/process_new_openid?site_key=rj1JItenyg&process_openid_registration_url=http%3A%2F%2Flocalhost%3A3000%2Fopenid%2Fprocess_openid_registration&requested_fields=family-name%2Cnickname%2Cgiven-name%2Cphoto-url%2Cemail&required_fields=family-name%2Cnickname%2Cgiven-name%2Cphoto-url%2Cemail&family-name_label=Family%20name&nickname_label=Nickname&given-name_label=Given%20name&photo-url_label=Profile%20photo&email_label=Email"