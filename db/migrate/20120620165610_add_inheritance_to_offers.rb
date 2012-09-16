class AddInheritanceToOffers < ActiveRecord::Migration
  def change
    add_column :public_offers, :player_id, :integer
    add_column :public_offers, :typ, :string
  end
end
