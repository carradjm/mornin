require 'twilio-ruby'
require 'byebug'

byebug

account_sid = ENV["twilio_account_sid"] # Your Account SID from www.twilio.com/console
auth_token = ENV["twilio_auth_token"]   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new(account_sid, auth_token)
message = @client.messages.create(
    body: "Hello from Ruby",
    to: "+19724899523",    # Replace with your phone number
    from: "#{ENV['mornin_phone_number']}")  # Replace with your Twilio number

puts message.sid