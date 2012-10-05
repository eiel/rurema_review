module Hoge
  # def hoge
  #  "hoge"
  # end
  # と等価
  define_method(:hoge) do
    "hoge"
  end
end


include Hoge
hoge                            # => "hoge"
