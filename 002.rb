def fib(i)
  if i < 2
    1
  else
    p2 = 1
    p1 = 1
    2.upto(i) do
      p1 += p2
      p2 = p1 - p2
    end
    p1
  end
end

i = 0
sum = 0
loop do
  cand = fib(i)
  break if cand >= 4000000
  sum += cand if cand % 2 == 0
  i += 1
end
p sum
