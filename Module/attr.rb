class Hoge

  def initialize
    @hoge = "hoge"
    @mogu = "mogu"
    @access = "access"
    @writer = "writer"
    @reader = "reader"
  end

  attr :hoge
  attr :mogu, true # !> optional boolean argument is obsoleted

  attr_accessor :access
  attr_writer :writer
  attr_reader :reader
end

h = Hoge.new
h.hoge                          # => "hoge"
h.mogu                          # => "mogu"
h.mogu = "guru"                 # => "guru"
begin
  h.hoge = "goro"                 # => 
rescue NoMethodError => e
  e.message                     # => "undefined method `hoge=' for #<Hoge:0x007fb58388f910>"
end

h.access                        # => "access"
h.access = "hoge"               # => "hoge"

begin
  h.writer
rescue NoMethodError => e
  e.message                     # => "undefined method `writer' for #<Hoge:0x007fb58388f910>"
end
h.writer = "hoge"               # => "hoge"

h.reader                        # => "reader"
begin
  h.reader = "hoge"
rescue NoMethodError => e
  e.message                     # => "undefined method `reader=' for #<Hoge:0x007fb58388f910>"
end

