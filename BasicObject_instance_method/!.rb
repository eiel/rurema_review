class Hoge
  def !
    # よくない実装
    true
  end
end

h = Hoge.new

! h                             # => true
! nil                           # => true

# nilではないので当然 true  しかし、否定しても true
if h
  1 # => 1
else
  1 # => 
end

# notしても同じ結果
if not h
  1 # => 1
else
  1 # => 
end

# 二重否定したとき同じ結果にならない
if not not h
  1                             # => 
else
  1                             # => 1
end
