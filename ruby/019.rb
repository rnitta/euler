require 'date'

count = 0
Date.new(1901, 1, 1).upto(Date.new(2000, 12, 31)) do |day|
  count += 1 if day.wday == 0 && day.mday ==1
end

p count
