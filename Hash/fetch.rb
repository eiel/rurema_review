h = {a: 1}

h.fetch :a, {}                  # => 1
h.fetch :b, {}                  # => {}

h.fetch(:a) { |key| key}   # => 1
h.fetch(:b) { |key| key}   # => :b
