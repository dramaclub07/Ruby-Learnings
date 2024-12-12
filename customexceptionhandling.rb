class CustomException < StandardError
  attr_reader :message, :code

  def initialize(message, code)
    @message = message
    @code = code
    super(message)
  end
end

class ErrorHandler
  def self.handle(exception)
    if exception.is_a?(CustomException)
      puts "Error Code: #{exception.code}, Message: #{exception.message}"
    else
      puts "An unknown error occurred: #{exception.message}"
    end
  end
end

begin
  raise CustomException.new("Invalid input", 400)
rescue StandardError => e
  ErrorHandler.handle(e)
end 