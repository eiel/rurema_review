h = Hash.new :hoge
h[0]                            # => :hoge
h[2]                            # => :hoge

h = Hash.new []
h[0] << 1
h[1] << 2
# 同じオブジェクトを返すので同じ値になる
h[0]                            # => [1, 2]
h[1]                            # => [1, 2]

h = Hash.new { |hash, key| hash[key] = 1 }
h[0]                            # => 1

h = Hash.new { |hash, key| hash[key] = [] }
h[0] << 1
h[1] << 2
# 今度は期待どおり
h[0]                            # => [1]
h[1]                            # => [2]
