require 'twilio-ruby'

class TwilioService
  def initialize(to)
    @account_sid = ENV[TWILIO_ACCOUNT_SID:]
    @auth_token = ENV[TWILIO_API_KEY:]
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    @from = '+34931071828' # Your Twilio number
    @to = to
  end

  def confirmation
    @client.messages.create(
      from: @from,
      to: @to,
      body: "Hello #{current_user.name}. Your surprise trip is fully booked."
    )
  end

  def weather
    @client.messages.create(
      from: @from,
      to: @to,
      body: ""
    )
  end
end


