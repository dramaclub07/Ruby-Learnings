=begin
Problem Statement 7: Polymorphic Messaging System
Create an interface Message with a method send_message. Then:
Implement two classes EmailMessage and SMSMessage that both implement the send_message method. EmailMessage should send an email, and SMSMessage should send a text message.
Write a function send_notification that takes an object of type Message and calls the send_message method.
Demonstrate polymorphism by calling send_notification with instances of both EmailMessage and SMSMessage.
=end
class Message
  def send_message
    raise NotImplementedError, "Subclass must implement send_message"
  end
  
end

class EmailMessage < Message
  def initialize(to, from, message)
    @to = to
    @from = from
    @message = message
  end

  def send_message
    puts "Sending email to #{@to} from #{@from} with message #{@message}"
  end
end

class SMSMessage < Message
  def initialize(to, from, message)
    @to = to
    @from = from
    @message = message
  end

  def send_message
    puts "Sending SMS to #{@to} from #{@from} with message #{@message}"
  end
end

def send_notification(message)
  message.send_message
end

email_message = EmailMessage.new("john@example.com", "jane@example.com", "Hello, how are you?")
sms_message = SMSMessage.new("1234567890", "9876543210", "Hello, how are you?")

send_notification(email_message)
send_notification(sms_message)

