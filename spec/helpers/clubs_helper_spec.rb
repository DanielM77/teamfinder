require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ClubsHelper. For example:
#
# describe ClubsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ClubsHelper do
  def signed_in_as_club
    @user ||= FactoryGirl.create :user
    sign_in user
    user.add_role(:club)
  end
  # for use in request specs
  def sign_in_as_a_club
    @user ||= FactoryGirl.create :user
    post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
  end
end

end
