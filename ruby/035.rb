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

ans = 2 # 2と5
(2..1000000).each do |n|
  catch :not_circle_prime do
    n_s = n.to_s
    %w!0 2 4 5 6 8!.each do |str|
      throw :not_circle_prime if n_s.include? str
    end
    next unless n.prime?
    ans += 1 if n.circle_prime?
  end
end
p ans
# to_sしたりarrayでメモリ食いすぎかも
