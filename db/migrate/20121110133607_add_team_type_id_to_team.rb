class AddTeamTypeIdToTeam < ActiveRecord::Migration
  def change
    add_column  :teams, :team_type_id, :integer
  end
end
