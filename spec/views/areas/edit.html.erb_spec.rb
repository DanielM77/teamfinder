require 'spec_helper'

describe "areas/edit" do
  before(:each) do
    @area = assign(:area, stub_model(Area,
      :name => "MyString",
      :league_type_id => 1
    ))
  end

  it "renders the edit area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => areas_path(@area), :method => "post" do
      assert_select "input#area_name", :name => "area[name]"
      assert_select "input#area_league_type_id", :name => "area[league_type_id]"
    end
  end
end
