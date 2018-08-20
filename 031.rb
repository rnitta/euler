@coins = [1, 2, 5, 10, 20, 50, 100, 200]
@patterns_n = 0

traverse = lambda do |type, amount|
  n = amount / @coins[type]
  (n+1).times do |i|
    remain = amount - @coins[type] * i
    if remain.positive?
      traverse[type - 1, remain] unless type.zero?
    elsif remain.zero?
      @patterns_n += 1
    end
  end
end

traverse[7, 200]
p @patterns_n

