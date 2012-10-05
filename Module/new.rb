
m = Module.new
m.name                          # => nil
Hoge = m
m.name                          # => "Hoge"
Mogu = m
# 名前は変わらないっぽい
m.name                          # => "Hoge"
