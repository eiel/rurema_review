
m = Module.new
m.name                          # => nil
Hoge = m
m.name                          # => "Hoge"
Mogu = m
# 名前は変わらない
m.name                          # => "Hoge"

Hoge = Module.new # !> already initialized constant Hoge

module Hoge; end
module Hoge
  module Mogu
    Anything = "hoge"
    def hoge
      1
    end
    module_function :hoge
  end
end

H = Module.new do
  def goro
    2
  end
end

include H

goro                            # => 2
Hoge::Mogu.hoge                 # => 1
