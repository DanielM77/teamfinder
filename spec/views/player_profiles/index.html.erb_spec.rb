require 'spec_helper'

describe "player_profiles/index" do
  before(:each) do
    assign(:player_profiles, [
      stub_model(Player,
        :name => "Name",
        :first_name => "First Name",
        :street => "Street",
        :zip => "Zip",
        :city => "City",
        :phone => "Phone",
        :mobile => "Mobile",
        :email => "Email",
        :nationality => "Nationality",
        :current_league_type_id => "",
        :expected_league_type_id => "",
        :max_distance => "",
        :position_id => "",
        :strong_foot => "Strong Foot",
        :transfer_cost => ""
      ),
      stub_model(Player,
        :name => "Name",
        :first_name => "First Name",
        :street => "Street",
        :zip => "Zip",
        :city => "City",
        :phone => "Phone",
        :mobile => "Mobile",
        :email => "Email",
        :nationality => "Nationality",
        :current_league_type_id => "",
        :expected_league_type_id => "",
        :max_distance => "",
        :position_id => "",
        :strong_foot => "Strong Foot",
        :transfer_cost => ""
      )
    ])
  end

  it "renders a list of player_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Strong Foot".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
