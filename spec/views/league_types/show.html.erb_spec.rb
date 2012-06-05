require 'spec_helper'

describe "league_types/show" do
  before(:each) do
    @league_type = assign(:league_type, stub_model(LeagueType,
      :name => "Name",
      :ranking => 1,
      :team_type_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
