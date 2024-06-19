class FacebookAdsSyncService
  def initialize(user)
    @user = user
  end

  def call
    FacebookAds.configure do |config|
      config.access_token = @user.token
    end

    me = FacebookAds::User.me
    ad_accounts = me.ad_accounts

    ad_accounts.each do |account|
      AdAccount.find_or_create_by(account_id: account.id) do |ad_account|
        ad_account.user = @user
        ad_account.name = account.name
        ad_account.account_status = account.account_status
      end
    end
  end
end
