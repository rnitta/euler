def d(n)
  sum = 0
  1.upto(n/2) do |i|
    sum += i if n % i == 0
  end
  sum
end
def d_memo(n)
  @memo ||= []
  @memo[n] ||= d(n)
end

ar = []
1.upto(10000) do |i|
  ar << [i, d_memo(i)] if i == d_memo(d_memo(i)) && i != d_memo(i)
end
p ar.flatten.inject(0, &:+) / 2
