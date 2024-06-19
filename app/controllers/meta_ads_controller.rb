class MetaAdsController < ApplicationController
#   before_action :authenticate_user!

#   def connect
#     redirect_to '/auth/facebook'
#   end

#   def callback
#     auth = request.env['omniauth.auth']
#     current_user.update_attributes(
#       facebook_access_token: auth['credentials']['token'],
#       facebook_access_token_expiry: Time.at(auth['credentials']['expires_at']).to_datetime,
#       facebook_uid: auth['uid']
#     )
#     current_user.save
#     redirect_to root_path, notice: 'Successfully connected Facebook Ads account!'
#   end

  # def index
  #   @ads_data = MetaAdsService.new(ENV['META_ADS_ACCESS_TOKEN']).fetch_ads_data.first
  # end
end
