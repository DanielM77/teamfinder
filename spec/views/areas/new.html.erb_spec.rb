require 'spec_helper'

describe "areas/new" do
  before(:each) do
    assign(:area, stub_model(Area,
      :name => "MyString",
      :league_type_id => 1
    ).as_new_record)
  end

  it "renders new area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => areas_path, :method => "post" do
      assert_select "input#area_name", :name => "area[name]"
      assert_select "input#area_league_type_id", :name => "area[league_type_id]"
    end
  end
end
