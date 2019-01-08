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

  def test_it_can_create_shifts_a_thru_d
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)

    assert_equal 19, shift.shift_a
    assert_equal 24, shift.shift_b
    assert_equal 36, shift.shift_c
    assert_equal 49, shift.shift_d
  end

  def test_it_can_create_a_character_set
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

    assert_equal expected, shift.character_set
  end

end
