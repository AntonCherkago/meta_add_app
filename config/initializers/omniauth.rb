# frozen_string_literal: true

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], scope: 'ads_read,ads_management'
# end

OmniAuth.config.allowed_request_methods = %i[get post]
