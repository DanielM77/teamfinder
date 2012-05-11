require 'spec_helper'

describe "offers/show" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :club => "Club",
      :team => "Team",
      :description => "MyText",
      :league => "League",
      :min_league => "Min League",
      :season => "Season",
      :position => "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Club/)
    rendered.should match(/Team/)
    rendered.should match(/MyText/)
    rendered.should match(/League/)
    rendered.should match(/Min League/)
    rendered.should match(/Season/)
    rendered.should match(/Position/)
  end
end
