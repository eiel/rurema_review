h = {a: 1,b: 2}
h.values_at(:a, :b)             # => [1, 2]

# 配列で渡したい場合
keys = [:a,:b]
h.values_at(*keys)              # => [1, 2]
