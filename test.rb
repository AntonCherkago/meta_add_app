require 'facebookbusiness'
FacebookAds.configure do |config|
  config.access_token = 'EAAQEm1OJRkkBO4nM0ZATmSmHdhLmir3roZC2c1MCHyLfWCnh2IixKrFGFXVxLZAqlsoYiMvrPcNZB1hNtp8nKlucXksT3NEAvbQqoOuniE6BKjKboKo5cnEfT4yQHkwAXdKZCKDpzuhKcCkKkdfMkuBBriCXCJcS7V7bSgPvKbm4xUZCQ6nDMrTysGlNKm'
  config.app_secret = 'c1dd926309c2dc21d754021522976edf'
end

ad_account = FacebookAds::AdAccount.get('act_814686232266491', 'adds_app')
puts ad_account
ad_account.campaigns(fields: 'name').each do |campaign|
  puts campaign.name
end
