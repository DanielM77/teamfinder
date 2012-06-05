class CreateLeagueTypes < ActiveRecord::Migration
  def change
    create_table :league_types do |t|
      t.string :name
      t.integer :ranking
      t.integer :team_type_id

      t.timestamps
    end
  end
end
