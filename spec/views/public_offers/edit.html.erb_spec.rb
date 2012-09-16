require 'spec_helper'

describe "public_offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :club => "MyString",
      :team => "MyString",
      :description => "MyText",
      :league => "MyString",
      :min_league => "MyString",
      :season => "MyString",
      :position => "MyString"
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path(@offer), :method => "post" do
      assert_select "input#offer_club", :name => "offer[club]"
      assert_select "input#offer_team", :name => "offer[team]"
      assert_select "textarea#offer_description", :name => "offer[description]"
      assert_select "input#offer_league", :name => "offer[league]"
      assert_select "input#offer_min_league", :name => "offer[min_league]"
      assert_select "input#offer_season", :name => "offer[season]"
      assert_select "input#offer_position", :name => "offer[position]"
    end
  end
end
