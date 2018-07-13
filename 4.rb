nums = Array(900..999)
cands = nums.map{ |n| nums.map{ |m| n*m } }.flatten.sort.reverse
cands.each do |num|
  if num.to_s == num.to_s.reverse
    p num
    break
  end
end
