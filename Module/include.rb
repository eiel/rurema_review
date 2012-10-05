Hoge = Module.new

Mogu = Module.new

# include されてない
Mogu.include? Hoge              # => false
Mogu.included_modules           # => []

module Mogu
  include Hoge
end

# include されてます
Mogu.include? Hoge              # => true
Mogu.included_modules           # => [Hoge]
