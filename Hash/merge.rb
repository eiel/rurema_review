h = {a: 1, b: 2}
i = {b: 3, c: 4}

h.merge(i)                      # => {:a=>1, :b=>3, :c=>4}
h                               # => {:a=>1, :b=>2}
j = h.clone
j.merge!(i)                     # => {:a=>1, :b=>3, :c=>4}

k = Hash.new(10)
k.merge!(h)                     # => {:a=>1, :b=>2}
k[1]                           # => 10
