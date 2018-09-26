require 'prime'

i = 1
count = 0
while count < 10001
  i += 1
  count += 1 if i.prime?
end

p i
