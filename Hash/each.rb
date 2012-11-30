h = { a: 1, b: 2 }

h.each do |key, value|
  [key, value]                   # => [:a, 1], [:b, 2]
end

h.each_pair do |key, value|
  [key, value]                  # => [:a, 1], [:b, 2]
end

h.each_key do |key|
  key                           # => :a, :b
end

h.each_value do |value|
  value                         # => 1, 2
end
