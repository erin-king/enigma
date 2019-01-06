require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/date'

class DateTest < Minitest::Test

  def setup
      @date = Date.new("291182")
      @date_today = Date.new(nil)
  end

  def test_it_exists

    assert_instance_of Date, @date
    assert_instance_of Date, @date_today
  end
end
