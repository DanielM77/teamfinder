class AddFieldsToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :club_id, :integer
    add_column :offers, :team_id, :integer
    add_column :offers, :position_id, :integer
    add_column :offers, :season_id, :integer
    add_column :offers, :strong_foot, :string
    add_column :offers, :contract, :string
    add_column :offers, :transfer_fee, :string
    add_column :offers, :min_league_type, :integer
    remove_column :offers, :min_league
  end
end
