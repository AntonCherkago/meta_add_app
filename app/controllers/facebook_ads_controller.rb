# class FacebookAdsController < ApplicationController
#   def connect
#     redirect_to '/auth/facebook'
#   end

#   def callback
#     auth = request.env['omniauth.auth']
#     current_user.update(
#       facebook_token: auth['credentials']['token'],
#       facebook_access_token_expiry: Time.at(auth['credentials']['expires_at']).to_datetime,
#       facebook_uid: auth['uid']
#     )

#     sync_facebook_ads_account(current_user)

#     redirect_to root_path, notice: 'Successfully connected Facebook Ads account!'
#   end

#   private

#   def sync_facebook_ads_account(user)
#     # Example: Use Koala gem to interact with Facebook API
#     graph = Koala::Facebook::API.new(user.facebook_access_token)
#     ad_accounts = graph.get_connections('me', 'adaccounts')

#     # Example: Save ad account details to database
#     ad_accounts.each do |account|
#       user.facebook_ad_accounts.find_or_create_by(account_id: account['id']) do |ad_account|
#         ad_account.name = account['name']
#         ad_account.account_status = account['account_status']
#         # Add more fields as needed
#       end
#     end
#   end
# end
