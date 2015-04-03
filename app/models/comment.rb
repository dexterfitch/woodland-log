class Comment < ActiveRecord::Base
  after_create :send_sms

  belongs_to :post
  belongs_to :user

  validates :body, :presence => true

  scope :by_date, -> { order(created_at: :desc) }

private
  def send_sms
    begin
      number_to_send_to = @post.user.number

      response = RestClient::Request.new(
        :method => :post,
        :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
        :user => ENV['TWILIO_ACCOUNT_SID'],
        :password => ENV['TWILIO_AUTH_TOKEN'],
        :payload => { :Body => "You have a new comment waiting for you.", :From => ENV["TWILIO_PHONE_NUMBER"], :To => number_to_send_to }
      ).execute

    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      false
    end
  end
end
