module Hoge
  def hoge
    "hoge"
  end

end

begin
  Hoge.hoge                       # => 
rescue NoMethodError => e
  e.message                     # => "undefined method `hoge' for Hoge:Module"
end

module Hoge
  module_function :hoge
end

Hoge.hoge                       # => "hoge"
