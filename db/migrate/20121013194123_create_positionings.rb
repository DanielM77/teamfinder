class CreatePositionings < ActiveRecord::Migration
  def change
    create_table :positionings do |t|
      t.integer :player_id
      t.integer :position_id

      t.timestamps
    end
  end
end
