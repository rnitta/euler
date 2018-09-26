array = []
[1, 2].each do |i|
  [*(1..9)].permutation(i).each do |a|
    cands = [*(1..9)] - [*a]
    cands.permutation(5 - i).each do |b|
      c = cands - b
      array << a.join.to_i * b.join.to_i if (a.join.to_i * b.join.to_i).to_s.split('').map(&:to_i).sort == c.sort
    end
  end
end

p array.uniq.inject(0, :+)
