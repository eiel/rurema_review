h = {a: 1, b: 2}
i = {c: 3, d: 4}

h.replace i
h                               # => {:c=>3, :d=>4}
h[:a] = 5
h                               # => {:c=>3, :d=>4, :a=>5}
i                               # => {:c=>3, :d=>4}

class Hoge
  def to_hash
    {x: 2, y: 3}
  end
end

h.replace Hoge.new

h                               # => {:x=>2, :y=>3}
