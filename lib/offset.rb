require 'pry'
require 'date'

class Offset

  attr_reader :date

  def initialize(date)
    if date == nil
      @date = Date.today
    else
      @date = Date.strptime(date, "%d%m%y")
    end
  end

  def format_date
    @date.strftime("%d%m%y")
  end

  def date_squared
    format_date.to_i ** 2
  end

  def return_last_four_digits
    date_squared.to_s[-4..-1]
  end
  

end

#   def key_a
#     @separated_key[0] + @separated_key[1]
#   end
#
#   def key_b
#     @separated_key[1] + @separated_key[2]
#   end
#
#   def key_c
#     @separated_key[2] + @separated_key[3]
#   end
#
#   def key_d
#     @separated_key[3] + @separated_key[4]
#   end
#
#
# end
