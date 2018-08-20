def prime_facts_hash(n)
  hash = {}
  m = n
  i = 2
  while i <= (m ** (1/2.0)).floor
    if m % i == 0
      hash[i] = hash[i].to_i + 1
      m /= i
    else
      i += 1
    end
  end
  hash[m] = hash[m].to_i + 1
  hash
end

def facts_sum(n)
  prime_facts_hash(n).map { |key, val| (0..val).inject(0){ |sum, n| sum + key ** n } }.inject(&:*)
end

cands = Array(1..28123)
abundants = (1..(28124 - 12)).select { |n| facts_sum(n) > n * 2 }
test = []
abundants.each { |i| abundants.each { |j| test << i + j  if i + j <= 28123 } }.uniq!
p cands.inject(&:+) - test.inject(&:+)

# HACK: スマートじゃなさすぎ 過剰数の倍数は必ず過剰数なの使えそう
