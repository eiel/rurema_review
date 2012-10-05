Mogu = Module.new

module Hoge
  def hoge
    "hoge"
  end

  extend_object Mogu
end

Mogu.hoge                       # => "hoge"

# private なんで…
Hoge.send :extend_object, self         # => main
hoge                                   # => "hoge"
