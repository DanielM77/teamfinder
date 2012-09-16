class AddFieldsToOffer < ActiveRecord::Migration
  def change
    add_column :public_offers, :club_id, :integer
    add_column :public_offers, :team_id, :integer
    add_column :public_offers, :position_id, :integer
    add_column :public_offers, :season_id, :integer
    add_column :public_offers, :strong_foot, :string
    add_column :public_offers, :contract, :string
    add_column :public_offers, :transfer_fee, :string
    add_column :public_offers, :min_league_type, :integer
    remove_column :offers, :min_league
  end
end
