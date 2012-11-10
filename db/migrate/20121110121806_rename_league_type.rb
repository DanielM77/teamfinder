class RenameLeagueType < ActiveRecord::Migration
  def change
    drop_table :leagues
    rename_table :league_types, :leagues
  end
end
