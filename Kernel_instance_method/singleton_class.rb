a = Object.new

def a.hoge
  :hoge
end

a.singleton_class                         # => #<Class:#<Object:0x007fa11988d350>>
a.singleton_class.instance_methods(false) # => [:hoge]
a.singleton_methods                       # => [:hoge]

true.singleton_class            # => TrueClass
nil.singleton_class             # => NilClass

# クラスのクラスメソッドはクラスの特異クラスのインスタンスメソッド
Kernel.singleton_class.instance_methods == Kernel.methods # => true
