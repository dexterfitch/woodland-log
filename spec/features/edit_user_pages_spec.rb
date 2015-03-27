require 'rails_helper'

describe "the edit user function" do
  it "opens the edit user page" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    click_on "Login"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    find_button("Login").click
    click_on "Edit"
    expect(page).to have_content "Name"
  end

  it "edits a current users information" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    click_on "Login"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    find_button("Login").click
    click_on "Edit"
    fill_in "Name", :with => "Doc Pop"
    fill_in "Email", :with => "doc_pop@mystical.com"
    fill_in "Password", :with => "pixiestix314"
    fill_in "Password confirmation", :with => "pixiestix314"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "Doc"
  end

  it "throws an error when no user name is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    click_on "Login"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    find_button("Login").click
    click_on "Edit"
    fill_in "Name", :with => ""
    fill_in "Email", :with => "doc_pop@mystical.com"
    fill_in "Password", :with => "pixiestix314"
    fill_in "Password confirmation", :with => "pixiestix314"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "blank"
  end

  it "throws an error when no user email is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    click_on "Login"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    find_button("Login").click
    click_on "Edit"
    fill_in "Name", :with => "Doc Pop"
    fill_in "Email", :with => ""
    fill_in "Password", :with => "pixiestix314"
    fill_in "Password confirmation", :with => "pixiestix314"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "blank"
  end

  it "throws an error when no user password is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    click_on "Login"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    find_button("Login").click
    click_on "Edit"
    fill_in "Name", :with => "Doc Pop"
    fill_in "Email", :with => "doc_pop@mystical.com"
    fill_in "Password", :with => ""
    fill_in "Password confirmation", :with => "pixiestix314"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "errors"
  end

  it "throws an error when no user password confirmation is entered" do
    visit "/"
    click_on "Register"
    fill_in "Name", :with => "Dr. Lollipop"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    fill_in "Password confirmation", :with => "gumdrop123"
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    click_on "Login"
    fill_in "Email", :with => "unicorn.phd@mystical.com"
    fill_in "Password", :with => "gumdrop123"
    find_button("Login").click
    click_on "Edit"
    fill_in "Name", :with => "Doc Pop"
    fill_in "Email", :with => "doc_pop@mystical.com"
    fill_in "Password", :with => "pixiestix314"
    fill_in "Password confirmation", :with => ""
    attach_file('Avatar', 'public/test/fab.png')
    click_on "Submit"
    expect(page).to have_content "errors"
  end
end
