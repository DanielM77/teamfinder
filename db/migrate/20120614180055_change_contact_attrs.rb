class ChangeContactAttrs < ActiveRecord::Migration
  def change
    remove_column :contacts, :name
    remove_column :contacts, :email
    remove_column :contacts, :phone
    remove_column :contacts, :age
    remove_column :contacts, :position
    remove_column :contacts, :league
    remove_column :contacts, :gender
    add_column :contacts, :player_id, :integer
    add_column :contacts, :status, :string

  end
end
