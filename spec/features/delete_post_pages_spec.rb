# require 'rails_helper'
#
# describe "the delete post function" do
#
#   it "deletes a post" do
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
#     click_on "Delete Post"
#     expect(page).to have_content "deleted!"
#   end
#
# end
