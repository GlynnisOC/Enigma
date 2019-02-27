class Enigma
  require 'pry'
  attr_reader :key, :chars, :shift

  def initialize
    @chars = ("a".."z").to_a << " "
    nums = (0..99999).to_a
    # key = nums.sample.to_s.rjust(5, '0')
    @shift = []
    @shift << chars
    @shift << key.to_i
    @keys = get_key()
    @offset = Array.new
  end

  def date
    Time.now.strftime("%D").delete "/"
  end

  def date_squared
    (date.to_i ** 2).to_s
  end

  def last_four
    date_squared.split(//).last(4).join
  end

  def get_key()
    key = "02715"  #nums.sample.to_s.rjust(5, '0')
    key_array = key.split("")
    keys = Array.new
    key_array.each_with_index do |key, integer|
      keys.push(key.to_s + key_array[integer + 1].to_s)
    end
  end

  def encrypt(message, key, date)
    #takes the orig msg and encrypts, takes key/date and leaves as is
  end
  #
  def decrypt(ciphertext, key, date)
    #opposite of what encrypt does
  end

end
