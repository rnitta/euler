power5sum = ->(n) { n.to_s.split('').map(&:to_i).map { |i| i**5 }.sum }

cands = (2..(9**5*6))
p cands.inject(0){ |sum, n| sum += n == power5sum[n] ? n : 0 }

# *6のマジックナンバー感はある
