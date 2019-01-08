require 'pry'

class Shift
  attr_reader :keys,
              :offset

  def initialize(keys, offset)
    @keys = keys
    @offset = offset
  end

  def shift_a
    @keys.key_a.to_i + @offset.offset_a
  end

  def shift_b
    @keys.key_b.to_i + @offset.offset_b
  end

  def shift_c
    @keys.key_c.to_i + @offset.offset_c
  end

  def shift_d
    @keys.key_d.to_i + @offset.offset_d
  end

end

#methods shift_a, etc
#return a...z "" array
#offset_a = "7"
#offset_b = "1"
#offset_c = "2"
#offset_d = "4"
# "added shift_b to test_it_can_create_shifts_a_thru_d and added shift_b method"
# key_a = 12
# key_b = 23
# key_c = 34
# key_d = 45
