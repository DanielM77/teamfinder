class RemoveColumnFromOffers < ActiveRecord::Migration
 def change
   remove_column :offers, :league_id, :integer
 end
end
