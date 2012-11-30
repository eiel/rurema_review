a = [1, 2]
h = { a => 1 }

h[a]                            # => 1
a << 3
a                               # => [1, 2, 3]
h[a]                            # => nil
h.rehash
h[a]                            # => 1
