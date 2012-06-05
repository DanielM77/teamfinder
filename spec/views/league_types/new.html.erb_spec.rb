require 'spec_helper'

describe "league_types/new" do
  before(:each) do
    assign(:league_type, stub_model(LeagueType,
      :name => "MyString",
      :ranking => 1,
      :team_type_id => 1
    ).as_new_record)
  end

  it "renders new league_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => league_types_path, :method => "post" do
      assert_select "input#league_type_name", :name => "league_type[name]"
      assert_select "input#league_type_ranking", :name => "league_type[ranking]"
      assert_select "input#league_type_team_type_id", :name => "league_type[team_type_id]"
    end
  end
end
