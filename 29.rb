range = (2..100)
p range.map { |i| range.map{ |j| i**j } }.flatten.uniq.size

# HACK: flattenが微妙; *で配列展開できないからしかたない
