module Hoge
  def self.included(mod)
    mod                    # => Object
  end
end

include Hoge
