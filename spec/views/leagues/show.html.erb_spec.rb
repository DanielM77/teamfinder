require 'spec_helper'

describe "leagues/show" do
  before(:each) do
    @league = assign(:league, stub_model(League,
      :name => "Name",
      :area_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
