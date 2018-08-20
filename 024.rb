def tf
  (0..9).map(&:to_s).permutation(10).with_index { |pair, i| return pair if i == 999999 }
end

p tf.join.to_i
