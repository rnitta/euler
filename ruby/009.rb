def squares?(n, m)
  cand = (n**2 + m **2) ** (1/2.0)
  cand == cand.to_i
end

i, j = [1, 1]

1.upto(333) do |i|
  i.upto((1000 - i)) do |j|
    if squares?(i, j)
      k = ((i**2 + j **2) ** (1/2.0)).to_i
      p i* j * k if  i + j + k == 1000
    end
  end
end
