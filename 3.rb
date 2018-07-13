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

p prime_facts(600851475143).max
