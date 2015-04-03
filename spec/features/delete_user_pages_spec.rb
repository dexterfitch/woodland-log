require 'rails_helper'

describe "the delete user function" do
  it "delete the user info" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "Delete Profile"
    expect(page).to have_content "destroyed!"
  end
end
