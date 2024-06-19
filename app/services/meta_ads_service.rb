class MetaAdsService
  include HTTParty
  base_uri 'https://graph.facebook.com/v20.0'

  def initialize(access_token)
    @access_token = access_token
  end


  def fetch_ads_data
    ad_accounts_response = self.class.get('/me/adaccounts', query: { access_token: @access_token })
    ad_accounts = ad_accounts_response.parsed_response['data']

    app_info = receive_app_info
    app_name = app_info['name']
    app_status = app_info['status'] || 'Active'
    ad_accounts.map do |account|
      {
        account_id: account['id'],
        account_name: account['name'],
        app_name:,
        app_status:
      }
    end
  end

  def receive_app_info
    response = HTTParty.get("https://graph.facebook.com/v20.0/#{ENV['META_ADS_APP_ID']}?access_token=#{ENV['META_ADS_ACCESS_TOKEN']}")
    JSON.parse(response.body)
  end
end
