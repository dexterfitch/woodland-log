# require 'rails_helper'
#
# describe "the edit comment function" do
#   it "opens the edit comment page" do
#     visit root_path
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
#     click_on "Surgery is Hard with Hooves"
#     # save_and_open_page
#     click_on "Add Comment"
#     fill_in "Body", :with => "/tiny violin"
#     click_on "Submit"
#     click_on "Edit Comment"
#     expect(page).to have_content "Edit Comment"
#   end
#
#   it "edits a comment" do
#     visit root_path
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
#     click_on "Surgery is Hard with Hooves"
#     # save_and_open_page
#     click_on "Add Comment"
#     fill_in "Body", :with => "/tiny violin"
#     click_on "Submit"
#     click_on "Edit Comment"
#     fill_in "Body", :with => "/tiny violin quartet"
#     click_on "Submit"
#     expect(page).to have_content "quartet"
#   end
#
#   it "throws an error for an edited comment without a body" do
#     visit root_path
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
#     click_on "Surgery is Hard with Hooves"
#     # save_and_open_page
#     click_on "Add Comment"
#     fill_in "Body", :with => "/tiny violin"
#     click_on "Submit"
#     click_on "Edit Comment"
#     fill_in "Body", :with => ""
#     click_on "Submit"
#     expect(page).to have_content "blank"
#   end
# end
