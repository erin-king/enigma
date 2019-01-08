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


end

#methods shift_a, etc
#return a...z "" array
#offset_a = "7"
#offset_b = "1"
#offset_c = "2"
#offset_d = "4"

# key_a = 12
# key_b = 23
# key_c = 34
# key_d = 45
