module Hoge
  def self.hoge
    "hoge"
  end
end

Hoge.hoge                       # => "hoge"


module Hoge
  private_class_method :hoge
end

begin
  Hoge.hoge                       # => 
rescue NoMethodError => e
  e.message # => "private method `hoge' called for Hoge:Module"
end

module Hoge
  public_class_method :hoge
end

Hoge.hoge                       # => "hoge"
