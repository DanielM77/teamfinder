require 'spec_helper'

describe "team_types/new" do
  before(:each) do
    assign(:team_type, stub_model(TeamType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new team_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => team_types_path, :method => "post" do
      assert_select "input#team_type_name", :name => "team_type[name]"
    end
  end
end
