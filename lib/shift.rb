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

#return a...z "" array
#("a".."z").to_a << " "
