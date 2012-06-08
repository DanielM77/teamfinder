class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :position_group_id

      t.timestamps
    end
  end
end
