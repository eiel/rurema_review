module Hoge
  def self.method_removed(name)
    name                        # => :hoge
  end

  def hoge
  end

  def mogu
  end

  remove_method :hoge
end
