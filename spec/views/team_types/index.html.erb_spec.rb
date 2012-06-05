require 'spec_helper'

describe "team_types/index" do
  before(:each) do
    assign(:team_types, [
      stub_model(TeamType,
        :name => "Name"
      ),
      stub_model(TeamType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of team_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
