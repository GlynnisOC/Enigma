require 'simplecov'
SimpleCov.start
require './lib/enigma'
# require './lib/key'
require 'date'
require 'minitest/autorun'
require 'minitest/pride'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # def test_it_returns_a_key_with_five_digits
  #   @key.to_i.digits.count
  #   assert_instance_of 5, @enigma.key
  # end

  def test_it_returns_encrypted_message_in_hash
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_returns_decrypted_message_in_a_hash
    expected =  {
        decryption: "hello world",
        key: "02715",
        date: "040895"
      }
      assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end
end 
