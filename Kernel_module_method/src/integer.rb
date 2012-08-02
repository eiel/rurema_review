Integer(10)                       # => 10
Integer(0x10)                     # => 16
Integer("10")                     # => 10
Integer("0x10")                   # => 16

class IntegerSample1
  def to_i
    10010
  end

  def to_int
    90090
  end
end

class IntegerSample2
  def to_i
    555
  end
end

Integer(IntegerSample1.new)    # => 90090
Integer(IntegerSample2.new)    # => 555
