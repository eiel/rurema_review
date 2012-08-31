# -*- coding: utf-8 -*-
# なんだか == のサンプルコードになってしまった
class Hoge
  def initialize(hoge)
    @hoge = hoge
  end


  def ==(other)
    # attr_readerをつかってもよいけど無理矢理やってみる
    @hoge == other.instance_variable_get(:@hoge)
  end
end

a = Hoge.new("hoge")
b = Hoge.new("hoge")
c = Hoge.new("mogu")

# equal?では一致しないけど…
a.equal? b                      # => false
a == b                          # => true

a.equal? c                      # => false
a == c                          # => false
