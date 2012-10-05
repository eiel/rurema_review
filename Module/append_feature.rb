class Mogu
end

module Hoge
  def hoge
    "hoge"
  end

  append_features Mogu
end

Mogu.new.hoge                   # => "hoge"
