# patterns = []
# (5..1000).each do |c|
#   pattern = 0
#   (2..(c - 1)).each do |b|
#     (1..(c - b - 1)).each do |a|
#       pattern += 1 if a ** 2 + b ** 2 == (c - a - b) ** 2
#     end
#   end
#   patterns[c - 5] = pattern
# end
#
# p patterns.index(patterns.max) + 5


sums = []
(5..500).each do |c|
  (4..c).each do |b|
    (3..b).each do |a|
      break if a + b + c > 1000
      sums << a + b + c if a ** 2 + b ** 2 == c ** 2
    end
  end
end
p sums.max_by { |value| sums.count(value) }

# 間違って二回といた
# 二個目のほうがだいぶはやい
