=begin
Problem Statement 7: Polymorphic Messaging System
Create an interface Message with a method send_message. Then:
Implement two classes EmailMessage and SMSMessage that both implement the send_message method. EmailMessage should send an email, and SMSMessage should send a text message.
Write a function send_notification that takes an object of type Message and calls the send_message method.
Demonstrate polymorphism by calling send_notification with instances of both EmailMessage and SMSMessage.
=end


