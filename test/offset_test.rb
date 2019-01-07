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

  # def it_is_given_todays_date_if_argument_is_nil
  #
  #   assert_equal
  # end
end
