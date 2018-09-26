class Integer
  def !
    return 1 if self == 0
    (1..self).inject(1, :*)
  end

  def split
    digit = Math.log10(self) + 1
    (1..digit).map { |n| (self / 10 ** (n - 1)) % 10 }.reverse
  end
end

cand = []
3.upto(2540160) do |n|
  cand << n if n == n.split.map(&:!).sum
end
p cand.sum
