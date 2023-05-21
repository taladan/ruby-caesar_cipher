# caesar_cipher.rb

# Return caesar shift cypher of string by shift
class Cipher
  def shift(string, shift)
    # We will return a shifted string
    output = ''
    # iterate through each character of string
    string.each_char do |char|
      # only shift a-zA-Z characters
      if letter?(char)
        ending_ord = char.ord + shift
        ord_range = get_range(char)
        # check for backward shift
        if shift.to_i.negative?
          # Stay within the range of character ordinals
          ending_ord += 26 if ending_ord < ord_range.first
        elsif ending_ord > ord_range.last
          ending_ord -= 26
        end
        # Stay within the range of character ordinals
        # convert ord to character and pack to string
        output << ending_ord.chr
      else
        # pack non-Alpha character to string
        output << char
      end
    end
    output
  end

  # define ord range for Alpha characters (a-zA-Z)
  def get_range(char)
    if upper?(char)
      ord_range = ('A'.ord..'Z'.ord).to_a
    elsif letter?(char)
      ord_range = ('a'.ord..'z'.ord).to_a
    end
    ord_range
  end

  # regex match if characters is uppercase
  def upper?(char)
    # check for match object returned is not nil
    !/[[:upper:]]/.match(char).nil?
  end

  # regex match if character is a-z or A-Z
  def letter?(char)
    # check for match object returned is not nil
    !/[[a-zA-Z]]/.match(char).nil?
  end
end

# Test cases
def tests
  puts 'INDIVIDUAL CHARACTER TESTING'
  puts "A is uppercase: #{upper?('A')}"
  puts "Z is uppercase: #{upper?('Z')}"
  puts "a is uppercase: #{upper?('a')}"
  puts "z is uppercase: #{upper?('z')}"
  puts "1 is uppercase: #{upper?('1')}"
  puts "1 is letter: #{letter?('1')}"
  puts "! is letter: #{letter?('!')}"
  puts ". is letter: #{letter?('.')}"
  puts ", is letter: #{letter?(',')}"
  puts "? is letter: #{letter?('?')}"
  puts "a is letter: #{letter?('a')}"
  puts "Z is letter: #{letter?('Z')}"
  puts 'TESTING FOR RANGE'
  puts "A is in range #{get_range('A')}"
  puts "a is in range #{get_range('a')}"
  # Test all lc characters
  puts 'TESTING ALL LOWERCASE CHARACTERS'
  my_lc_str = ('a'..'z').to_a.join('')
  caesar_cipher(my_lc_str, 1)
  caesar_cipher(my_lc_str, 25)
  # Test all uc characters
  puts 'TESTING ALL UPPERCASE CHARACTERS'
  my_uc_str = ('A'..'Z').to_a.join('')
  caesar_cipher(my_uc_str, 1)
  caesar_cipher(my_uc_str, 25)
  # Test all numbers
  puts 'TESTING FOR NUMERIC CHARACTER SHIFTS'
  my_num_str = '1234567890'
  caesar_cipher(my_num_str, 1)
  caesar_cipher(my_num_str, 25)
  # Test all punctuation
  puts 'TESTING FOR PUNCTUATION CHARACTER SHIFTS'
  my_punct_str = %w[' " . , ? ! : ; `].join('')
  caesar_cipher(my_punct_str, 1)
  caesar_cipher(my_punct_str, 25)

  puts "\n\nTESTING AN ACTUAL STRING"
  caesar_cipher(
    'What an amazing string!  It even pauses, and has 1 numbers and ; punctutaions.',
    5
  )

  puts "\n\nTESTING NEGATIVE SHIFT"
  caesar_cipher('ABCabc !!!!!  ZXYzxy', -5)
end

# Uncomment this to run tests
# tests()
