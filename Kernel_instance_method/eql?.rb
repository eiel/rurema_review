a = {hoge: "hoge"}
b = {hoge: "hoge"}

a == b                          # => true
a.equal? b                      # => false
a.eql? b                        # => true

class Hoge
  def eql?(obj)
    true
  end

  def hash
    1
  end
end

a = { Hoge.new => :hoge }
b = { Hoge.new => :hoge }

a == b                          # => true
a[Hoge.new]                     # => :hoge

class Mogu
  def eql?(obj)
    false
  end

  def hash
    1
  end
end

a = { Mogu.new => :hoge }
b = { Mogu.new => :hoge }

a == b          # => false
a[Mogu.new]     # => nil
