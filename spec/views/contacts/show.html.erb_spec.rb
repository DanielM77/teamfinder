require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :age => 1,
      :message => "MyText",
      :position => "Position",
      :league => "League",
      :gender => "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Position/)
    rendered.should match(/League/)
    rendered.should match(/Gender/)
  end
end
