h = { a: 1, b:2 }
h.delete :a                     # => 1
h.delete :a                     # => nil

h.delete(:a) { "hoge" }          # => "hoge"
