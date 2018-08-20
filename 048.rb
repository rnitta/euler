class Integer
  def power_self_below10
    1.yield_self do |n|
      self.times do
        n = (n * self) % (10 ** 10)
      end
      n
    end
  end
end

p (1..1000).inject(0) { |sum, n| sum += n.power_self_below10 } % (10 ** 10)

# OPTIMIZE: わざわざそうせんでもええやん系が多い
