class Hoge
  def method_missing(name, *args)
    case name
    when /hoge/
      if args.count == 1
        name.to_s * args.first
      else
        name.to_s
      end
    else
      super(name, *args)
    end
  end
end

Hoge.new.hoge                   # => "hoge"
Hoge.new.hoge1 2                # => "hoge1hoge1"
begin
  Hoge.new.mogu                   # => 
rescue NoMethodError
  1                             # => 1
end

# もっとメソッドがあるように見せかけるなら respond_To? を実装しよう
Hoge.new.respond_to? :hoge      # => false
