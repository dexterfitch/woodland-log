require 'rails_helper'

describe "the delete post function" do

  it "deletes a post" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Delete Post"
    expect(page).to have_content "deleted!"
  end

end
