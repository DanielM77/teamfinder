require 'spec_helper'

describe "league_types/index" do
  before(:each) do
    assign(:league_types, [
      stub_model(LeagueType,
        :name => "Name",
        :ranking => 1,
        :team_type_id => 2
      ),
      stub_model(LeagueType,
        :name => "Name",
        :ranking => 1,
        :team_type_id => 2
      )
    ])
  end

  it "renders a list of league_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
