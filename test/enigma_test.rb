require 'simplecov'
SimpleCov.start
require './lib/enigma'
# require './lib/key'
require './lib/key'
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

  def test_it_returns_the_date
    assert_equal "022619", @enigma.date
  end

  def test_it_squares_the_date
    assert_equal "511619161", @enigma.date_squared
  end

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

  # def test_it_returns_a_key_with_five_digits
  #   @enigma.key.to_i.digits.count
  #   assert_instance_of 5, @enigma.key
  # end

  # def test_it_splits_a_key_into_a_hash
  #   expected = {a: 12, b: 23, c: 34, d: 45}
  #   assert_equal expected, @enigma.key_to_hash
  # end


  # def test_it_returns_encrypted_message_in_hash
  #   expected = {
  #       encryption: "keder ohulw",
  #       key: "02715",
  #       date: "040895"
  #     }
  #   assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  # end
  #
  # def test_it_returns_decrypted_message_in_a_hash
  #   expected =  {
  #       decryption: "hello world",
  #       key: "02715",
  #       date: "040895"
  #     }
  #     assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
# # encrypt a message with a key (uses today's date)
# pry(main)> encrypted = enigma.encrypt("hello world", "02715")
# #=> # encryption hash here
#
# #decrypt a message with a key (uses today's date)
# pry(main) > enigma.decrypt(encrypted[:encryption], "02715")
# #=> # decryption hash here
#
# # encrypt a message (generates random key and uses today's date)
# pry(main)> enigma.encrypt("hello world")
# #=> # encryption hash here
