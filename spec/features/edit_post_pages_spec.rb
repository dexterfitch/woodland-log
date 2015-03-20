# require 'rails_helper'
#
# describe "the edit post function" do
#   it "opens the edit post page" do
#     visit "/"
#     click_on "Register"
#     fill_in "Name", :with => "Dr. Lollipop"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     fill_in "Password confirmation", :with => "gumdrop123"
#     attach_file('Avatar', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Login"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     find_button("Login").click
#     click_on "New Post"
#     fill_in "Title", :with => "Surgery is Hard with Hooves"
#     fill_in "Body", :with => "You have no idea."
#     attach_file('Image', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Edit Post"
#     expect(page).to have_content "Edit Post"
#   end
#
#   it "edits a post" do
#     visit "/"
#     click_on "Register"
#     fill_in "Name", :with => "Dr. Lollipop"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     fill_in "Password confirmation", :with => "gumdrop123"
#     attach_file('Avatar', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Login"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     find_button("Login").click
#     click_on "New Post"
#     fill_in "Title", :with => "Surgery is Hard with Hooves"
#     fill_in "Body", :with => "You have no idea."
#     attach_file('Image', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Edit Post"
#     fill_in "Title", :with => "Surgery is Hard with Hooves"
#     fill_in "Body", :with => "You have no freaking idea."
#     click_on "Submit"
#     expect(page).to have_content "freaking"
#   end
#
#   it "throws an error for an edited post without a title" do
#     visit "/"
#     click_on "Register"
#     fill_in "Name", :with => "Dr. Lollipop"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     fill_in "Password confirmation", :with => "gumdrop123"
#     attach_file('Avatar', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Login"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     find_button("Login").click
#     click_on "New Post"
#     fill_in "Title", :with => "Surgery is Hard with Hooves"
#     fill_in "Body", :with => "You have no idea."
#     attach_file('Image', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Edit Post"
#     fill_in "Title", :with => ""
#     fill_in "Body", :with => "You have no freaking idea."
#     click_on "Submit"
#     expect(page).to have_content "blank"
#   end
#
#   it "throws an error for an edited post without a body" do
#     visit "/"
#     click_on "Register"
#     fill_in "Name", :with => "Dr. Lollipop"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     fill_in "Password confirmation", :with => "gumdrop123"
#     attach_file('Avatar', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Login"
#     fill_in "Email", :with => "unicorn.phd@mystical.com"
#     fill_in "Password", :with => "gumdrop123"
#     find_button("Login").click
#     click_on "New Post"
#     fill_in "Title", :with => "Surgery is Hard with Hooves"
#     fill_in "Body", :with => "You have no idea."
#     attach_file('Image', 'public/test/fab.png')
#     click_on "Submit"
#     click_on "Edit Post"
#     fill_in "Title", :with => "Surgery is Hard with Hooves"
#     fill_in "Body", :with => ""
#     click_on "Submit"
#     expect(page).to have_content "blank"
#   end
# end