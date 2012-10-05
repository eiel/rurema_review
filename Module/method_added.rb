module Hoge
  def self.method_added(name)
    name                        # => :hoge, :mogu
  end

  def hoge
  end

  def mogu
  end
end
