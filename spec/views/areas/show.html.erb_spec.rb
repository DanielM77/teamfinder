require 'spec_helper'

describe "areas/show" do
  before(:each) do
    @area = assign(:area, stub_model(Area,
      :name => "Name",
      :league_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
