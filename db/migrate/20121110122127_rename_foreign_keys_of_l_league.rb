class RenameForeignKeysOfLLeague < ActiveRecord::Migration
  def change
    rename_column  :players, :current_league_type_id, :current_league_id
    rename_column  :players, :expected_league_type_id, :expected_league_id
    rename_column  :offers, :min_league_type_id, :min_league_id
    rename_column  :teams, :league_type_id, :league_id
    rename_column  :former_leagues, :league_type_id, :league_id
  end

end
