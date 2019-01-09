require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'
require './lib/offset'
require './lib/shift'
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def test_it_exists
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)
    encrypt = Encrypt.new(shift)

    assert_instance_of Encrypt, encrypt
  end

  def test_it_can_encrypt_message
    # skip
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)
    encrypt = Encrypt.new(shift)

    message = "hello world"

    assert_equal " ", encrypt.encrypt_message(message)
  end

  def test_it_can_find_index_of_letter
    keys = Keys.new("12345")
    offset = Offset.new("291182")
    shift = Shift.new(keys, offset)
    encrypt = Encrypt.new(shift)

    message = "hello world"

    assert_equal 7, encrypt.find_index("h")
  end
end
