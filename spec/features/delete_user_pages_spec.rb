# require 'rails_helper'
#
# describe "the delete user function" do
#   it "delete the user info" do
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
#     click_on "Delete"
#     expect(page).to have_content "destroyed!"
#   end
# end
