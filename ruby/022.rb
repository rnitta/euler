data = File.open("./data/p022_names.txt").read

p eval("[#{data}]").sort.each_with_index.inject(0) { |ans, (name, i)| ans += (i + 1) * name.split('').inject(0) { |sum, char| sum += char.ord - 64 } }
