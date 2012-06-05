require 'spec_helper'

describe "team_types/show" do
  before(:each) do
    @team_type = assign(:team_type, stub_model(TeamType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
