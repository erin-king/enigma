require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'
require './lib/offset'
require './lib/shift'
require './lib/decrypt'

class DecryptTest < Minitest::Test
  def test_it_exists
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)
    decrypt = Decrypt.new(shift)

    assert_instance_of Decrypt, decrypt
  end
end
