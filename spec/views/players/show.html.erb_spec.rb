require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/First Name/)
    rendered.should match(/Street/)
    rendered.should match(/Zip/)
    rendered.should match(/City/)
    rendered.should match(/Phone/)
    rendered.should match(/Mobile/)
    rendered.should match(/Email/)
    rendered.should match(/Nationality/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Strong Foot/)
    rendered.should match(//)
  end
end
