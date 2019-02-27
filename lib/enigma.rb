class Enigma
  require 'pry'

  attr_reader :key, :chars, :shift

  chars = ("a".."z").to_a << " "
  nums = (0..99999).to_a
  key = nums.sample.to_s.rjust(5, '0')
  @shift = []
  # binding.pry
  @shift << chars
  @shift << key.to_i

  def encrypt(message, key, date)
    #takes the orig msg and encrypts, takes key/date and leaves as is
  end
  #
  def decrypt(ciphertext, key, date)
    #opposite of what encrypt does
  end

end
