module Hoge
end

Hoge.module_exec do
  def hoge
    "hoge"
  end
end

include Hoge
hoge                            # => "hoge"
