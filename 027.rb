require 'prime'

def primes_length(a, b)
  0.step do |i| # 0いらんかも
    return i - 1 unless (i ** 2 + a * i + b).prime?
  end
end

cand = []
-1000.upto(1000) do |a|
  2.upto(997) do |b|
    next unless b.prime?
    cand << [a*b, primes_length(a, b)]
  end
end

p cand[cand.map {|arr| arr[1]}.index(cand.map {|arr| arr[1]}.max)][0]
# 全部捜査してるのも微妙だし↑が一番微妙
