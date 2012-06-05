require 'spec_helper'

describe "leagues/new" do
  before(:each) do
    assign(:league, stub_model(League,
      :name => "MyString",
      :area_id => 1
    ).as_new_record)
  end

  it "renders new league form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leagues_path, :method => "post" do
      assert_select "input#league_name", :name => "league[name]"
      assert_select "input#league_area_id", :name => "league[area_id]"
    end
  end
end
