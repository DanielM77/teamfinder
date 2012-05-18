require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :age => 1,
        :message => "MyText",
        :position => "Position",
        :league => "League",
        :gender => "Gender"
      ),
      stub_model(Contact,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :age => 1,
        :message => "MyText",
        :position => "Position",
        :league => "League",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "League".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
