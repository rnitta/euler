@tri = -> (n) { n * (n + 1) / 2 }
@pen = -> (n) { n * (3 * n - 1) / 2 }
@hex = -> (n) { n * (2 * n - 1) }

def explor
  144.step do |c|
    c.step do |b|
      if @hex[c] == @pen[b]
        b.step do |a|
          break if @tri[a] > @pen[b]
          return @tri[a] if @pen[b] == @tri[a]
        end
      end
      break if @pen[b] > @hex[c]
    end
  end
end

p explor
