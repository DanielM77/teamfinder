class AddInheritanceToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :player_id, :integer
    add_column :offers, :typ, :string
  end
end
