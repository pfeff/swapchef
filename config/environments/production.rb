# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host                  = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

# Open Id Registration URL
CLICKPASS_REGISTRATION_URL = "http://www.clickpass.com/process_new_openid?site_key=RxAGOIFBko&process_openid_registration_url=http%3A%2F%2Fswapchef.com%2Fopenid%2Fprocess_openid_registration&requested_fields=family-name%2Cnickname%2Cgiven-name%2Cphoto-url%2Cemail&required_fields=family-name%2Cnickname%2Cgiven-name%2Cphoto-url%2Cemail&family-name_label=Family%20name&nickname_label=Nickname&given-name_label=Given%20name&photo-url_label=Profile%20photo&email_label=Email"