class Key

  nums = (0..99999).to_a
  key = nums.sample.to_s.rjust(5, '0')

end

# def rand_n(n, max)
#     randoms = Set.new
#     loop do
#         randoms << rand(max)
#         return randoms.to_a if randoms.size >= n
#     end
# end
  # puts Keys
