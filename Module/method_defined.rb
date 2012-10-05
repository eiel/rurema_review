module Hoge
  def hoge
  end
end

Hoge.method_defined? :hoge       # => true
Hoge.method_defined? :mogu       # => false
Hoge.method_defined? "hoge"      # => true
