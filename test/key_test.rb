require 'simplecov'
SimpleCov.start
# require './lib/enigma'
require './lib/key'
require 'minitest/autorun'
require 'minitest/pride'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end 
end
