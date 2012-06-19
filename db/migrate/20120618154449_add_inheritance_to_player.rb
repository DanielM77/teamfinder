class AddInheritanceToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :typ, :string
    add_column :players, :offer_id, :integer
    add_column :players, :message, :string
    add_column :players, :status, :string
  end
end
