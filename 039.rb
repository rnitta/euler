patterns = []
(5..1000).each do |c|
  pattern = 0
  (2..(c - 1)).each do |b|
    (1..(c - b - 1)).each do |a|
      pattern += 1 if a ** 2 + b ** 2 == (c - a - b) ** 2
    end
  end
  patterns[c - 5] = pattern
end

p patterns.index(patterns.max) + 5
