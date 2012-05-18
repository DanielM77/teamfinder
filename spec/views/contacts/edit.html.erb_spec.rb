require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :age => 1,
      :message => "MyText",
      :position => "MyString",
      :league => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path(@contact), :method => "post" do
      assert_select "input#contact_name", :name => "contact[name]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_phone", :name => "contact[phone]"
      assert_select "input#contact_age", :name => "contact[age]"
      assert_select "textarea#contact_message", :name => "contact[message]"
      assert_select "input#contact_position", :name => "contact[position]"
      assert_select "input#contact_league", :name => "contact[league]"
      assert_select "input#contact_gender", :name => "contact[gender]"
    end
  end
end
