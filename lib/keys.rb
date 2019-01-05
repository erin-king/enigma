require 'pry'

class Keys
  def initialize
    @key = "12345"
    @separated_key = @key.split(//)
  end

  def key_a
    @separated_key[0] + @separated_key[1]
  end

  def key_b
    @separated_key[1] + @separated_key[2]
  end

  def key_c
    @separated_key[2] + @separated_key[3]
  end

  def key_d
    @separated_key[3] + @separated_key[4]
  end


end
