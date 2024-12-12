File.open("out.txt", "w") do |file|
  begin
    file.write('Hello, world!')
  rescue StandardError => e
    puts "An error occurred: #{e.message}"
  end
end

