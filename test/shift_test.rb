require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift_a = Shift.new(key, offset)
    
    assert_instance_of Shift, shift_a
  end
end
