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
