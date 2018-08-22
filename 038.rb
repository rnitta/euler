class Integer
  def pandigit?
    self.to_s.split('').sort == %w(1 2 3 4 5 6 7 8 9)
  end

  def pandigit_multi
    1.step do |i|
      cand = (1..i).map { |j| self * j }.join.to_i
      return cand if cand.pandigit?
      return if cand > 987654321
    end
  end
end

ans = 0
(1..9999).each do |i|
  ans = [ans, i.pandigit_multi].max if i.pandigit_multi
end

p ans

# to_sしないでMathでやったほうが早いけどめんどうなのでまあよしとする
