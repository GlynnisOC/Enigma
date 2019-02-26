class Enigma
  require 'pry'
  def initialize
    # @all_the_keys = Hash.new(0)
  end

  chars = ("a".."z").to_a << " "

  def key
    number = [*00000..99999]
    current_key = number.sample
    # binding.pry
    current_key.to_s.rjust(5, '0')
  end

  def key_to_hash
    key = "12345"
    # binding.pry
    arr = key.split("").map { |d| d.to_i }
    arr.each_slice(1).to_a
  end
  # def encrypt(message, key, date)
  # end
  #
  # def decrypt(ciphertext, key, date)
  # end

end
