require 'rails_helper'

describe "the create user function" do
  it "opens the new user page" do
    visit "/"
    click_on "Register"
    expect(page).to have_content "Name"
  end

  it "creates a new user" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "Welcome"
  end

  it "throws an error when no name is entered" do
    visit "/"
    click_on "Register"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "problem"
  end

  it "throws an error when no email is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "problem"
  end

  it "throws an error when no password is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "problem"
  end

  it "throws an error when no password confirmation is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "problem"
  end
end
