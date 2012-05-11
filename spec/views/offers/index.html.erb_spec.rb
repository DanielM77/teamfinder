require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :club => "Club",
        :team => "Team",
        :description => "MyText",
        :league => "League",
        :min_league => "Min League",
        :season => "Season",
        :position => "Position"
      ),
      stub_model(Offer,
        :club => "Club",
        :team => "Team",
        :description => "MyText",
        :league => "League",
        :min_league => "Min League",
        :season => "Season",
        :position => "Position"
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Club".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "League".to_s, :count => 2
    assert_select "tr>td", :text => "Min League".to_s, :count => 2
    assert_select "tr>td", :text => "Season".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
