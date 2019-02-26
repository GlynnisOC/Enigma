class Enigma
  require 'pry'
  attr_reader :key, :chars

  chars = ("a".."z").to_a << " "
  nums = (0..99999).to_a
    # binding.pry
  key = nums.sample.to_s.rjust(5, '0')

  def pair_keys_with_chars

  end

  def encrypt(message, key, date)
    #takes the orig msg and encrypts, takes key/date and leaves as is
  end
  #
  # def decrypt(ciphertext, key, date)
  # end

  # def key_to_hash
  #   key = "12345"
  #   arr = key.split("").map { |d| d.to_i }
  #   arr.each_slice(1).to_a
  # end


end
