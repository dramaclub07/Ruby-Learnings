require 'rspec'
require_relative 'email.rb'

RSpec.describe Email do
  let(:mail_validate) { Email.new }

  describe "#validate_email?" do
    it "returns true for a valid email" do
      expect(mail_validate.validate_email?("test@example.com")).to be(true)
    end

    it "raises an error for an invalid email" do
      expect { mail_validate.validate_email?("Invalid Email") }.to raise_error(InvalidEmailError, "Invalid email")
    end
  end
end

