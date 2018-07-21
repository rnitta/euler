def digits(n)
  Math.log10(n).floor + 1
end

def fib(n)
  if n <= 2
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end

def fib_memo(n)
  @fibs ||= []
  @fibs[n - 1] && @fibs[n - 2] ? @fibs[n] = @fibs[n - 1] + @fibs[n - 2] : @fibs[n] = fib(n)
end

1.step do |i|
  if digits(fib_memo(i)) == 1000
    p i, fib_memo(i)
    break
  end
end

# OPTIMIZE: 最大でも6個飛ばせば１桁は増えるので、6個ずつ飛ばして1000桁超えたらニブタンにすればもっと早くなるけど一般項の式使うことになるのでプログラムとしては微妙
