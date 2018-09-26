require 'benchmark'

result1 = Benchmark.realtime do
  100000000.times do
    [1, 2].reduce(&:to_s)
  end
end

result2 = Benchmark.realtime do
  100000000.times do
    [1, 2].inject(&:to_s)
  end
end

puts "#{result1}秒 / 1億回"
puts "#{result2}秒 / 1億回"
