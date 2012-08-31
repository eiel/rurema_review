a = "hoge"
a.taint

class << a
  def hoge
    :hoge
  end
end

# 先にfreezeすると特異メソッドを追加できない
a.freeze


b = a.clone

a.equal? b                      # => false
a == b                          # => true
b.tainted?                      # => true
b.frozen?                       # => true
b.hoge                          # => :hoge

b = a.dup

a.equal? b                      # => false
a == b                          # => true
b.tainted?                      # => true
b.frozen?                       # => false
begin
  b.hoge                        # => 
rescue NoMethodError => e
  1                             # => 1
end
