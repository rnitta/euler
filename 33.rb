cands = []
(10..99).each do |i|
  (10..i-1).each do |j|
    if i % 10 != 0 && j % 10 != 0 && Rational(j / 10, i / 10) != Rational(j, i)
      cands << [j, i] if j / 10 == i % 10 && Rational(j % 10, i / 10) == Rational(j, i)
      cands << [j, i] if j % 10 == i / 10 && Rational(j / 10, i % 10) == Rational(j, i)
      cands << [j, i] if j / 10 == i / 10 && Rational(j % 10, i % 10) == Rational(j, i)
    end
  end
end

p Rational(cands.inject(1) { |prod, n| prod * n[0] }, cands.inject(1) { |prod, n| prod * n[1] }).denominator
# 冗長だけど短くする意味もないので解けたしよしとする
