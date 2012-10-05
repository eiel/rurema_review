# -*- coding: utf-8 -*-
Hoge = Module.new

begin
  Hoge::GORO                      # => 
rescue NameError => e
  e                             # => #<NameError: uninitialized constant Hoge::GORO>
end

module Hoge
  # オーバライドしてみる
  def self.const_missing(name)
    "not find const variable #{name}"
  end
end

# 例外を投げなくなった
Hoge::GORO                      # => "not find const variable GORO"
