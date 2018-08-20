one_to_hundred = Array(1..100)
squares_sum = one_to_hundred.map{|n| n**2}.inject(0){|sum, n| sum += n}
sum_squares = one_to_hundred.inject(0){|sum, n| sum += n} **2

p sum_squares - squares_sum
