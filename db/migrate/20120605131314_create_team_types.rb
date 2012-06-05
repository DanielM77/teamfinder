class CreateTeamTypes < ActiveRecord::Migration
  def change
    create_table :team_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
