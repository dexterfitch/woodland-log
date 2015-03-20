class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :body, :presence => true

  scope :by_date, -> { order(created_at: :desc) }
end
