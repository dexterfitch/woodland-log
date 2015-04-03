require 'rails_helper'

describe "the edit post function" do
  it "opens the edit post page" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Edit Post"
    expect(page).to have_content "Edit Post"
  end

  it "edits a post" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Edit Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no freaking idea."
    click_on "Submit"
    expect(page).to have_content "freaking"
  end

  it "throws an error for an edited post without a title" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Edit Post"
    fill_in "Title", :with => ""
    fill_in "Body", :with => "You have no freaking idea."
    click_on "Submit"
    expect(page).to have_content "blank"
  end

  it "throws an error for an edited post without a body" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    click_on "Edit Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => ""
    click_on "Submit"
    expect(page).to have_content "blank"
  end
end
