hoge = Class.new
hoge.name                       # => nil
Hoge = hoge
Hoge.name                       # => "Hoge"


# 継承もできます
mogu = Class.new(String)
mogu.superclass                 # => String

