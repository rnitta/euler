side = proc { |n| n * 2 - 1 }

sum = 1
now = 1
n = 2
loop do
  now += side[n] - 1
  sum += now
  now += side[n] - 1
  sum += now
  now += side[n] - 1
  sum += now
  now += side[n] - 1
  sum += now

  n += 1
  break if side[n] > 1001
end

p sum
