require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    date_today = Offset.new(nil)
    date = Offset.new("291182")

    assert_instance_of Offset, date_today
    assert_instance_of Offset, date
  end

  def test_it_can_format_date
    date_today = Offset.new(nil)
    date = Offset.new("291182")

    assert_equal "070119", date_today.format_date
    assert_equal "291182", date.format_date
  end

  def test_it_can_square_a_date
    date_today = Offset.new(nil) #only today 1.7.19
    date = Offset.new("291182")
    
    assert_equal 4916674161, date_today.date_squared
    assert_equal 84786957124, date.date_squared
  end

end
