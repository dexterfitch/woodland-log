require 'rails_helper'

describe "the edit comment function" do
  it "opens the edit comment page", js: true do
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
    click_on "Edit Comment"
    expect(page).to have_content "Edit Comment"
  end

  it "edits a comment", js: true do
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
    click_on "Edit Comment"
    fill_in "Body", :with => "/tiny violin quartet"
    click_on "Submit"
    expect(page).to have_content "quartet"
  end

  it "throws an error for an edited comment without a body", js: true do
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
    click_on "Edit Comment"
    fill_in "Body", :with => ""
    click_on "Submit"
    expect(page).to have_content "blank"
  end
end
