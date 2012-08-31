1.instance_of? Fixnum            # => true
1.instance_of? Integer           # => false
1.instance_of? Object            # => false
1.instance_of? Kernel            # => false

1.is_a? Fixnum            # => true
1.is_a? Integer           # => true
1.is_a? Object            # => true
1.is_a? Kernel            # => true

1.kind_of? Fixnum            # => true
1.kind_of? Integer           # => true
1.kind_of? Object            # => true
1.kind_of? Kernel            # => true
