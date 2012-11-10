class RemoveLeagueFromTeam < ActiveRecord::Migration
  def change
    remove_column :teams, :league_id
    add_column :teams, :league_type_id, :integer
  end
end
