p Array(1..100).inject(1, &:*).to_s.split('').map(&:to_i).inject(0, &:+)
