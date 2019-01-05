require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keys'

class KeysTest < Minitest::Test

  def setup
      @keys = Keys.new("12345")
      @keys_random = Keys.new(nil)
  end

  def test_it_exists

    assert_instance_of Keys, @keys
    assert_instance_of Keys, @keys_random
  end

  def test_key_a

    assert_equal "12", @keys.key_a
    assert_equal 2, @keys_random.key_a.length
  end

  def test_key_b

    assert_equal "23", @keys.key_b
    assert_equal 2, @keys_random.key_b.length
  end

  def test_key_c

    assert_equal "34", @keys.key_c
    assert_equal 2, @keys_random.key_c.length
  end

  def test_key_d

    assert_equal "45", @keys.key_d
    assert_equal 2, @keys_random.key_d.length
  end

  def test_it_can_zero_pad

    assert_equal "01234", @keys.zero_pad("1234")
  end

  def test_key_production_with_key_given

    assert_equal "12345", @keys.key_production("12345")
  end

  def test_key_production_without_key_given

    assert(@keys.key_production(nil).to_i < 100000)
    assert_kind_of(Integer, @keys.key_production(nil).to_i)
  end

  def test_random_number

    assert(@keys.random_number < 100000)
    assert_kind_of(Integer, @keys.random_number)
  end
end
