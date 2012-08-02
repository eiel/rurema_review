class ArraySample1
  def to_a
    [:to_a]
  end

  def to_ary
    [:to_ary]
  end
end

class ArraySample2
  def to_a
    [:to_a]
  end
end

# to_aryが反応する
Array(ArraySample1.new)         # => [:to_ary]
# to_aryが反応しない
Array(ArraySample2.new)         # => [:to_a]
