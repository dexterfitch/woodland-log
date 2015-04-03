# require 'rails_helper'
#
# describe "the new comment function" do
#   it "opens the new comment page" do
#         visit root_path
#         click_on "Register"
#         fill_in "Name", :with => "Dr. Lollipop"
#         fill_in "Email", :with => "unicorn.phd@mystical.com"
#         fill_in "Password", :with => "gumdrop123"
#         fill_in "Password confirmation", :with => "gumdrop123"
#         attach_file('Avatar', 'public/test/fab.png')
#         click_on "Submit"
#         click_on "Login"
#         fill_in "Email", :with => "unicorn.phd@mystical.com"
#         fill_in "Password", :with => "gumdrop123"
#         find_button("Login").click
#         click_on "New Post"
#         fill_in "Title", :with => "Surgery is Hard with Hooves"
#         fill_in "Body", :with => "You have no idea."
#         attach_file('Image', 'public/test/fab.png')
#         click_on "Submit"
#         click_on "Surgery is Hard with Hooves"
#         # save_and_open_page
#         click_on "Add Comment"
#     expect(page).to have_content "New Comment"
#   end
#
#   it "creates a new comment" do
#         visit root_path
#         click_on "Register"
#         fill_in "Name", :with => "Dr. Lollipop"
#         fill_in "Email", :with => "unicorn.phd@mystical.com"
#         fill_in "Password", :with => "gumdrop123"
#         fill_in "Password confirmation", :with => "gumdrop123"
#         attach_file('Avatar', 'public/test/fab.png')
#         click_on "Submit"
#         click_on "Login"
#         fill_in "Email", :with => "unicorn.phd@mystical.com"
#         fill_in "Password", :with => "gumdrop123"
#         find_button("Login").click
#         click_on "New Post"
#         fill_in "Title", :with => "Surgery is Hard with Hooves"
#         fill_in "Body", :with => "You have no idea."
#         attach_file('Image', 'public/test/fab.png')
#         click_on "Submit"
#         click_on "Surgery is Hard with Hooves"
#         # save_and_open_page
#         click_on "Add Comment"
#         fill_in "Body", :with => "/tiny violin"
#         click_on "Submit"
#     expect(page).to have_content "violin"
#   end
#
#
#   it "throws an error for a new comment without a body" do
#         visit root_path
#         click_on "Register"
#         fill_in "Name", :with => "Dr. Lollipop"
#         fill_in "Email", :with => "unicorn.phd@mystical.com"
#         fill_in "Password", :with => "gumdrop123"
#         fill_in "Password confirmation", :with => "gumdrop123"
#         attach_file('Avatar', 'public/test/fab.png')
#         click_on "Submit"
#         click_on "Login"
#         fill_in "Email", :with => "unicorn.phd@mystical.com"
#         fill_in "Password", :with => "gumdrop123"
#         find_button("Login").click
#         click_on "New Post"
#         fill_in "Title", :with => "Surgery is Hard with Hooves"
#         fill_in "Body", :with => "You have no idea."
#         attach_file('Image', 'public/test/fab.png')
#         click_on "Submit"
#         click_on "Surgery is Hard with Hooves"
#         # save_and_open_page
#         click_on "Add Comment"
#         fill_in "Body", :with => ""
#         click_on "Submit"
#     expect(page).to have_content "blank"
#   end
# end
