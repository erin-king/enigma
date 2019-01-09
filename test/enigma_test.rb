require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists

    assert_instance_of Enigma, @enigma
  end

  def test_it_encrypts_with_key_and_date

    expected =
      {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_encrypts_with_key_and_uses_todays_date

    expected =
      {
        encryption: "keder ohulw",
        key: "02715",
        date: "today"
      }

    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_it_encrypts_with_key_and_uses_todays_date

    expected =
      {
        encryption: "keder ohulw",
        key: "02715",
        date: "today"
      }

    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_encrypts_with_random_key_and_uses_todays_date
    expected =
      {
        encryption: "keder ohulw",
        key: "random",
        date: "today"
      }
    assert_equal expected, @enigma.encrypt("hello world")
  end

  def test_it_decrypts_with_key_and_date

    expected =
      {
        decryption: "hello world",
        key: "02715",
        date: "040895"
      }

    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_decrypts_with_key_and_uses_todays_date

    expected =
      {
        decryption: "hello world",
        key: "02715",
        date: "today"
      }

      assert_equal expected, @enigma.decrypt("keder ohulw", "02715")
    # (in pry interaction pattern) assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

end
