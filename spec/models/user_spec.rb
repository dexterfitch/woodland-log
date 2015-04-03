require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :number }
  it { should validate_uniqueness_of :number }
  it { should validate_presence_of :password }
  it { should validate_presence_of :password_confirmation }
  it { should have_many :posts }
  it { should have_many :comments }
end
