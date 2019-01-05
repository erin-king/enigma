require 'pry'

class Keys
  def initialize(key)
    @key = key_production(key)
    @key = zero_pad(@key)
    @separated_key = @key.split(//)
  end

  def zero_pad(key)
    key.rjust(5, '0')
  end

  def key_production(key)
    if key == nil
      return random_number.to_s
    else
      return key
    end
  end

  def random_number
    random_number = rand(99999)
    return random_number
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
