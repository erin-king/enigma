require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'
require './lib/offset'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    key = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(key, offset)

    assert_instance_of Shift, shift
  end
end
