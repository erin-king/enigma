require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/date'

class DateTest < Minitest::Test

  def setup
      @date = Date.new("12345")
      # @keys_random = Keys.new(nil)
  end
end
