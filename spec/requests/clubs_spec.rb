require 'spec_helper'
require 'clubs_helper_spec'
describe "Clubs" do
  describe "GET /clubs" do
    it "works! (now write some real specs)" do
      sign_in_as_club
      get clubs_path
      response.status.should be(200)
    end
  end
end
