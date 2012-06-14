require 'spec_helper'

describe "StaticPages" do
  describe "Homepage" do
    it "should have an h1 selector 'Teamfinder'" do
      visit root_path
      page.should have_selector('h1',text:'Teamfinder')
    end
    it "should have the base title 'Teamfinder'" do
      visit root_path
      page.should have_selector('title',text:'Teamfinder')
    end

  end
end
