class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :first_name
      t.date :birthdate
      t.string :street
      t.string :zip
      t.string :city
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :nationality
      t.integer :current_league_type_id
      t.integer :expected_league_type_id
      t.integer :max_distance
      t.integer :position_id
      t.string :strong_foot
      t.float :transfer_fee
      t.boolean :has_contract
      t.float :expected_money
      t.boolean :show_profile
      t.boolean :is_public
      t.string :gender

      t.timestamps
    end
  end
end
