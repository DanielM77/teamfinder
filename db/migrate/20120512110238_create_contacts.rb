class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :age
      t.text :message
      t.string :position
      t.string :league
      t.string :gender
      t.integer :offer_id
      t.timestamps
    end
  end
end
