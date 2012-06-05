require 'spec_helper'

describe "team_types/edit" do
  before(:each) do
    @team_type = assign(:team_type, stub_model(TeamType,
      :name => "MyString"
    ))
  end

  it "renders the edit team_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => team_types_path(@team_type), :method => "post" do
      assert_select "input#team_type_name", :name => "team_type[name]"
    end
  end
end
