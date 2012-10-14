class CreateFormerLeagues < ActiveRecord::Migration
  def change
    create_table :former_leagues do |t|
      t.integer :league_type_id
      t.integer :player_id

      t.timestamps
    end
  end
end
