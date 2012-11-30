{}.empty?                       # => true
h = { a: 1 }
h.empty?                        # => false

# :a を削除してみると
h.delete(:a)
h.empty?                        # => true
