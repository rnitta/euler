def recipro(n)
  surplus = 10 ** 100 % n
  1.step do |i|
    surplus = surplus * 10 % n
    return 0 if surplus == 0
    return i if surplus == 10 ** 100 % n
  end
end

array = (1..1000).map { |n| recipro(n) }
p array.index(array.max) + 1

# HACK: ひどい出来
