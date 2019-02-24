class Key
  require 'pry'

  # def initialize


  # def a_key
  #   key = (00000..99999).to_a.shuffle.take(1)
  #   key[0..1]
  # end
  #
  # def b_key
  #   key = (00000..99999).to_a.shuffle.take(1)
  #   key[1..2]
  # end
  #
  # def c_key
  #   key = (00000..99999).to_a.shuffle.take(1)
  #   key[2..3]
  # end
  #
  # def d_key
  #   key = (00000..99999).to_a.shuffle.take(1)
  #   key[3..4]
  # end
end

# def rand_n(n, max)
#     randoms = Set.new
#     loop do
#         randoms << rand(max)
#         return randoms.to_a if randoms.size >= n
#     end
# end
  # puts Keys

# The keys are created by generating a random five digit number,
# like 02715, and splitting it up like so:
#
# A key: first two digits (02)
# B key: second and third digits (27)
# C key: third and fourth digits (71)
# D key: fourth and fifth digits (15)
