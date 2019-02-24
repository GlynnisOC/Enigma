class Enigma
  # def self.random_key
  #   '02715'
  # end

  def key(num)
    numbers = [*00000..99999]
    numbers.find do |number|
      number == num
    end
  end
  #
  # def encrypt(message, key, date)
  # end
  #
  # def decrypt(ciphertext, key, date)
  # end

end
