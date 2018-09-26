def facts(n)
  i = 2
  array = []
  while i <= (n ** (1/2.0)).floor
    if n % i == 0
      array << i
      n = n / i
    else
      i += 1
    end
  end
  array << n
end

all_facts = []

1.upto(20) do |n|
  n_facts = facts(n)
  all_facts.each do |m|
    if n_facts.index(m)
      n_facts.delete_at(n_facts.index(m))
    end
  end
  all_facts << n_facts
  all_facts.flatten!
end
p all_facts.flatten.inject(1){|prod, i| prod * i }

