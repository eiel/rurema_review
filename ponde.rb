# メソッドの数とかあってるのか確認するのに
class Ponde
  def initialize(module_)
    unless module_.class === Module
      raise ArgumentError.new "must argmuent is kind of Module"
    end
    @module = module_
  end

  def instance_methods
    @module.instance_methods - inherit_instance_methods
  end

  def class_methods
    @module.methods - Module.methods
  end

  def ancestors
    @module.ancestors
  end

  private
  def inherit_instance_methods
    ancestors[1..-1].reduce([]) do |a,n| a + n.instance_methods end
  end
end

const = Module.const_get(ARGV[0])
a = Ponde.new(const)

p a.ancestors

puts "The number of class(modulle) methods is #{a.class_methods.count}"
a.class_methods.sort.each do |method|
  puts method.to_s
end

puts
methods = a.instance_methods
puts "The number of intsance methods is #{methods.count}"
methods.sort.each do |method|
  puts method.to_s
end
