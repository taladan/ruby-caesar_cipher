# caesar_cipher.rb
require "pry-byebug"

def caesar_cipher(string, shift)
  string.each_char do |char|
    if letter?(char)
      char_ord = char.ord
      ending_ord = char_ord + shift
      ord_range = get_range(char)
      char_position_from_end = ord_range.last - char.ord
      ending_ord = ending_ord - 26 if ending_ord > ord_range.last
      print (ending_ord.chr)
    else
      print(char)
    end
  end
  print("\n")
end

def get_range(char)
  if upper?(char)
    ord_range = ("A".ord.."Z".ord).to_a
  elsif letter?(char)
    ord_range = ("a".ord.."z".ord).to_a
  end
  ord_range
end

def upper?(char)
  !/[[:upper:]]/.match(char).nil?
end

def letter?(char)
  !/[[a-zA-Z]]/.match(char).nil?
end

# Test cases

def testCharacters()
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
end

def testRange()
  puts "A is in range #{get_range("A")}"
  puts "a is in range #{get_range("a")}"
end

testCharacters()
testRange()
mystr = ("a".."z").to_a.join("")
caesar_cipher(mystr, 1)
caesar_cipher(mystr, 25)
