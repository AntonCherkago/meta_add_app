class AddFacebookTokenToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :facebook_token, :string
    add_column :users, :facebook_uid, :integer
    add_column :users, :facebook_access_token_expiry, :datetime
  end
end
