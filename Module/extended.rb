module Hoge
  def self.extended(mod)
    mod                   # => #<Object:0x007f9719088b78>
  end
end

Object.new.extend Hoge
