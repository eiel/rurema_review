
module Hoge
  def hoge
    "hoge"
  end
end

Hoge.module_eval do
  def mogu
    "mogu"
  end
end

include Hoge

hoge                            # => "hoge"
# mogu が定義されてる
mogu                            # => "mogu"
