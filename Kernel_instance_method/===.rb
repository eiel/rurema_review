class Hoge
  def ===(obj)
    obj.class == Fixnum
  end
end

# case 式の値は 右辺に。
(1..10) === 1                   # => true
Fixnum === 1                    # => true
Hoge.new === 1                  # => true
