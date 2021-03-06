FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Doc Lollipop #{n}"}
    sequence(:email) { |n| "docpop#{n}@unicornemail.com"}
    password("12345678")
    password_confirmation("12345678")
    avatar Rack::Test::UploadedFile.new("#{Rails.root}/public/test/fab.png", "image/png")
  end
end
