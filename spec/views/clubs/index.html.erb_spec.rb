require 'spec_helper'

describe "clubs/index" do
  before(:each) do
    assign(:clubs, [
      stub_model(Club,
        :name => "Name",
        :street => "Street",
        :street_no => "Street No",
        :strinp => "Strinp",
        :zip => "Zip",
        :city => "City",
        :phone => "Phone",
        :fax => "Fax",
        :mobile => "Mobile",
        :image_path => "Image Path",
        :email => "Email",
        :homepage => "Homepage"
      ),
      stub_model(Club,
        :name => "Name",
        :street => "Street",
        :street_no => "Street No",
        :strinp => "Strinp",
        :zip => "Zip",
        :city => "City",
        :phone => "Phone",
        :fax => "Fax",
        :mobile => "Mobile",
        :image_path => "Image Path",
        :email => "Email",
        :homepage => "Homepage"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Street No".to_s, :count => 2
    assert_select "tr>td", :text => "Strinp".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Homepage".to_s, :count => 2
  end
end
