require 'spec_helper'

describe "league_types/edit" do
  before(:each) do
    @league_type = assign(:league_type, stub_model(LeagueType,
      :name => "MyString",
      :ranking => 1,
      :team_type_id => 1
    ))
  end

  it "renders the edit league_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => league_types_path(@league_type), :method => "post" do
      assert_select "input#league_type_name", :name => "league_type[name]"
      assert_select "input#league_type_ranking", :name => "league_type[ranking]"
      assert_select "input#league_type_team_type_id", :name => "league_type[team_type_id]"
    end
  end
end
