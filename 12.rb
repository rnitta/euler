def triangle(n)
  ((1 + n) * n) /2
end

def prime_facts(n)
  array = []
  m = n
  i = 2
  while i <= (m ** (1/2.0)).floor
    if m % i == 0
      array << i
      m /= i
    else
      i += 1
    end
  end
  array << m
  array
end

def n_of_facts(array)
  prods = []
  array.uniq.each do |n|
    prods << array.count(n) + 1
  end
  prods.inject(1, &:*)
end

1.step do |n|
  if n_of_facts(prime_facts(triangle(n))) > 500
    p triangle(n)
    break
  end
end

