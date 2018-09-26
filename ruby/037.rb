require 'prime'

class Integer
  def left_cut_prime?
    n = self
    [*(1..(Math.log10(self).floor))].reverse.each do |i|
      n = n % (10 ** i)
      return unless n.prime?
    end
    true
  end

  def right_cut_prime?
    n = self
    Math.log10(self).floor.times do |i|
      n = n.div(10)
      return unless n.prime?
    end
    true
  end
end


count = 0
sum = 0
11.step do |n|
  if n.prime? && n.left_cut_prime? && n.right_cut_prime?
    count += 1
    sum += n
    break if count == 11
  end
end

p sum
