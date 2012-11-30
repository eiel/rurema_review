h = { a: 1, b: 2 }
h.assoc :a                      # => [:a, 1]
h.rassoc 1                      # => [:a, 1]

h = Hash.new(3)
# デフォルト値は有効にならない
h.assoc :x                      # => nil
h[:x]                           # => 3
# デフォルト値は返してもデフォルト値に過ぎない
h.assoc :x                      # => nil

h = { a: 1, b: 1}
h.rassoc 1                      # => [:a, 1]
