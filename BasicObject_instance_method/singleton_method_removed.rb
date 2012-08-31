class Hoge
  def singleton_method_removed(name)
    puts "#{name} method was removed"
  end
end

a = Hoge.new

# 特異メソッドを定義する別の方法
class << a
  def goro
  end
end

class << a
  remove_method :goro
end

# >> goro method was removed
