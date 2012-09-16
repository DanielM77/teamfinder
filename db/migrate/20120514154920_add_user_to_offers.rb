class AddUserToOffers < ActiveRecord::Migration
  def change
    add_column :public_offers, :user_id, :integer
  end
end
