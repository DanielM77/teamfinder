require 'spec_helper'

describe "clubs/new" do
  before(:each) do
    assign(:club, stub_model(Club,
      :name => "MyString",
      :street => "MyString",
      :street_no => "MyString",
      :strinp => "MyString",
      :zip => "MyString",
      :city => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :mobile => "MyString",
      :image_path => "MyString",
      :email => "MyString",
      :homepage => "MyString"
    ).as_new_record)
  end

  it "renders new club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clubs_path, :method => "post" do
      assert_select "input#club_name", :name => "club[name]"
      assert_select "input#club_street", :name => "club[street]"
      assert_select "input#club_street_no", :name => "club[street_no]"
      assert_select "input#club_strinp", :name => "club[strinp]"
      assert_select "input#club_zip", :name => "club[zip]"
      assert_select "input#club_city", :name => "club[city]"
      assert_select "input#club_phone", :name => "club[phone]"
      assert_select "input#club_fax", :name => "club[fax]"
      assert_select "input#club_mobile", :name => "club[mobile]"
      assert_select "input#club_image_path", :name => "club[image_path]"
      assert_select "input#club_email", :name => "club[email]"
      assert_select "input#club_homepage", :name => "club[homepage]"
    end
  end
end
