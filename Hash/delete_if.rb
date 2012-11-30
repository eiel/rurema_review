h = { a: 1, b: 2 }

# 値が1のものを削除
h.delete_if { |key, value| value == 1 }
h                               # => {:b=>2}

# キー が :a のものを削除
h.delete_if { |key, value| key == :a }
h                               # => {:b=>2}
