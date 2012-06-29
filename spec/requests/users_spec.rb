require 'spec_helper'


describe "Users Pages" do
  before {
    @user =   FactoryGirl.create(:user)
    visit new_user_session_path
  }

  describe "User Sign in" do
    it "allows a user to sign in after they did a registration" do
      fill_in 'email', with:@user.email
      fill_in 'password', with:@user.password
      click_button 'Sign in'
      page.should have_content 'Signed in successfully.'
      end
  end
end