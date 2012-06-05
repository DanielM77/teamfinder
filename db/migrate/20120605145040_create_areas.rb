class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :league_type_id

      t.timestamps
    end
  end
end
