require 'pry'

class Keys
  def initialize(key)
    @key = key_production(key)
    @separated_key = @key.split(//)
  end

  def key_production(key)
    if key == nil
      return "67891" #generate random 5 digit num
    else
      return key
    end
    return key
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
