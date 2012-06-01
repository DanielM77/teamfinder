require 'spec_helper'

describe "clubs/show" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Street/)
    rendered.should match(/Street No/)
    rendered.should match(/Strinp/)
    rendered.should match(/Zip/)
    rendered.should match(/City/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Mobile/)
    rendered.should match(/Image Path/)
    rendered.should match(/Email/)
    rendered.should match(/Homepage/)
  end
end
