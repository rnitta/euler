p Array(0..999).inject { |sum, i| (i % 3 == 0 || i % 5 == 0) ? sum + i : sum}
