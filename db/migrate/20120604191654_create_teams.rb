class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :league
      t.integer :club_id

      t.timestamps
    end
  end
end
