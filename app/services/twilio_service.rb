require 'twilio-ruby'

class TwilioService
  def initialize(to)
    @account_sid = "AC8d3f92a92b59f3353ccd195ea005b284"#ENV[TWILIO_ACCOUNT_SID:]
    @auth_token = "029756340a93f12f6af3b8ff779cdf3b"#ENV[TWILIO_API_KEY:]
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)
    @from = '+34931071828' # Your Twilio number
    @to = to
  end

  def confirmation
    @client.messages.create(
      from: @from,
      to: @to,
      body: "Hello {current_user.name}. Your surprise trip is fully booked."
    )
  end

  def weather(body)
    @client.messages.create(
      from: @from,
      to: @to,
      body: body
    )
  end
end


