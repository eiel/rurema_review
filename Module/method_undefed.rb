module Hoge
  def self.method_undefined(name)
    name                        # => :hoge, :mogu
    puts "undef #{name}"
  end

  def hoge
  end

  def mogu
  end

  undef hoge
  undef_method :mogu
end
# >> undef hoge
# >> undef mogu
