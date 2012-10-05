module Hoge
  GORO = nil
end

Hoge.const_defined? :GORO       # => true
Hoge.const_defined? :MOGU       # => false

Hoge.const_set :MOGU, "mogu"     # => "mogu"
# true になった
Hoge.const_defined? :MOGU        # => true

Hoge.constants                  # => [:GORO, :MOGU]

module SubHoge
  include Hoge
  HOGE = "hoge"
end

Hoge.constants                   # => [:GORO, :MOGU]
SubHoge.constants               # => [:HOGE, :GORO, :MOGU]
SubHoge.constants(false)        # => [:HOGE]
