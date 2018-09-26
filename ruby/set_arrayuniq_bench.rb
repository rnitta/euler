require 'benchmark'
require 'set'

nums = [*(1..100)]
array = []
result1 = Benchmark.realtime do
  1000000.times do
    n = nums.sample
    unless array.include?(n)
      array << n
    end
  end
end

set = Set[]
result2 = Benchmark.realtime do
  1000000.times do
    n = nums.sample
    set << n
  end
end

uniq = []
result3 = Benchmark.realtime do
  1000000.times do
    n = nums.sample
    uniq << n
    uniq.uniq!
  end
end

puts "#{result1}秒 / 100万回"
puts "#{result2}秒 / 100万回"
puts "#{result3}秒 / 100万回"
