require 'benchmark'

result1 = Benchmark.realtime do
  1_000_000.times do
    [72, 101, 108, 108, 111, 87, 111, 114, 108, 100, 33].map(&:chr).join
  end
end

result2 = Benchmark.realtime do
  1_000_000.times do
    [72, 101, 108, 108, 111, 87, 111, 114, 108, 100, 33].reduce('',:concat)
  end
end

puts "#{result1}秒 / 100万回"
puts "#{result2}秒 / 100万回"
