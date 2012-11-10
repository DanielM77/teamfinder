class CreateOfferedPositions < ActiveRecord::Migration
  def change
    create_table :offered_positions do |t|
      t.integer :offer_id
      t.integer :position_id

      t.timestamps
    end
  end

end
