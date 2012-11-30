h = { "a" => 100, :b => 200 }
h.compare_by_identity?         # => false
h["a"]                         # => 100
h[:b]                          # => 200

h.compare_by_identity

h.compare_by_identity? # => true
# "a" は新しく生成してしまうので値を取れなくなる
h["a"]        # => nil
h[:b]         # => 200
