module Hoge
  def hoge
    :hoge
  end
end

a = Object.new
a.extend Hoge
a.hoge                          # => :hoge

b = Object.new
begin
  b.hoge                        # => 
rescue NoMethodError => e
  1                             # => 1
end
