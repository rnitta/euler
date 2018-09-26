require 'benchmark'

class Integer
  def split
    digit = Math.log10(self) + 1
    (1..digit).map { |n| (self / 10 ** (n - 1)) % 10 }.reverse
  end
end

num1 = 1234567890

result1 = Benchmark.realtime do
  1_000_000.times do
    num1.split
  end
end

result2 = Benchmark.realtime do
  1_000_000.times do
    num1.to_s.split('').map(&:to_i)
  end
end

puts "#{result1}秒 / 100万回"
puts "#{result2}秒 / 100万回"
puts '-'*20

num2 = 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890

result3 = Benchmark.realtime do
  100_000.times do
    num2.split
  end
end

result4 = Benchmark.realtime do
  100_000.times do
    num2.to_s.split('').map(&:to_i)
  end
end

puts "#{result3}秒 / 10万回"
puts "#{result4}秒 / 10万回"

