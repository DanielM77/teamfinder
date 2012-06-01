class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :street
      t.string :street_no
      t.string :strinp
      t.string :zip
      t.string :city
      t.string :phone
      t.string :fax
      t.string :mobile
      t.string :image_path
      t.string :email
      t.string :homepage

      t.timestamps
    end
  end
end
