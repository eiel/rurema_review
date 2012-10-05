Hoge = Module.new

Hoge.name                       # => "Hoge"
Hoge.to_s                       # => "Hoge"

Hoge::Goro = Module.new

Hoge::Goro.name                 # => "Hoge::Goro"

module Hoge
  Goro.name                     # => "Hoge::Goro"
  Hoge.name                     # => "Hoge"
end
