require 'rails_helper'

describe "the new post function" do
  it "opens the new post page" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    expect(page).to have_content "New Post"
  end

  it "creates a new post" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "Surgery"
  end

  it "throws an error for a new post without a title" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => ""
    fill_in "Body", :with => "You have no idea."
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "blank"
  end

  it "throws an error for a new post without a body" do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on "New Post"
    fill_in "Title", :with => "Surgery is Hard with Hooves"
    fill_in "Body", :with => ""
    attach_file('Image', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "blank"
  end
end
