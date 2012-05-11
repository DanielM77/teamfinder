class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :club
      t.string :team
      t.text :description
      t.string :league
      t.string :min_league
      t.string :season
      t.string :position
      t.integer :min_age
      t.integer :max_age
      t.string :status
      t.date :valid_from
      t.date :valid_until

      t.timestamps
    end
  end
end
