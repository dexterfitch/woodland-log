require 'rails_helper'

describe "the new comment function" do
  it "opens the new comment page", js: true do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Surgery is Hard with Hooves"
    click_on "Add Comment"
    expect(page).to have_content "Body"
  end

  it "creates a new comment", js: true do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Surgery is Hard with Hooves"
    click_on "Add Comment"
    fill_in "Body", :with => "/tiny violin"
    click_on "Submit"
    expect(page).to have_content "violin"
  end


  it "throws an error for a new comment without a body", js: true do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Surgery is Hard with Hooves"
    click_on "Add Comment"
    fill_in "Body", :with => ""
    click_on "Submit"
    expect(page).to have_content "blank"
  end
end
