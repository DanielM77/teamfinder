class RemoveTeamFromOffer < ActiveRecord::Migration
  def change
  	remove_column :offers, :team_id
  	add_column	:offers, :league_id, :integer
  	add_column	:offers, :team_type_id, :integer
  end
end
