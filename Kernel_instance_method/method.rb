class Hoge
  def hoge
    :hoge
  end

  private
  def mogu
    :mogu
  end
end

a = Hoge.new.method(:hoge)      # => #<Method: Hoge#hoge>
a.call                          # => :hoge

Hoge.new.method(:mogu)          # => #<Method: Hoge#mogu>

begin
  Hoge.new.public_method(:mogu)   # => 
rescue NameError => e
  1                             # => 1
end
