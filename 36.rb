sum = 0
(1..1000000).each do |n|
  sum += n if n.to_s.reverse == n.to_s && n.to_s(2).reverse == n.to_s(2)
end
p sum
