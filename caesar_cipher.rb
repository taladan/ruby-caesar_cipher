# caesar_cipher.rb

def caesar_cipher(string, shift)
end

def upper?(char)
  !/[[:upper:]]/.match(char).nil?
end

def letter?(char)
  !/[[a-zA-Z]]/.match(char).nil?
end

# Test cases

puts "A is uppercase: #{upper?("A")}"
puts "Z is uppercase: #{upper?("Z")}"
puts "a is uppercase: #{upper?("a")}"
puts "z is uppercase: #{upper?("z")}"
puts "1 is uppercase: #{upper?("1")}"
puts "1 is letter: #{letter?("1")}"
puts "! is letter: #{letter?("!")}"
puts ". is letter: #{letter?(".")}"
puts ", is letter: #{letter?(",")}"
puts "? is letter: #{letter?("?")}"
puts "a is letter: #{letter?("a")}"
puts "Z is letter: #{letter?("Z")}"
