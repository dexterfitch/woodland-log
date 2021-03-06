class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :presence => true
  validates :body, :presence => true

  has_attached_file :image, :styles => { :large => "500x500>", :thumb => "100x100>" }, :default_url => "missing_image.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  scope :by_date, -> { order(created_at: :desc) }
end
