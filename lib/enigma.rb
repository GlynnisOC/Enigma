class Enigma
  require 'pry'
  attr_reader :key

  chars = ("a".."z").to_a << " "
  nums = (0..99999).to_a
    # binding.pry
  key = nums.sample.to_s.rjust(5, '0')

  # def key_to_hash
  #   key = "12345"
  #   arr = key.split("").map { |d| d.to_i }
  #   arr.each_slice(1).to_a
  # end

  # def encrypt(message, key, date)
  # end
  #
  # def decrypt(ciphertext, key, date)
  # end

end
