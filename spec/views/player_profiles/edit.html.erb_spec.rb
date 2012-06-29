require 'spec_helper'

describe "player_profiles/edit" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :name => "MyString",
      :first_name => "MyString",
      :street => "MyString",
      :zip => "MyString",
      :city => "MyString",
      :phone => "MyString",
      :mobile => "MyString",
      :email => "MyString",
      :nationality => "MyString",
      :current_league_type_id => "",
      :expected_league_type_id => "",
      :max_distance => "",
      :position_id => "",
      :strong_foot => "MyString",
      :transfer_cost => ""
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path(@player), :method => "post" do
      assert_select "input#player_name", :name => "player[name]"
      assert_select "input#player_first_name", :name => "player[first_name]"
      assert_select "input#player_street", :name => "player[street]"
      assert_select "input#player_zip", :name => "player[zip]"
      assert_select "input#player_city", :name => "player[city]"
      assert_select "input#player_phone", :name => "player[phone]"
      assert_select "input#player_mobile", :name => "player[mobile]"
      assert_select "input#player_email", :name => "player[email]"
      assert_select "input#player_nationality", :name => "player[nationality]"
      assert_select "input#player_current_league_type_id", :name => "player[current_league_type_id]"
      assert_select "input#player_expected_league_type_id", :name => "player[expected_league_type_id]"
      assert_select "input#player_max_distance", :name => "player[max_distance]"
      assert_select "input#player_position_id", :name => "player[position_id]"
      assert_select "input#player_strong_foot", :name => "player[strong_foot]"
      assert_select "input#player_transfer_cost", :name => "player[transfer_cost]"
    end
  end
end
