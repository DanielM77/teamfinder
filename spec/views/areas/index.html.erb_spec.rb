require 'spec_helper'

describe "areas/index" do
  before(:each) do
    assign(:areas, [
      stub_model(Area,
        :name => "Name",
        :league_type_id => 1
      ),
      stub_model(Area,
        :name => "Name",
        :league_type_id => 1
      )
    ])
  end

  it "renders a list of areas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
