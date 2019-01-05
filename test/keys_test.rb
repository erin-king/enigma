require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'

class KeysTest < Minitest::Test

  def setup
      @keys = Keys.new
  end

  def test_it_exists

    assert_instance_of Keys, @keys
  end

  def test_key_a

    assert_equal "12", @keys.key_a
  end

  def test_key_b

    assert_equal "23", @keys.key_b
  end

  def test_key_c

    assert_equal "34", @keys.key_c
  end

  def test_key_d

    assert_equal "45", @keys.key_d
  end
end
