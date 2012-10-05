module Hoge
  def hoge
    "hoge"
  end
end

method = Hoge.instance_method(:hoge)     # => #<UnboundMethod: Hoge#hoge>

begin
  Hoge.instance_method(:mogu)     # => 
rescue NameError => e
  "raise NameError"                        # => "raise NameError"
end

# include してないと使えない
include Hoge
method.bind(self).call          # => "hoge"
