class Hoge
  def singleton_method_added(name)
    puts "#{name} method was addded"
  end
end

a = Hoge.new
def a.goro
  "hoge"
end

a.goro                          # => "hoge"

# >> goro method addded
