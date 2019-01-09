require 'pry'

class Encrypt
  def initialize(shift)
    @shift = shift
  end

  def encrypt_message(message)
    message_array = message.split(//)
    message_array.each do |letter_of_message|
      find_index(letter_of_message)
    end
    # hold = @shift.character_set.find do |letter|
    #   letter == "q"
    # end  #rotate(@shift.shift_a)
    # return @shift.shift_a
  end

  def find_index(letter_of_message)
    letter_index = 0
    count = 0
    @shift.character_set.each do |letter|
      if letter == letter_of_message
        letter_index = count
      end
      count += 1
    end
    letter_index
  end

  # with_index(offset = 0) {|(*args), idx| ... }
end
