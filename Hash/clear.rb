h = { a: 1, b: 2 }
h.clear                         # => {}
h                               # => {}

h = Hash.new([])
h[0] << "hoge"
h[1] << "mogu"
h                               # => {}
h[3]                            # => ["hoge", "mogu"]
h.clear
h[3]                            # => ["hoge", "mogu"]
