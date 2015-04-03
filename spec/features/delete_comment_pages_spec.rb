require 'rails_helper'

describe "the delete comment function" do
  it "deletes a comment", js: true do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Surgery is Hard with Hooves"
    # save_and_open_page
    click_on "Add Comment"
    fill_in "Body", :with => "/tiny violin"
    click_on "Submit"
    click_on "Delete Comment"
    expect(page).to have_content "deleted"
  end
end
