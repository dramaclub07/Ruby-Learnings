class ConnectionError < StandardError
    def initialize(message)
        super(message)
    end
end

def database_query
    query = gets.chomp
    begin
        puts "ENTER YOUR QUERY"
        query = gets.chomp.to_s
        if query !~ /(SELECT|CREATE|READ|UPDATE|DELETE)/i
            raise ConnectionError.new("Invalid query")
        end
        # Simulate a database connection failure
        if db == 1
            raise DatabaseError.new("Database is not connected").tap do |e|
                e.cause = ConnectionError.new("Connection timed out")
            end
        end
        puts "Valid Query"
    rescue DatabaseError => e
        puts "DatabaseError: #{e.message}"
        if e.cause
            puts "Root cause: #{e.cause.message}"
        end
    rescue ConnectionError => e
        puts "ConnectionError: #{e.message}"
    end
end


def database_query
    query = gets.chomp
    begin
        puts "ENTER YOUR QUERY"
        query = gets.chomp.to_s
        if query !~ /(SELECT|CREATE|READ|UPDATE|DELETE)/i
            raise ConnectionError.new("Invalid query")
        end
        # Simulate a database connection failure
        if db == 1
            raise DatabaseError.new("Database is not connected").tap do |e|
                e.cause = ConnectionError.new("Connection timed out")
            end
        end
        puts "Valid Query"
    rescue DatabaseError => e
        puts "DatabaseError: #{e.message}"
        if e.cause
            puts "Root cause: #{e.cause.message}"
        end
    rescue ConnectionError => e
        puts "ConnectionError: #{e.message}"
    end
end