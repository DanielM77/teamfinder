class AddUserToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :user_id, :integer
  end
end
