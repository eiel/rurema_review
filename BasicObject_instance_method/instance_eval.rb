
class Hoge
  def initialize
    @hoge = 'hoge'
  end

  private
  def hoge
    :hoge
  end
end

a = Hoge.new
begin
  a.hoge                          # => 
rescue NoMethodError => e
  1                             # => 1
end

# プライベートなメソッドがよべます
a.instance_eval { hoge }        # => :hoge

# インスタンス変数にアクセスできます
a.instance_eval { @hoge }       # => "hoge"

# ファイル名やら行数を偽装できます。
a.instance_eval "__FILE__ + ':' +  __LINE__.to_s", "hoge!!", 99 # => "hoge!!:99"
