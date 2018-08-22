require 'prime'

class Integer
  def circle_prime?
    n_array = self.to_s.split('')
    n_array.size.times do
      n_array.unshift(n_array[-1]).pop
      return unless n_array.join.to_i.prime?
    end
    true
  end
end

ans = 0
(2..1000000).each do |n|
  ans += 1 if n.circle_prime?
end
p ans
# to_sしたりarrayでメモリ食いすぎかも
