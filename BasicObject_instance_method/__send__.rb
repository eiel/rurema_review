class Hoge
  def hoge
    :hoge
  end
end

Hoge.new.__send__(:hoge)            # => :hoge
