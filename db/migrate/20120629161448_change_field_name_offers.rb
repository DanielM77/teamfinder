class ChangeFieldNameOffers < ActiveRecord::Migration
  def change
    rename_column :public_offers , :min_league_type, :min_league_type_id
  end
end
