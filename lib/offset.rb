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

  def offset_a
    return_last_four_digits[-4].to_i
  end

  def offset_b
    return_last_four_digits[-3].to_i
  end

  def offset_c
    return_last_four_digits[-2].to_i
  end

  def offset_d
    return_last_four_digits[-1].to_i
  end

end
