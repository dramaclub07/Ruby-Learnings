begin 
  puts "Enter a file path : "
  path=gets.chomp 
  content = File.read(path)
  puts "FILE CONTENT :"
  puts content
rescue Errno::ENOENT 
  puts "FILE NOT FOUND"
rescue Errno::EACCES
  puts "PERMISSION DENIED"
rescue StandardError => e
  puts "AN ERROR OCCURRED: #{e.message}"
end