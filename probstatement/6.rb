=begin n6. 
Write a Ruby program to process an array of names. 
If a specific name (e.g., "exit") is found, immediately 
stop the processing using throw and print a message indicating the name was found. 
=end 


names = gets.chomp.split
catch(:exit) do
  names.each do |name|
    if name == "exit"
      puts "Found 'exit' in the list."
      throw :exit
    else
      puts "Processing #{name}..."
    end
  end
end