module Hoge
  def hoge
    "hoge"
  end

  alias_method :mogu, :hoge
end

include Hoge
hoge                            # => "hoge"
mogu                            # => "hoge"

module Hoge
  # もとのメソッドを削除してみる
  remove_method :hoge
end

begin
  hoge                            # => 
rescue NameError => e
  e.message                     # => "undefined local variable or method `hoge' for main:Object"
end
# ちゃんと呼べます
mogu                            # => "hoge"
