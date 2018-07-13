require 'prime'

sum = 0
1.upto(1999999) do |i|
  sum += i if i.prime?
end

p sum
