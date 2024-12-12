class ServerError < StandardError; end
def initialize(message)
    super(message)
    end
end

max = 3
attempt = 0

begin
    attempt +=1
    server = rand(0..1)
    puts server
    puts "Number of attempts is #{attempt}"
    raise ServerError.new("SERVER IS NOT CONNECTED") if server == 1
    puts "Server Connected"
rescue ServerError => e
    puts e.message
    retry if attempt < max
end

