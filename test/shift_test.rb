require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'
require './lib/offset'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)

    assert_instance_of Shift, shift
  end

  def test_it_has_attributes
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)

    assert_equal keys, shift.keys
    assert_equal offset, shift.offset
  end
end
