ans = 0
maxlen = 0
1000000.times do |i|
  next if i == 0
  len = 1
  n = i
  while n != 1
    if n.even?
      n = n / 2
    else
      n = n * 3 + 1
    end
    len += 1
  end
  if len >= maxlen
    ans = i
    maxlen = len
  end
end
p ans
