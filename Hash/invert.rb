h = {a: 1, b: 2}

h.invert                        # => {1=>:a, 2=>:b}
h.invert[1]                     # => :a


h = {a: 1, b: 1}
h.invert                        # => {1=>:b}
